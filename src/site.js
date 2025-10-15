import LazyLoad from "vanilla-lazyload";
//import Masonry from "masonry-layout";
//import Cookies from "js-cookie";
const Flickity = require("flickity-fade");
import socialIcons from "social-icons";
import arRows from "ar-rows";
import gsap from "gsap";
import ScrollTrigger from "gsap/ScrollTrigger";
import ScrollSmoother from "gsap/ScrollSmoother";
import Flip from "gsap/Flip";
import Observer from "gsap/Observer";
gsap.registerPlugin(Flip, ScrollTrigger, ScrollSmoother, Observer);
import zenscroll from "zenscroll";

/* SETUP VARS */
let bw = document.body.scrollWidth;
let dpr = window.devicePixelRatio;
const body = document.querySelector("body");
const menuBtn = document.querySelector(".menuBtn");
let socialEl = document.querySelectorAll(".social");
let rowsEl = document.querySelectorAll(".ar-rows");
const nav = document.querySelector("nav");
const overlay = document.getElementById("overlay");
const lightboxOverlay = document.getElementById("lightbox");
let overlayInner, overlayCloser;
if (typeof overlay != "undefined" && overlay != null) {
  overlayInner = overlay.querySelector(".inner");
  overlayCloser = overlay.querySelector(".closer");
}
let overlayLightboxInner, overlayLightboxCloser;
if (typeof lightboxOverlay != "undefined" && lightboxOverlay != null) {
  overlayLightboxInner = lightboxOverlay.querySelector(".inner");
  overlayLightboxCloser = lightboxOverlay.querySelector(".closer");
}

window.addEventListener("load", function () {
  body.classList.remove("preload");
});

document.addEventListener("DOMContentLoaded", function () {
  /* ***************************************** */
  /* INITIALIZATION ON PAGE LOAD */
  /* ***************************************** */

  ScrollSmoother.create({
    smooth: 1, // how long (in seconds) it takes to "catch up" to the native scroll position
    effects: true, // looks for data-speed and data-lag attributes on elements
    smoothTouch: 0, // much shorter smoothing time on touch devices (default is NO smoothing on touch devices)
  });

  // global animation effects

  function animationInit() {

    setTimeout(function () {
      ScrollTrigger.batch(".fadeUp", {
        onEnter: (elements, triggers) => {
          gsap.to(elements, {
            opacity: 1,
            y: 0,
            duration: 0.6,
            ease: "Power2.easeOut",
            stagger: 0.15,
          });
        },
      });
    }, 100);

    setTimeout(function () {
      ScrollTrigger.batch(".fadeOn", {
        onEnter: (elements, triggers) => {
          gsap.to(elements, { opacity: 1, stagger: 0.15 });
        },
      });
    }, 100);

    setTimeout(function () {
      ScrollTrigger.batch(".fadeUpDelay", {
        onEnter: (elements, triggers) => {
          gsap.to(elements, { opacity: 1, y: 0, stagger: 0.15 });
        },
      });
    }, 300);

  }

  animationInit();

  // check for any social icons
  if (typeof socialIcons != "undefined") {
    socialIcons(socialEl);
  }

  // init AR Rows type layout
  if (typeof arRows != "undefined") {
    arRows(rowsEl);
  }

  // any cols from text editor need to be wrapped in cols class
  let textCols = document.querySelectorAll(".text-block");
  for (var i = 0; i < textCols.length; i++) {
    wrapCols(textCols[i]);
  }

  function initLoading() {
    //initialize lazyload - sitewide for image
    const lazyLoad = new LazyLoad({
      elements_selector: ".loadmeview",
      callback_enter: loadImage,
    });

    //initialize lazyload - autoplay videos
    const lazyLoadAutoVideo = new LazyLoad({
      elements_selector: ".autovideo",
      threshold: 30,
      callback_enter: playAutoVideo,
      callback_exit: pauseAutoVideo,
    });
  }

  initLoading();

  // loose grids

  let looseGrids = document.querySelectorAll(".grid_loose");
  looseGrids.forEach((looseGrid) => {
    let catid = looseGrid.getAttribute("data-catid");
    let grid;
    let view = "desktop";
    let resizeTimeout;

    function checkView() {
      let newView = innerWidth <= 768 ? "mobile" : "desktop";
      if (view !== newView) {
        view = newView;
        return true;
      }
      return false;
    }

    function loadGrid() {
      fetch(`/getCanvas.php?catid=${catid}&view=${view}`)
        .then((response) => response.text())
        .then((data) => {
          looseGrid.innerHTML = data;
          grid = looseGrid.querySelector("ul.canvas");

          const resizeObserver = new ResizeObserver(updatePositions);
          resizeObserver.observe(grid);

          initLoading();
          animationInit();
          lightBoxInit();

          setTimeout(function () {
            updateContainerHeight();
            ScrollTrigger.refresh();
          }, 500);
        })
        .catch((error) => console.error("Error:", error));
    }

    // Initial check and load
    checkView();
    loadGrid();

    // Debounced window resize handler
    window.addEventListener("resize", () => {
      clearTimeout(resizeTimeout);
      resizeTimeout = setTimeout(() => {
        if (checkView()) {
          loadGrid();
        }
      }, 250); // Wait 250ms after last resize event
    });

    function updatePositions() {
      let grid = looseGrid.querySelector("ul.canvas");
      let items = grid.querySelectorAll(".item");

      const { width, height } = grid.getBoundingClientRect();

      items.forEach((item) => {
        let percentX = parseFloat(item.dataset.x);
        let percentY = parseFloat(item.dataset.y);

        // apply the new positions as pixels
        item.style.left = `${(percentX / 100) * width}px`;
        item.style.top = `${(percentY / 100) * width}px`; // Base top on width

        // clear out transforms from draggable
        gsap.set(item, {
          x: 0,
          y: 0,
          z: 0,
        });
      });

      updateContainerHeight();
    }

    function updateContainerHeight() {
      let grid = looseGrid.querySelector("ul.canvas");
      let items = grid.querySelectorAll(".item");

      requestAnimationFrame(() => {
        let maxBottom = 0;

        items.forEach((item) => {
          let topPos = gsap.getProperty(item, "top"); // Get the top position in pixels
          itemBottom = topPos + item.offsetHeight; // Distance from top + height
          maxBottom = Math.max(maxBottom, itemBottom);
        });

        grid.style.height = `${Math.ceil(maxBottom)}px`; // Round up & add buffer for admin, on front-end this should be tight to the grid
        grid.style.minHeight = "auto";
      });
    }
  });

  // initialize masonry

  let masonGrids = document.querySelectorAll(".masongrid");
  masonGrids.forEach((masonGrid) => {
    //injecting bottom margin into masonry cell
    let gutterWidth = masonGrid.querySelector(".gutter-sizer").scrollWidth;
    let cells = masonGrid.getElementsByClassName("cell");
    for (var i = 0; i < cells.length; i++) {
      cells[i].style.marginBottom = gutterWidth + "px";
    }

    const msnry = new Masonry(masonGrid, {
      itemSelector: ".cell",
      columnWidth: ".grid-sizer",
      gutter: ".gutter-sizer",
    });
    msnry.layout();

    function onLayoutComplete() {
      // run lazyload after masonry has run
      const masonLoad = new LazyLoad({
        elements_selector: ".masonlazy",
      });
    }
    msnry.on("layoutComplete", onLayoutComplete);
  });

  const handleMouseMove = (e) => {
    let slideshowEl = lightboxOverlay.querySelector(".slideshow");

    let arrowLeftIcon = slideshowEl.querySelector(".arrow.left");
    let arrowRightIcon = slideshowEl.querySelector(".arrow.right");
    let closeIcon = slideshowEl.querySelector(".close");
    let closerX = lightboxOverlay.querySelector(".closer .closeIcon");

    body.style.cursor = "none";

    // Get slideshow bounds
    const rect = slideshowEl.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const width = rect.width;

    // Hide all icons by default
    arrowLeftIcon.style.display = "none";
    arrowRightIcon.style.display = "none";
    closeIcon.style.display = "none";

    // Divide into thirds
    if (x < width / 3) {
      // Left third: show previous arrow
      arrowLeftIcon.style.display = "block";
      arrowLeftIcon.style.left = e.clientX - 23 + "px";
      arrowLeftIcon.style.top = e.clientY - 23 + "px";
    } else if (x < (2 * width) / 3) {
      // Middle third: show close icon
      closeIcon.style.display = "block";
      closeIcon.style.left = e.clientX - 23 + "px";
      closeIcon.style.top = e.clientY - 23 + "px";
    } else {
      // Right third: show next arrow
      arrowRightIcon.style.display = "block";
      arrowRightIcon.style.left = e.clientX - 23 + "px";
      arrowRightIcon.style.top = e.clientY - 23 + "px";
    }

    // If the cursor is over the closeIcon, hide arrows and use default cursor
    if (closerX && closerX.contains(e.target)) {
      arrowLeftIcon.style.display = "none";
      arrowRightIcon.style.display = "none";
      closeIcon.style.display = "none";
      body.style.cursor = "default";
    }
  };

  const handleSlideshowClick = (e) => {
    let slideshowEl = lightboxOverlay.querySelector(".slideshow");
    let closeIcon = slideshowEl.querySelector(".close");
    let flkty = Flickity.data(slideshowEl);

    // Get slideshow bounds
    const rect = slideshowEl.getBoundingClientRect();
    const clickX = e.clientX - rect.left;
    const width = rect.width;

    if (clickX < width / 3) {
      // Left third: previous
      if (flkty.selectedIndex === 0) {
        closeIcon.style.display = "none";
        closeLightbox();
      } else {
        flkty.previous();
      }
    } else if (clickX < (2 * width) / 3) {
      // Middle third: close
      closeIcon.style.display = "none";
      closeLightbox();
    } else {
      // Right third: next
      if (flkty.selectedIndex === flkty.cells.length - 1) {
        closeIcon.style.display = "none";
        closeLightbox();
      } else {
        flkty.next();
      }
    }
  };

  //initialize flickity for slideshows - called in AJAX call
  let archive = document.querySelector(".archive");
  function initializeFlickity(cellIndex) {
    let slideshowEl = document.querySelector(".slideshow");
    if (typeof slideshowEl != "undefined" && slideshowEl != null) {
      let flkty = new Flickity(slideshowEl, {
        // options
        fade: true,
        cellSelector: ".cell",
        draggable: false,
        pageDots: false,
        prevNextButtons: false,
        selectedAttraction: 0.2,
        friction: 0.8,
        wrapAround: true,
        freeScroll: false,
        cellAlign: "center",
        initialIndex: cellIndex,
      });

      // load the initial image as well as next and previous
      let activeSlide = flkty.selectedElement;
      let activeImg = activeSlide.querySelector("img");
      let nextSlide = activeSlide.nextElementSibling;
      let prevSlide = activeSlide.previousElementSibling;

      if (nextSlide) {
        let nextImg = nextSlide.querySelector("img");
        if (nextImg) {
          loadImage(nextImg);
        }
      }

      if (prevSlide) {
        let prevImg = prevSlide.querySelector("img");
        if (prevImg) {
          loadImage(prevImg);
        }
      }

      if (activeImg) {
        loadImage(activeImg);
      }


      flkty.on("change", function (index) {
        let nextSlide = flkty.cells[index].element;
        let nextImg = nextSlide.querySelector("img");
        if (nextImg) {
          loadImage(nextImg);
        }

        // let's also preload the next and previous images
        let nextIndex = index + 1;
        let prevIndex = index - 1;
        if (nextIndex >= flkty.cells.length) {
          nextIndex = 0;
        }
        if (prevIndex < 0) {
          prevIndex = flkty.cells.length - 1;
        }
        let nextSlide2 = flkty.cells[nextIndex].element;
        let prevSlide2 = flkty.cells[prevIndex].element;
        let nextImg2 = nextSlide2.querySelector("img");
        let prevImg2 = prevSlide2.querySelector("img");
        if (nextImg2) {
          loadImage(nextImg2);
        }
        if (prevImg2) {
          loadImage(prevImg2);
        }

        let slideID = flkty.selectedElement.getAttribute("data-id");
        if (archive) {
          let cells = document.querySelectorAll(".grid_cell");
          cells.forEach((cell) => {
            let link = cell.querySelector("a");
            if (link.getAttribute("data-id") == slideID) {
              cell.classList.add("selected");
            } else {
              if (cell.classList.contains("selected")) {
                cell.classList.remove("selected");
              }
            }
          });
        }
      });

      // change cursor to arrow icon when hovering over slideshow
      if (window.innerWidth > 768) {
        document.addEventListener("mousemove", handleMouseMove);
      }
      document.addEventListener("click", handleSlideshowClick);

    }
  }

  /* HANDLE CELLS THAT REQUIRE RATIO SIZING */
  let ratioCells = document.getElementsByClassName("ratioSize");
  for (let i = 0; i < ratioCells.length; i++) {
    ratioSize(ratioCells[i]);
  }

  /* HANDLE IMAGES THAT REQUIRE RESIZE IMAGE FUNCTION */
  let resizeImageCells = document.getElementsByClassName("resize-image");
  for (let i = 0; i < resizeImageCells.length; i++) {
    resizeImage(resizeImageCells[i]);
  }

  // Handle mobile grid for index.php

  /* ***************************************** */
  /* FUNCTIONS */
  /* ***************************************** */

  function sizeloadVideo(el, preload) {
    let desktopSrc = el.getAttribute("data-hd"),
      mobileSrc = el.getAttribute("data-sd"),
      videoSourceEl = el.querySelector("source");

    if (window.innerWidth > 896) {
      videoSourceEl.setAttribute("src", desktopSrc);
    } else {
      videoSourceEl.setAttribute("src", mobileSrc);
    }
    el.load();
    if (preload !== "yes") {
      el.play();
    }
  }

  function playAutoVideo(el) {
    // if user has interacted with full video stop the hovervideo
    if (el.classList.contains("inline_playing")) {
      return;
    }
    let videoEl = el.querySelector("video");
    if (typeof videoEl != "undefined" && videoEl != null) {
      videoEl.play();
    } else {
      let videoStr = el.getAttribute("data-autovideo");
      let videoHold = el.querySelector(".vidhold");
      videoHold.innerHTML = videoStr;
      videoEl = videoHold.querySelector("video");
      videoEl.play();
    }
    el.classList.add("playing");
  }

  function pauseAutoVideo(el) {
    // if user has interacted with full video stop the hovervideo
    if (el.classList.contains("inline_playing")) {
      return;
    }
    let videoEl = el.querySelector("video");
    videoEl.pause();
    el.classList.remove("playing");
  }

  function loadImage(image) {
    let img = image.getAttribute("data-img"),
      newW = image.classList.contains("bg-loadme")
        ? image.offsetWidth * dpr
        : image.parentNode.offsetWidth * dpr,
      fullpath = "",
      imgpath = "";

    if (!image.classList.contains("gif")) {
      if (newW <= 500) {
        imgpath = "/images/pics/500/" + img;
      } else if (newW > 500 && newW <= 750) {
        imgpath = "/images/pics/750/" + img;
      } else if (newW > 750 && newW <= 1000) {
        imgpath = "/images/pics/1000/" + img;
      } else if (newW > 1000 && newW <= 1536) {
        imgpath = "/images/pics/1536/" + img;
      } else if (newW > 1536 && newW <= 1920) {
        imgpath = "/images/pics/1920/" + img;
      } else {
        imgpath = "/images/pics/" + img;
      }
    } else {
      // load jpg as placeholder, when gif loaded swap
      imgpath = "/images/pics/500/" + img;
      fullpath = "/images/pics/" + img;

      var fullimg = new Image();
      fullimg.onload = function () {
        var fullImgSrc = fullimg.getAttribute("src");
        image.src = fullImgSrc;
        //$('.photo[data-src="' + img + '"]').attr("src", fullImgSrc);
      };
      fullimg.src = fullpath;
    }

    if (image.classList.contains("bg-loadme")) {
      $("<img/>")
        .attr("src", imgpath)
        .on("load", function () {
          $(this).remove();
          image
            .css("background-image", "url(" + imgpath + ")")
            .addClass("loaded");
        });
    } else {
      let newimage = new Image();
      newimage.onload = function () {
        image.src = imgpath;
        //image.classList.add("loaded");
      };
      newimage.src = imgpath;
    }
  }

  function wrapCols(el) {
    let elContainer = document.createElement("div");
    Array.prototype.forEach.call(el.querySelectorAll(".col"), function (c) {
      elContainer.appendChild(c);
    });
    elContainer.classList.add("cols");
    el.appendChild(elContainer);
  }

  // AJAX GET
  function getAjax(url, success) {
    var xhr = window.XMLHttpRequest
      ? new XMLHttpRequest()
      : new ActiveXObject("Microsoft.XMLHTTP");
    xhr.open("GET", url);
    xhr.onreadystatechange = function () {
      if (xhr.readyState > 3 && xhr.status == 200) success(xhr.responseText);
    };
    xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
    xhr.send();
    return xhr;
  }

  let lightboxKeyHandler = null;

  function openLightbox() {
    body.classList.add("lightboxOpen");
    lightboxOverlay.classList.add("on");
    unscramble();
    clearTimeout(logoTimeout);
    clearInterval(nextInterval);
    logo.classList.add("static");

    // Add keyboard listener
    lightboxKeyHandler = function (e) {
      e.preventDefault();
      let slideshowEl = lightboxOverlay.querySelector(".slideshow");
      if (!slideshowEl) return;
      let arrowIcon = slideshowEl.querySelector(".arrow");
      let closeIcon = slideshowEl.querySelector(".close");
      let flkty = Flickity.data(slideshowEl);

      if (e.key === "Escape") {
        arrowIcon.style.display = "none";
        closeIcon.style.display = "none";
        closeLightbox();
      } else if (e.key === "ArrowLeft" || e.key === "ArrowUp") {
        if (flkty) {
          if (flkty.selectedIndex === 0) {
            arrowIcon.style.display = "none";
            closeIcon.style.display = "none";
            closeLightbox();
          } else {
            flkty.previous();
          }
        }
      } else if (e.key === "ArrowRight" || e.key === "ArrowDown") {
        if (flkty) {
          if (flkty.selectedIndex === flkty.cells.length - 1) {
            arrowIcon.style.display = "none";
            closeIcon.style.display = "none";
            closeLightbox();
          } else {
            flkty.next();
          }
        }
      }
    };

    document.addEventListener("keydown", lightboxKeyHandler);

  }

  function closeLightbox() {
    body.style.cursor = "default";
    document.removeEventListener("click", handleSlideshowClick);
    document.removeEventListener("mousemove", handleMouseMove);
    body.classList.remove("lightboxOpen");
    lightboxOverlay.classList.remove("on");
    overlayLightboxInner.innerHTML = "";
    logo.classList.remove("static");
    scramble();
    setTimeout(function () {
      randomLogoAnimation();
    }, 4000);

    // Remove keyboard listener
    if (lightboxKeyHandler) {
      document.removeEventListener("keydown", lightboxKeyHandler);
      lightboxKeyHandler = null;
    }

  }

  function openOverlay() {
    overlay.classList.add("on");
    setTimeout(function () {
      zenscroll.center(overlay);
    }, 50);
  }

  function closeOverlay() {
    overlay.classList.remove("on");
    overlayInner.innerHTML = "";
    let cells = document.querySelectorAll(".cell");
    cells.forEach((cell) => {
      cell.classList.remove("selected");
    });
    removeArchiveKeyHandler();
  }

  function ratioSize(el) {
    let width = el.scrollWidth,
      ratio = el.getAttribute("data-ratio"),
      height = Math.floor(width * ratio);

    el.style.height = height + "px";
  }

  function resizeImage(el) {
    let photo = el.getElementsByClassName("photo"),
      parentWidth = Math.floor(el.scrollWidth),
      parentHeight = Math.floor(el.scrollHeight),
      parentRatio = parentHeight / parentWidth,
      photoRatio = photo[0].getAttribute("data-aspect-ratio");

    if (photoRatio >= parentRatio) {
      photo[0].classList.add("size-width");
      photo[0].classList.remove("size-height");
    } else {
      photo[0].classList.add("size-height");
      photo[0].classList.remove("size-width");
    }
  }

  function resizeFrame(el) {
    let parent = el.closest(".vidhold"),
      pw = parent.offsetWidth,
      ph = parent.offsetHeight,
      pr = ph / pw,
      orgW = el.getAttribute("width"),
      orgH = el.getAttribute("height"),
      r = orgH / orgW;

    if (r <= pr) {
      var nw = pw;
      var nh = nw * r;
    } else {
      var nw = ph / r,
        nh = ph;
    }

    el.setAttribute("width", nw);
    el.setAttribute("height", nh);
  }

  /* HANDLE WINDOW RESIZE */

  function reportWindowSize() { }

  window.addEventListener("resize", reportWindowSize);

  /* ***************************************** */
  /* EVENTS */
  /* ***************************************** */
  //Logo animation
  let logo = document.querySelector(".logo");
  let J = logo.querySelector("#J");
  let O = logo.querySelector("#O");
  let E = logo.querySelector("#E");
  let P = logo.querySelector("#P");
  let U = logo.querySelector("#U");
  let G = logo.querySelector("#G");

  function mouseOverLogo() {
    clearTimeout(logoTimeout);
    unscramble();
    logo.classList.add("static");
  }

  function mouseLeaveLogo() {
    logo.classList.remove("static");
    scramble();
  }

  function unscramble() {
    if (logo.classList.contains("static")) {
      return;
    }

    const state = Flip.getState([J, O, E, P, U, G]);
    let logoRect = logo.getBoundingClientRect();

    gsap.set(J, {
      x: logoRect.left - 36,
      y: logoRect.top - 43,
      rotate: 15.5,
      scale: 0.95,
    });
    gsap.set(O, {
      x: logoRect.left - 47,
      y: logoRect.top - 23,
      scale: 1.08,
    });
    gsap.set(E, {
      x: logoRect.left + 32,
      rotate: 104.5,
      y: logoRect.top - 68,
      scale: 1.09,
    });
    gsap.set(P, {
      x: logoRect.left - 5,
      y: logoRect.top - 42,
      scale: 1.11,
    });
    gsap.set(U, {
      x: logoRect.left - 16,
      rotate: -16,
      y: logoRect.top - 18.5,
      scale: 1.24,
    });
    gsap.set(G, {
      x: logoRect.left + 54,
      rotate: 28,
      y: logoRect.top - 80,
      scale: 1.08,
    });

    if (innerWidth < 769) {
      gsap.set(logo, {
        x: "15",
        duration: 0.5,
      });
    }

    Flip.from(state, {
      absolute: true,
      duration: 0.6,
    });
  }

  function scramble() {
    if (logo.classList.contains("static")) {
      return;
    }

    const state = Flip.getState([J, O, E, P, U, G]);

    gsap.set(J, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });
    gsap.set(O, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });
    gsap.set(E, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });
    gsap.set(P, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });
    gsap.set(U, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });
    gsap.set(G, {
      x: 0,
      y: 0,
      rotate: 0,
      scale: 1,
    });

    Flip.from(state, {
      absolute: true,
      duration: 0.7,
    });
  }
  if (innerWidth > 768) {
    logo.addEventListener("mouseover", mouseOverLogo);
    logo.addEventListener("mouseleave", mouseLeaveLogo);
  } else {
    function checkScroll() {
      let header = document.querySelector("header");
      let headerHeight = header.offsetHeight;
      if (window.scrollY > headerHeight) {
        unscramble();
      } else {
        scramble();
      }
    }
    window.addEventListener("scroll", checkScroll);
  }

  // Random logo animation
  let logoTimeout, nextInterval;
  function randomLogoAnimation() {
    const minInterval = 4000; // 4 seconds
    const maxInterval = 10000; // 10 seconds

    function animate() {
      //if (Math.random() > 0.5) {
      unscramble();
      setTimeout(scramble, 1500);
      // }

      nextInterval = Math.random() * (maxInterval - minInterval) + minInterval;
      logoTimeout = setTimeout(animate, nextInterval);
    }

    if (innerWidth > 768) {
      animate();
    }
  }

  setTimeout(function () {
    randomLogoAnimation();
  }, 4000);

  //Footer animation

  let footer = document.querySelector("footer");
  let joe = footer.querySelector("#joe");
  let pug = footer.querySelector("#pug");
  let liese = footer.querySelector("#liese");
  let lastName = footer.querySelector(".last_name");

  let viewportWidth = window.innerWidth;
  let k = 29000000000000;
  let pugBBox = pug.getBoundingClientRect();
  let joeBBox = joe.getBoundingClientRect();
  let pugWidth = k / Math.pow(viewportWidth, 3.5);
  let joeWidth = joeBBox.width; // Get the width of the #joe element
  let initialClipPath = joeWidth * 0.65; // Calculate 65% of joe's width in pixels
  let mask = footer.querySelector(".mask");

  function footerSetup() {
    // we need to position the last_name element based on screen width
    lastName.style.left = innerWidth * .92 - 289 + 'px';
  }

  footerSetup();

  // redraw on resize
  window.addEventListener("resize", () => {
    footerSetup();
  });

  let footerTL = gsap.timeline({ ease: "power2.out" });

  if (window.innerWidth > 768) {
    footerTL.to(mask, {
      clipPath: `inset(0 0 0 100%)`,
      duration: 1,
    })
      .to(mask, {
        clipPath: `inset(0 0 0 0)`,
        duration: 1,
      })
      .to(lastName, {
        left: 304,
        duration: 1,
      }, '.8');
  }

  // Use ScrollTrigger to scrub the timeline over a longer distance
  ScrollTrigger.create({
    trigger: footer,
    start: "top+=30 bottom",
    end: "bottom bottom",
    scrub: false,
    animation: footerTL,
    toggleActions: "play none none none",
    markers: false,
    onLeaveBack: () => {
      // Only reset when footer is fully out of view above
      footerTL.progress(0).pause();
    }
  });

  setTimeout(function () {
    ScrollTrigger.refresh();
  }, 500);

  // nav hover state - active item stays black, others go gold
  let navLinks = document.querySelectorAll("nav ul a");
  navLinks.forEach(navLink => {
    navLink.addEventListener("mouseover", (e) => {
      navLink.classList.add("active");
      navLinks.forEach(link => {
        if (link !== navLink) {
          link.classList.add("inactive");
        }
      });
    });
    navLink.addEventListener("mouseleave", (e) => {
      navLinks.forEach(link => {
        link.classList.remove("inactive", "active");
      });
    });
  });

  // Contact toggle

  let contactModule = document.querySelector(".contact_module");
  let contactBtn = document.querySelector("#contact");

  contactBtn.addEventListener("click", (e) => {
    e.preventDefault();
    body.classList.add("contactOpen");
    contactModule.classList.remove("hidden");
  });

  let contactCloseBtn = contactModule.querySelector(".closeBtn");

  if (typeof contactCloseBtn != "undefined" && contactCloseBtn != null) {

    contactCloseBtn.addEventListener("click", (e) => {
      e.preventDefault();
      body.classList.remove("contactOpen");
      contactModule.classList.add("hidden");
    });

  }


  // close the contact overlay when clicking outside the contact box
  let contactCoverEl = document.querySelector(".contact_cover");
  if (typeof contactCoverEl != "undefined" && contactCoverEl != null) {

    contactCoverEl.addEventListener("click", (e) => {
      e.preventDefault();
      body.classList.remove("contactOpen");
      contactModule.classList.add("hidden");
    });

  }

  // Bio toggle

  let bioModule = document.querySelector(".bio_module");
  let bioBtn = document.querySelector("#bio");

  bioBtn.addEventListener("click", (e) => {
    e.preventDefault();
    body.classList.add("contactOpen");
    bioModule.classList.remove("hidden");
  });

  // we need to make sure the first textblock on the bio page is at least as tall as the bio image
  let bioImageEl = document.querySelector(".bio_img_wrap");
  if (typeof bioImageEl != "undefined" && bioImageEl != null) {

    let bioWrapEl = document.querySelector(".bio_wrap");
    if (typeof bioWrapEl != "undefined" && bioWrapEl != null) {
      // we have a bio image and a bio text block
      setFirstTextBlockHeight();
      window.addEventListener("resize", setFirstTextBlockHeight);
    }

    // get the height of the bio image
    function setFirstTextBlockHeight() {
      let bioImageHeight = bioImageEl.offsetHeight + 50;
      console.log("bio image height: " + bioImageHeight);
      bioWrapEl.style.minHeight = bioImageHeight + "px";
    }

  }

  function lightBoxInit() {

    // OPENING LIGHTBOX SINGLE - LOOSE GRID
    let lightboxSingleLinks = document.querySelectorAll(".openLightboxSingle");
    lightboxSingleLinks.forEach((lightboxLink) => {
      lightboxLink.addEventListener("click", function (e) {
        e.preventDefault();
        let picid = lightboxLink.getAttribute("data-id");
        getAjax("/getLightboxSingle.php?picid=" + picid, function (data) {
          overlayLightboxInner.innerHTML = data;
          initLoading();

          document
            .querySelector("#lightbox .closeIcon")
            .addEventListener("click", function (e) {
              e.preventDefault();
              console.log("close lightbox");
              closeLightbox();
            });
        });
        openLightbox();
      });
    });

    // OPENING LIGHTBOX SLIDESHOW - HOMEPAGE AND SERIES GRID
    let lightboxLinks = document.querySelectorAll(".openLightbox");
    lightboxLinks.forEach((lightboxLink) => {
      lightboxLink.addEventListener("click", function (e) {
        e.preventDefault();
        let index = lightboxLink.getAttribute("data-index");
        let catid = lightboxLink.getAttribute("data-catid");
        getAjax(
          "/getLightboxSlideshow.php?catid=" + catid + "&index=" + index,
          function (data) {
            overlayLightboxInner.innerHTML = data;
            initLoading();
            initializeFlickity(index);
            setTimeout(function () {
              openLightbox();
            }, 200);

          }
        );
      });
    });

    // OPENING OVERLAY AND SLIDESHOW
    let overlayLinks = document.querySelectorAll(".openSlideshow");
    overlayLinks.forEach((overlayLink) => {
      overlayLink.addEventListener("click", function (e) {
        e.preventDefault();

        let cells = document.querySelectorAll(".cell");
        let clickedCell = e.currentTarget.closest(".cell");
        let cellIndex = clickedCell.getAttribute("data-index");
        let id = overlayLink.getAttribute("data-id");
        let catid = overlayLink.getAttribute("data-catid");
        getAjax(
          "/getSlideshow.php?id=" + id + "&catid=" + catid,
          function (data) {
            overlayInner.innerHTML = data;
            initLoading();
            initializeFlickity(cellIndex);
          }
        );

        let workpage = document.querySelector(".workpage");
        //  --------- WORKPAGE SLIDESHOW LOGIC (Series grid) --------------//

        if (workpage) {
          let hiddenCells = document.querySelectorAll(".cell.hide");
          // If there are already hidden cells, show them so that they don't remain hidden when the new overlay is open
          hiddenCells.forEach((cell) => {
            cell.classList.remove("hide");
          });
          // Hide other cells in the row
          let parent = e.currentTarget.closest(".row");
          let cells = parent.querySelectorAll(".cell");
          cells.forEach((cell) => {
            cell.classList.add("hide");
          });
          // Open Overlay in the row that was clicked
          parent.appendChild(overlay);

          openOverlay();
        } else {
          /* ----------- ARCHIVE SLIDESHOW LOGIC -----------*/
          //  For non-workpage, append overlay next to the last cell in current row
          // closeOverlay();
          let parentRow = e.currentTarget.closest(".row");
          let cells = Array.from(parentRow.children);
          let clickedCell = e.currentTarget.closest(".cell");
          let cellIndex = Array.from(cells).indexOf(clickedCell);
          let clickedCellRect = clickedCell.getBoundingClientRect();
          let firstCellInNextRow = null;

          for (let i = 0; i < cells.length; i++) {
            let cell = cells[i];
            cell.classList.remove("selected");
            let cellRect = cell.getBoundingClientRect();
            if (cellRect.top > clickedCellRect.top) {
              firstCellInNextRow = cell;
              break;
            }
          }
          clickedCell.classList.add("selected");
          if (firstCellInNextRow) {
            firstCellInNextRow.insertAdjacentElement("beforebegin", overlay);
          } else {
            parentRow.appendChild(overlay);
          }

          openOverlay();
        }
        // change event
      });
    });

    function handleOverlayClick(e) {
      let slideshowEl = overlayInner.querySelector(".wrap");
      if (!slideshowEl) return;

      const rect = slideshowEl.getBoundingClientRect();
      const clickX = e.clientX - rect.left;
      const width = rect.width;

      const gridCells = Array.from(document.querySelectorAll(".grid_cell"));
      const activeCell = document.querySelector(".grid_cell.selected");
      const activeIndex = gridCells.indexOf(activeCell);

      if (clickX < width / 3) {
        const prevIndex = activeIndex - 1;
        if (prevIndex >= 0) {
          const prevCell = gridCells[prevIndex];
          const prevLink = prevCell.querySelector("a");
          if (prevLink) prevLink.click();
        } else {
          closeOverlay();
        }
      } else if (clickX < (2 * width) / 3) {
        closeOverlay();
      } else {
        const nextIndex = activeIndex + 1;
        if (nextIndex < gridCells.length) {
          const nextCell = gridCells[nextIndex];
          const nextLink = nextCell.querySelector("a");
          if (nextLink) nextLink.click();
        } else {
          closeOverlay();
        }
      }
    }

    function handleOverlayMouseMove(e) {
      let slideshowEl = overlayInner.querySelector(".wrap");
      if (!slideshowEl) return;

      let arrowLeftIcon = slideshowEl.querySelector(".arrow.left");
      let arrowRightIcon = slideshowEl.querySelector(".arrow.right");
      let closeIcon = slideshowEl.querySelector(".close");

      body.style.cursor = "none";

      const rect = slideshowEl.getBoundingClientRect();
      const x = e.clientX - rect.left;
      const width = rect.width;

      arrowLeftIcon.style.display = "none";
      arrowRightIcon.style.display = "none";
      closeIcon.style.display = "none";

      if (x < width / 3) {
        arrowLeftIcon.style.display = "block";
        arrowLeftIcon.style.left = e.clientX - 23 + "px";
        arrowLeftIcon.style.top = e.clientY - 23 + "px";
      } else if (x < (2 * width) / 3) {
        closeIcon.style.display = "block";
        closeIcon.style.left = e.clientX - 23 + "px";
        closeIcon.style.top = e.clientY - 23 + "px";
      } else {
        arrowRightIcon.style.display = "block";
        arrowRightIcon.style.left = e.clientX - 23 + "px";
        arrowRightIcon.style.top = e.clientY - 23 + "px";
      }
    }

    // Utility to remove listeners
    function removeOverlayListeners() {
      overlayInner.removeEventListener("click", handleOverlayClick);
      overlayInner.removeEventListener("mousemove", handleOverlayMouseMove);
    }

    let archiveKeyHandler = null;

    function addArchiveKeyHandler() {
      if (archiveKeyHandler) return;
      archiveKeyHandler = function (e) {
        const gridCells = Array.from(document.querySelectorAll(".cell"));
        const activeCell = document.querySelector(".cell.selected");
        const activeIndex = gridCells.indexOf(activeCell);

        if (e.key === "Escape") {
          closeOverlay();
        } else if (e.key === "ArrowLeft" || e.key === "ArrowUp") {
          const prevIndex = activeIndex - 1;
          if (prevIndex >= 0) {
            const prevCell = gridCells[prevIndex];
            const prevLink = prevCell.querySelector("a.openItem");
            if (prevLink) prevLink.click();
          } else {
            closeOverlay();
          }
        } else if (e.key === "ArrowRight" || e.key === "ArrowDown") {
          const nextIndex = activeIndex + 1;
          if (nextIndex < gridCells.length) {
            const nextCell = gridCells[nextIndex];
            const nextLink = nextCell.querySelector("a.openItem");
            if (nextLink) nextLink.click();
          } else {
            closeOverlay();
          }
        }
      };
      document.addEventListener("keydown", archiveKeyHandler);
    }

    function removeArchiveKeyHandler() {
      if (archiveKeyHandler) {
        document.removeEventListener("keydown", archiveKeyHandler);
        archiveKeyHandler = null;
      }
    }

    // Get Item (for archive)
    let overlayItemLinks = document.querySelectorAll(".openItem");
    overlayItemLinks.forEach((overlayLink) => {
      overlayLink.addEventListener("click", function (e) {
        e.preventDefault()

        let cells = document.querySelectorAll(".cell");
        let clickedCell = e.currentTarget.closest(".cell");
        let id = overlayLink.getAttribute("data-id");
        getAjax("/getItem.php?id=" + id, function (data) {
          overlayInner.innerHTML = data;
          initLoading();
          setTimeout(function () {
            zenscroll.center(overlayInner);
          }, 100);

          // Remove previous listeners before adding new ones
          removeOverlayListeners();
          overlayInner.addEventListener("click", handleOverlayClick);
          overlayInner.addEventListener("mousemove", handleOverlayMouseMove);

          addArchiveKeyHandler();

          // Optionally, reset cursor when overlay closes
          overlayCloser.addEventListener("click", function () {
            body.style.cursor = "default";
            removeOverlayListeners();
          });

        });

        // ----------- ARCHIVE SLIDESHOW LOGIC -----------
        //  For non-workpage, append overlay next to the last cell in current row
        // closeOverlay();
        let parentRow = e.currentTarget.closest(".row");
        let clickedCellRect = clickedCell.getBoundingClientRect();
        let firstCellInNextRow = null;

        for (let i = 0; i < cells.length; i++) {
          let cell = cells[i];
          cell.classList.remove("selected");
          let cellRect = cell.getBoundingClientRect();
          if (cellRect.top > clickedCellRect.top) {
            firstCellInNextRow = cell;
            break;
          }
        }
        clickedCell.classList.add("selected");
        if (firstCellInNextRow) {
          firstCellInNextRow.insertAdjacentElement("beforebegin", overlay);
        } else {
          parentRow.appendChild(overlay);
        }

        openOverlay();

      });
    });

  }

  lightBoxInit();

  //hamburger menu toggle
  if (typeof menuBtn != "undefined" && menuBtn != null) {
    menuBtn.addEventListener("click", function (event) {
      event.preventDefault();

      if (document.body.classList.contains("menuOn")) {
        document.body.classList.remove("menuOn");
        if (document.body.classList.contains("contactOpen")) {
          document.body.classList.remove("contactOpen");
          contactModule.classList.add("hidden");
          bioModule.classList.add("hidden");
        }
      } else {
        document.body.classList.add("menuOn");
      }

    }, true);
  }

  // close overlay
  if (typeof overlay != "undefined" && overlay != null) {
    overlayCloser.addEventListener(
      "click",
      function (event) {
        event.preventDefault();
        closeOverlay();
      },
      true
    );
  }

  // example link for AJAX request
  const ajaxLink = document.querySelector("a.ajax");
  if (typeof ajaxLink != "undefined" && ajaxLink != null) {
    ajaxLink.addEventListener(
      "click",
      function (event) {
        event.preventDefault();
        // caption slug for URL
        let linkSlug = this.getAttribute("data-slug");
        window.location.hash = linkSlug;

        // ajax call to get page text
        getAjax("/getTextpage.php?slug=" + linkSlug, function (data) {
          // load data into overlay
          overlayInner.innerHTML = data;
          overlay.classList.add("on");
          // return side nav to "off" state
          nav.classList.remove("open");
          // add blur class to body
          body.classList.add("blur");
        });
      },
      true
    );
  }
});

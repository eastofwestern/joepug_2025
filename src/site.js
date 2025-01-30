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
gsap.registerPlugin(Flip, ScrollTrigger, ScrollSmoother);
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
    smoothTouch: 0.1, // much shorter smoothing time on touch devices (default is NO smoothing on touch devices)
  });

  // global animation effects
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

    let arrowIcon = slideshowEl.querySelector(".arrow");
    let closeIcon = slideshowEl.querySelector(".close");
    let closerX = lightboxOverlay.querySelector(".closer .closeIcon");

    body.style.cursor = "none";
    arrowIcon.style.display = "block";

    arrowIcon.style.left = e.clientX - 23 + "px";
    arrowIcon.style.top = e.clientY - 23 + "px";
    closeIcon.style.left = e.clientX - 23 + "px";
    closeIcon.style.top = e.clientY - 23 + "px";

    // handle close icon over selected image
    let selectedCell = slideshowEl.querySelector(".cell.is-selected img");
    if (selectedCell && selectedCell.contains(e.target)) {
      closeIcon.style.display = "block";
      arrowIcon.style.display = "none";
    } else {
      closeIcon.style.display = "none";
      arrowIcon.style.display = "block";
    }

    // rotate arrow cursor based on position
    if (e.pageX < window.innerWidth * 0.5) {
      arrowIcon.classList.add("left");
    } else {
      arrowIcon.classList.remove("left");
    }

    // if the cursor is over the closeIcon, hide the arrow cursor and use the browser default cursor
    if (closerX.contains(e.target)) {
      arrowIcon.style.display = "none";
    }
  };

  const handleSlideshowClick = (e) => {
    let slideshowEl = lightboxOverlay.querySelector(".slideshow");
    let arrowIcon = slideshowEl.querySelector(".arrow");
    let closeIcon = slideshowEl.querySelector(".close");
    // Get Flickity instance from the element
    let flkty = Flickity.data(slideshowEl);

    // handle esc key
    if (lightboxOverlay.classList.contains("on")) {
      document.addEventListener("keydown", (e) => {
        if (e.key === "Escape") {
          arrowIcon.style.display = "none";
          closeIcon.style.display = "none";
          closeLightbox();
        }
      });
    }

    if (
      e.target.classList.contains("photo") ||
      e.target.classList.contains("closeIcon")
    ) {
      arrowIcon.style.display = "none";
      closeIcon.style.display = "none";
      closeLightbox();
    } else {
      if (e.pageX < window.innerWidth * 0.5) {
        flkty.previous();
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

      flkty.on("change", function (index) {
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

  function openLightbox() {
    body.classList.add("lightboxOpen");
    lightboxOverlay.classList.add("on");
    unscramble();
    clearTimeout(logoTimeout);
    clearInterval(nextInterval);
    logo.classList.add("static");
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

  function reportWindowSize() {}

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

  let viewportWidth = window.innerWidth;
  let k = 29000000000000;
  let pugBBox = pug.getBoundingClientRect();
  let joeBBox = joe.getBoundingClientRect();
  let pugWidth = k / Math.pow(viewportWidth, 3.5);
  let joeWidth = joeBBox.width; // Get the width of the #joe element
  let initialClipPath = joeWidth * 0.65; // Calculate 65% of joe's width in pixels
  /*
  console.log("pugwidth", pugWidth);
  console.log("joewidth", joeWidth);
  console.log("initialclippath", initialClipPath);
  */

  let footerTL;

  if (window.innerWidth > 768) {
    footerTL = gsap.timeline({
      scrollTrigger: {
        trigger: footer,
        start: "250px bottom",
        end: "bottom bottom",
        scrub: 1.75,
      },
    });
    gsap.set(joe, { clipPath: `inset(0 ${initialClipPath}px 0 0)` });
    footerTL
      .to(joe, {
        clipPath: `inset(0 ${pugWidth}px 0 0)`,
        // duration: 2,
      })
      .to(pug, {
        // delay: 2,
        left: 265,
      })
      .to(
        liese,
        {
          left: 265,
        },
        "<"
      )
      .to(
        joe,
        {
          clipPath: `inset(0 ${initialClipPath}px 0 0)`,
        },
        "<"
      );
  } else {
    let footerTL = gsap.timeline({
      scrollTrigger: {
        trigger: footer,
        start: "20% bottom",
        end: "bottom bottom",
        scrub: 1,
      },
    });
    gsap.set(joe, { clipPath: "inset(0 71% 0 0)" });
    footerTL
      .to(joe, {
        clipPath: "inset(0 18% 0 0)",
        // duration: 2,
      })
      .to(pug, {
        // delay: 2,

        left: -45,
      })
      .to(
        liese,
        {
          left: 55,
        },
        "<"
      )
      .to(
        joe,
        {
          clipPath: "inset(0 71% 0 0)",
        },
        "<"
      );
  }
  window.addEventListener("resize", function () {
    footerTL.progress(0).invalidate().restart();
  });

  // Contact toggle

  let contactModule = document.querySelector(".contact_module");
  let contactBtn = document.querySelector("#contact");
  let contactCloseBtn = contactModule.querySelector(".closeBtn");

  contactBtn.addEventListener("click", (e) => {
    e.preventDefault;
    body.classList.add("contactOpen");
    contactModule.classList.remove("hidden");
  });
  contactCloseBtn.addEventListener("click", (e) => {
    e.preventDefault;
    body.classList.remove("contactOpen");
    contactModule.classList.add("hidden");
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
        }
      );
      openLightbox();
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

  // Get Item (for archive)
  let overlayItemLinks = document.querySelectorAll(".openItem");
  overlayItemLinks.forEach((overlayLink) => {
    overlayLink.addEventListener("click", function (e) {
      e.preventDefault();

      let parentCell = overlayLink.closest(".cell");

      if (parentCell.classList.contains("selected")) {
        closeOverlay();
        zenscroll.center(parentCell);
      } else {
        let cells = document.querySelectorAll(".cell");
        let clickedCell = e.currentTarget.closest(".cell");
        let id = overlayLink.getAttribute("data-id");
        getAjax("/getItem.php?id=" + id, function (data) {
          overlayInner.innerHTML = data;
          initLoading();
          setTimeout(function () {
            zenscroll.center(overlayInner);
          }, 100);

          overlayInner.addEventListener("click", function (e) {
            closeOverlay();
            zenscroll.center(parentCell);
          });
        });

        /* ----------- ARCHIVE SLIDESHOW LOGIC -----------*/
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
      }
    });
  });

  //hamburger menu toggle
  if (typeof menuBtn != "undefined" && menuBtn != null) {
    menuBtn.addEventListener(
      "click",
      function (event) {
        event.preventDefault(), document.body.classList.toggle("menuOn");
      },
      true
    );
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

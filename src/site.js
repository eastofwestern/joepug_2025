import LazyLoad from "vanilla-lazyload";
//import Masonry from "masonry-layout";
//import Cookies from "js-cookie";
const Flickity = require("flickity-fade");
import socialIcons from "social-icons";
import arRows from "ar-rows";
import gsap from "gsap";
import ScrollTrigger from "gsap/ScrollTrigger";
import ScrollSmoother from "gsap/ScrollSmoother";
gsap.registerPlugin(ScrollTrigger, ScrollSmoother);

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
let overlayInner, overlayCloser;
if (typeof overlay != "undefined" && overlay != null) {
  overlayInner = overlay.querySelector(".inner");
  overlayCloser = overlay.querySelector(".closer");
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
  ScrollTrigger.batch(".fadeUp", {
    onEnter: (elements, triggers) => {
      gsap.to(elements, { opacity: 1, y: 0, stagger: 0.15 });
    },
  });

  ScrollTrigger.batch(".fadeOn", {
    onEnter: (elements, triggers) => {
      gsap.to(elements, { opacity: 1, stagger: 0.1 });
    },
  });

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

  //initialize flickity for slideshows

  let slideshowEl = document.querySelector(".slideshow");
  let counterEl = document.querySelector(".counter .current");

  if (typeof slideshowEl != "undefined" && slideshowEl != null) {
    let flkty = new Flickity(slideshowEl, {
      // options
      fade: true,
      cellSelector: ".cell",
    });

    // change event
    flkty.on("change", function (index) {
      let slideCount = index + 1;
      counterEl.innerHTML = slideCount;
    });
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

  function openOverlay() {
    overlay.classList.add("on");
  }

  function closeOverlay() {
    overlay.classList.remove("on");
    overlayInner.innerHTML = "";
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

  // Contact toggle

  let contactModule = document.querySelector(".contact_module");
  let contactBtn = document.querySelector("#contact");
  let contactCloseBtn = contactModule.querySelector(".closeBtn");
  console.log(contactBtn);
  contactBtn.addEventListener("click", (e) => {
    e.preventDefault;
    console.log("click");
    contactModule.classList.remove("hidden");
  });
  contactCloseBtn.addEventListener("click", (e) => {
    e.preventDefault;
    contactModule.classList.add("hidden");
  });

  // overlay links
  let overlayLinks = document.querySelectorAll(".openOverlay");
  overlayLinks.forEach((overlayLink) => {
    overlayLink.addEventListener("click", function (e) {
      e.preventDefault();
      let id = overlayLink.getAttribute("data-id");
      getAjax("/getItem.php?id=" + id, function (data) {
        overlayInner.innerHTML = data;
        openOverlay();
      });
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

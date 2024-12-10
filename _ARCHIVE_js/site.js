;(function($, window, document, undefined) {

	var $win = $(window);
	var $doc = $(document);

	// DOC. READY ==============================
	$doc.ready(function() {
		
	  	var bh = $win.height(),
			bw = $win.width(),
			br = bh / bw,
			body = $('body'),
			domMain = $('main'),
			dpr = window.devicePixelRatio,
			st = window.pageYOffset || document.body.scrollTop || document.documentElement.scrollTop,
			lastScrollTop = window.pageYOffset || document.body.scrollTop || document.documentElement.scrollTop,
			gutter = $('.gutter-sizer'),
			gutterWidth = gutter.width(),
			masonGrid = $('.masongrid'),
			masonCell = masonGrid.find('.cell'),
			slickSlideshow = $('.slickslideshow'),
			$slideshow = slickSlideshow,
			$slide = $('.cell', slickSlideshow),
			arRows = $('.ar-rows'),
			row = arRows.find('.row'),
			rowsMargin = $('.ar-rows').data('margin'),
			ratioSizeItems = $('.ratioSize'),
			setRatioItems = $('.setRatios'),
			gridVid = $('.videos #thumbs .cell'),
			fullPage = $('#fullpage'),
			justified = $('.justified'),
			isoGrid = $('.filtergrid'),
			isoImages = isoGrid.find('.photo'),
			filter = $('#filter'),
			resizeImageCell = $('.resize-image');



// =================================================
// =================================================
// FUNCTIONS =======================================
// =================================================
// =================================================

		// IMAGE LOADING ===========================
		function loadImage(image, pixelRatio, selfContained) {

			// New "pixelRatio" parameter. Optional. Force dpr to not serve up unnecessarily large images, if needed.
			// New "selfContained" parameter. Optional. Accepts a boolean that just says "hey, this image has no parent, so get its own width instead."
			// -AR, 11/22/2017

			var devicePixelRatio = !pixelRatio ? dpr : pixelRatio,
				img = image.data('src'),
				newW = image.hasClass('bg-loadme') || selfContained === true
						? image.width() * devicePixelRatio
						: image.parent().width() * devicePixelRatio,
				imgpath = "";

			if (!image.hasClass('gif')) {
				if (newW <= 500) {
					imgpath = "/images/pics/500/"+img;
				} else if (newW > 500 && newW <= 750) {
					imgpath = "/images/pics/750/"+img;
				} else if (newW > 750 && newW <= 1000) {
					imgpath = "/images/pics/1000/"+img;
				} else if (newW > 1000 && newW <= 1536) {
					imgpath = "/images/pics/1536/"+img;
				} else if (newW > 1536 && newW <= 1920) {
					imgpath = "/images/pics/1920/"+img;
				} else {
					imgpath = "/images/pics/"+img;
				}
			} else {
				// load jpg as placeholder, when gif loaded swap					
				imgpath = "/images/pics/500/"+img;
				fullpath = "/images/pics/"+img;
				
				var fullimg = new Image();
				fullimg.onload = function () {
					var fullImgSrc = $(fullimg).attr('src');
					$('.photo[data-src="'+img+'"]').attr('src', fullImgSrc);
				}
				fullimg.src = fullpath;
			}

			if (image.hasClass('bg-loadme')) {
				$('<img/>').attr('src', imgpath).on('load', function() {
					$(this).remove();
					image.css('background-image', 'url('+imgpath+')').addClass('loaded');
				});
			} else {
				image.on('load', function() {
					image.addClass('loaded');
				}).attr('src', imgpath);
			}

		};

		// PROCESS VIDEOS ==========================
		function processVid(element, autoplay) {

			var el = element,
				type = el.data('type'),
				code = el.data('video'),
				id = el.data('id'),
				inject = el.find('.inner'),
				embeddedVid = el.find('iframe'),
				uploadedVid = el.find('video'),
				vidExists = type === "file"
							? uploadedVid.length > 0
							: embeddedVid.length > 0,
				uploadedVideoDOM,
				theSrc,
				hasQ;

			if (type === "embed") {

				if (!vidExists) {

					inject.prepend(code);

					//assign vid, now that code has been injected.
					vid = el.find('iframe');

					resizeVid(el);

					if (autoplay === "yes") {
						theSrc = vid.attr('src');
						hasQ = theSrc.indexOf("?");
						if (hasQ >= 0) {
							vid.attr('src', (theSrc + '&autoplay=1'));
						} else {
							vid.attr('src', (theSrc + '?autoplay=1'));
						}
					}

				}

			} else {

				if (!vidExists) {

					inject.prepend(code);

					//assign uploadedDOM, now that code has been injected.
					uploadedVideoDOM = document.getElementById('video' + id);
					resizeVid(el);

					if (autoplay === "yes") {
						uploadedVideoDOM.play();
					}

				} else {

					//assign uploadedDOM.
					uploadedVideoDOM = document.getElementById('video' + id);

					if (autoplay === "yes") {
						uploadedVideoDOM.play();
					}

				}

			}
			
		}

		// RESIZE VIDEOS ===========================
		// Note: this is called within processVid(), but can (and should) also be called if the browser resizes.
		// Element param will take any parent node as an arg. Usually "$('.cell')" for our purposes.
		function resizeVid(element) {
			var vidType = element.data('type'),
				vid = vidType === "file"
					  ? element.find('video')
					  : element.find('iframe'),
				insertionPoint = element.find('.inner'),
				parentWidth = Math.floor(insertionPoint.width()),
				parentHeight = Math.floor(insertionPoint.height()),
				parentRatio = parentHeight / parentWidth,
				ow = vid.attr('width'),
				oh = vid.attr('height'),
				r = oh / ow;

			if (r <= parentRatio) {
				var newWidth = parentWidth,
					newHeight = Math.floor(newWidth * r);
			} else {
				var newWidth = Math.floor(parentHeight / r),
					newHeight = parentHeight;
			}

			vid.height(newHeight).width(newWidth);
		}
		
		function resizeFrame(element) {
			var ow = element.attr('width'),
				oh = element.attr('height'),
				r = oh / ow,
				pw = element.parent().width(),
				ph = element.parent().height(),
				pr = ph / pw;
			
			if (r <= pr) {
				var nw = pw;
				var nh = nw * r;					
			} else {
				var nw = ph / r,
					nh = ph;
			}
			
			element.width(nw).height(nh);
			
		}

		// RESIZE IMAGES ===========================
		// Added on 12/13/2017 - AR
		// Make an image behave like CSS background-cover, so we can have semantic, crawlable images.
		// Pass in parent cell as a jQuery selctor, such as $('.cell.resize-image').
		// Image must haves: data-aspect-ratio attribute, class of "photo".
		// Run this function in a resize event (IF NECESSARY) as well as on document ready.
		function resizeImage (parent) {
			var photo = parent.find('.photo'),
				parentWidth = Math.floor(parent.width()),
				parentHeight = Math.floor(parent.height()),
				parentRatio = parentHeight / parentWidth,
				photoRatio = photo.data('aspect-ratio');

			if (photoRatio >= parentRatio) {
				photo.addClass('size-width').removeClass('size-height');
			} else {
				photo.addClass('size-height').removeClass('size-width');
			}
		}

		// RATIO SIZING ============================
		function ratioSize(el) {
			el.each(function() {
				var r = $(this).data('ratio'),
					w = $(this).width(),
					h = Math.floor(w * r);
				$(this).height(h);
			});
		}
		function setRatios(el) {
			// if we need all items to be equal, whole-number heights:
			var $master = el.first(),
				r = $master.data('ratio'),
				w = $master.width(),
				h = Math.floor(w * r);
				el.height(h);
		}

		// INVIEW AUTOPLAY VIDEO LOADING ===============
		function loadVideoLoop (element) {
			var cell = element.closest('.cell'),
				vidStr = cell.data('video'),
				vidId = cell.data('id'),
				hasVid = element.find('video').length > 0;
			if (hasVid) {
				var vid = document.getElementById('video' + vidId);
				vid.play();
			} else {
				element.html(vidStr);
				setTimeout(function() {
					var vid = document.getElementById('video' + vidId);
					vid.play(); 
				},0);
			}
		}

		function unloadVideoLoop (element) {
			var cell = element.closest('.cell'),
				vidId = cell.data('id'),
				hasVid = element.find('video').length > 0;
			if (hasVid) {
				var vid = document.getElementById('video' + vidId);
				vid.pause();
				console.log(vid.currentTime);
			}
		}

		// VIDEO ROLLOVERS =========================
		function hoverVideo(e) {  
			var vid = $('video', this);
			if (vid.length) {
			    vid.get(0).play(); 
			    $(this).addClass('playing');
			}
		}
		function hideVideo(e) {
			var vid = $('video', this);
			if (vid.length) {
			    setTimeout(function() {
			    	vid.get(0).pause();
			    },300);
			    $(this).removeClass('playing');
			}
		}

		// SPLIT <ul> INTO COLUMNS =================
		function splitCols() {
			var container = $('.splitMe'),
			num_cols = container.data('cols'),
			listItem = 'li',
			listClass = 'col';
			container.each(function() {
				var items_per_col = new Array(),
				items = $(this).find(listItem),
				min_items_per_col = Math.floor(items.length / num_cols),
				difference = items.length - (min_items_per_col * num_cols);
				for (var i = 0; i < num_cols; i++) {
					if (i < difference) {
						items_per_col[i] = min_items_per_col + 1;
					} else {
						items_per_col[i] = min_items_per_col;
					}
				}
				for (var i = 0; i < num_cols; i++) {
					$(this).append($('<ul ></ul>').addClass(listClass));
					for (var j = 0; j < items_per_col[i]; j++) {
						var pointer = 0;
						for (var k = 0; k < i; k++) {
							pointer += items_per_col[k];
						}
						$(this).find('.' + listClass).last().append(items[j + pointer]);
					}
				}
			});
		}

		// Justified, row-based grid:
		// ====================================
		function justifyRows(row) {

			var container = row.closest('.ar-rows'),
				rowsMargin = container.data('margin'),
				img = row.find('img'),
				cell = row.find('.cell'),
				num = img.length,
				fh = img.first().data('height'),
				total = 0,
				imgCount = 0,
				containerWidth = container.width() - (rowsMargin * (num - 1));

			// step 1: collect aspect ratios, set new aspect ratios based on a uniform height (we'll use the first image as our baseline)
			img.each(function() {

				var _this = $(this),
					ow = _this.data('width'),     	// "original" width
					oh = _this.data('height'),    	// "original" height
					r = oh / ow,                    // aspect ratio 1.33
					wh = fh,                        // new "working" height (data-height attr of first image)
					ww = wh / r;					// new "working" width

				// set new width, height, and ratio attributes, based on our "working" height
				_this.data({
					'width': ww,
					'height': wh,
					'ratio': r
				});

				// add new width to our "total width" number.
				total += ww;

				imgCount++;

				if (imgCount == num) {
					setImageDimensions(total);
				}

			});


			function setImageDimensions(total) {
				
				img.each(function(i) {

					var _this = $(this);
						ww = _this.data('width'),
						r = _this.data('ratio'),
						wh = _this.data('height');

					// image's width percentage (of "total"), in decimal format:
					var percentage = ww / total;

					// image's width percentage, relative to the container's width:
					var relativeWidth = (percentage * containerWidth),

						// set image's height, based on its aspect ratio:
						// newHeight = adjustedPercentage * r,
						newHeight = relativeWidth * r,

						// set a consistent height ratio value, relative to the container's width:
						heightRatio = newHeight / containerWidth,

						// make our width percentage into a nice number for CSS to use:
						cssPercentage = (percentage * 100).toFixed(2) + '%';

					// set some things on the CELL level, so we can access them on resize
					_this.parent()
						.css({
							marginBottom: rowsMargin,
							width: (containerWidth * percentage)
						})
						.data({
							'ratio': r,
							'percW': percentage,
							'percH': heightRatio,
							'numImages': num
						});

					// set height of the image:
					_this.css({
						height: newHeight,
					});

				});

			}

		} // end justifyRows()

		var row = $('.ar-rows .row');
		row.each(function() {
			var _this = $(this);
			justifyRows(_this);
		});

	    // JUSTIFIED GALLERY
	    // (PRESERVE LAYOUT ON RESIZE) =============
	    // ---------
	    // These functions are a workaround for a "responsive" row height in Justified Gallery.
	    // Add a class to show a "cover" element that hides the gallery while it recalculates, then remove that class.
	    function reCalc() {

	    	justified.justifiedGallery({
	    		rowHeight: bw * .16,
	    	});

	    	justified.justifiedGallery().on('jg.complete', function (e) {
	    	    body.removeClass('recalculating');
	    	});

	    	// if the body class hasn't been removed after a second, remove it manually. 
	    	setTimeout(function() {
	    		if (body.hasClass('recalculating')) {
	    			body.removeClass('recalculating');
	    		}
	    	}, 1000);

	    }

	    // to be called on resize. callback would be reCalc()
	    function resizeJustifiedGallery (callback) {

	    	body.addClass('recalculating');

	    	// 300ms is the duration of the ".resize-overlay" opacity transition.
	    	setTimeout(callback(), 300);

	    }

	    // Grid-to-slideshow helper ================
	    function getHash (element) {
	    	var count = element.data('count');
	    	return count;
	    }

		// FLUID LAYOUT ============================
		function fluid() {
			
			bh = $win.height();
			bw = $win.width();
			br = bh / bw;
			st = document.body.scrollTop || document.documentElement.scrollTop;
			
			$('.bheight').css('height', bh);

			// Set min height of <main>, if sticky footer:
			if (body.hasClass('sticky-footer')) {
				domMain.css('min-height', bh);
			}
			
			// Masonry things:
			gutterWidth = gutter.width();
			masonGrid.css('min-height', bh);
			masonCell.css('margin-bottom', gutterWidth);

			// Ratio Sizing:
			ratioSize(ratioSizeItems);
			setRatios(setRatioItems);
			resizeImageCell.each(function() {
				resizeImage($(this));
			});
			
		}



// =================================================
// =================================================
// INITIALIZATION ==================================
// =================================================
// =================================================

		fluid();
		splitCols();
		getSocial(function() {
			$('.social ul').fadeTo(300,1);
		});	
		
		// FULLPAGE JS =============================
		if (fullPage.length) {
		
			fullPage.fullpage({
				scrollBar: false,
				scrollingSpeed: 1000,
				navigation: true,
				navigationPosition: 'right',
				continuousVertical: false,
				onLeave: function(index, nextIndex, direction) {
					// code to run on leave
				}
			});
			
		}
			
		// SLICK CAROUSEL ==========================
		
		// Slick carousel events
		if ($slideshow.length) {

			$slideshow.on('init', function() {
				var firstImg = $slideshow.find('.slick-current img.photo');
				loadImage(firstImg);
			});

			// Before slide changes -------------
			$slideshow.on('beforeChange', function(event, slick, currentSlide, nextSlide) {

				// update slide counter and hash
				if (!$slideshow.hasClass('autoplay')) {
					var slideCount = nextSlide+1;
					window.location.hash = slideCount;
				}
				
				var $curr = $(slick.$slides.get(currentSlide)),
					$next = $(slick.$slides.get(nextSlide)),
					$prev = $curr.prev('.slick-slide'),
					nextVid = $next.data('video'),
					hasVid = $next.find('video').length
						  || $next.find('iframe').length
						  || $next.find('embed').length,
					vidType = $next.data('type'),
					id = $next.data('id'),
					currImg = $('.photo', $next),
					nextImg = $('.photo', $next.next('.slick-slide')),
					prevImg = $('.photo', $next.prev('.slick-slide'));

				// if the next slide is a video slide:
				if (nextVid != null) {

					// Check whether there is a video here yet:
					if (hasVid) {
						if (vidType === "file") {
							document.getElementById('video'+id).play();
						} else {
							// If you want to control playback w/ Vimeo API, put code here.
							// Otherwise, we will leave embeds on slide change.
						}
					} else {
						processVid($next, 'yes');
					}

				}

				loadImage(currImg);
				loadImage(nextImg);
				loadImage(prevImg);

			});

			// After slide changes -------------
			// We will compare prevSlideIndex with "currentSlide" param to determine direction of slide movement, and be able to target only the slides we need to when it comes to loading images and videos (rather than looping through every single slide each time):
			var prevSlideIndex = 0;

			$slideshow.on('afterChange', function(event, slick, currentSlide) {

				var $incomingSlide = $('.cell[data-slick-index="' + currentSlide + '"]'),
					// figure out direction of slide movement, based on slide index:
					$prevSlide = currentSlide > prevSlideIndex
								 ? $incomingSlide.prev('.slick-slide')
								 : $incomingSlide.next('.slick-slide'),
					prevSlideId = $prevSlide.data('id'),
					prevSlideIsVid = $prevSlide.hasClass('video'),
					prevSlideVidType = prevSlideIsVid ? $prevSlide.data('type') : null,
					prevSlideVid = prevSlideVidType === "file"
								   ? $prevSlide.find('video')
								   : $prevSlide.find('iframe'),
					prevSlideVidExists = prevSlideVid.length > 0;

				// check if prev slide is a video slide,
				// and if so, check if the video is in the DOM:
				if (prevSlideIsVid && prevSlideVidExists) {
					if (prevSlideVidType === "file") {
						document.getElementById('video'+prevSlideId).pause();
						// or prevSlideVid.get(0).play(); if you need to use jQuery.
					} else {
						prevSlideVid.remove();
						// or if you're using the Vimeo API, pause iframe video instead of removing it!!
					}
				}

				//update prevSlideIndex value
				prevSlideIndex = currentSlide;

			});

			if ($slideshow.hasClass('fade')) {
				var $fade = true;
			} else {
				var $fade = false;
			}

			if ($slideshow.hasClass('autoplay')) {
				var $autoplay = true;
			} else {
				var $autoplay = false;
			}

			$slideshow.slick({
				slide: 'figure',
				fade: $fade,
				centerMode: true,
				centerPadding: 0,
				slidesToShow: 1,
				prevArrow: '.prev',
				nextArrow: '.next',
				infinite: true,
				autoplay: $autoplay,
				autoplaySpeed: 2500,
				pauseOnFocus: false,
				pauseOnHover: false,
				speed: 500
			});

			// slick advance
			if (window.location.hash) {
				
				var h = window.location.hash;
				var ch = h.replace("#", "");
				
				if (ch - 1 == 0) {
					var firstPic = $('.slickslideshow .cell').first().find('.photo');
					loadImage(firstPic);
				}
				
				setTimeout(function() {
					$(".slickslideshow").slick('slickGoTo', ch - 1, true);
				}, 200);

			} else {
				setTimeout(function() {
					$(".slickslideshow").slick('slickGoTo', 0, true);
				}, 200);
			}

			// Scroll functionality
			/*
			function next() {
				$('.next').click();
			}
			function prev() {
				$('.prev').click();
			}
			if ($slideshow.length) {
				$slideshow.scrollsteps({
					up: prev,
					down: next,
					left: prev,
					right: next,
					quietPeriodBetweenTwoScrollEvents: 200
				});
			}
			*/

		}

		// JUSTIFIED GALLERY =======================
		if (justified.length) {

			justified.justifiedGallery({
				rowHeight: bw * .16,
				lastRow: 'justify',
				margins: 7,
				border: 0,
				captions: false,
				refreshTime: 300
			});

		}

		// MASONRY =================================
		if (masonGrid.length) {

			if (masonGrid.hasClass('animategrid')) {
				
				masonGrid.each(function() {
					
					var gridId = $(this).data('id');
				
					new AnimOnScroll( document.getElementById( 'grid'+gridId ), {
						minDuration : 0.4,
						maxDuration : 0.7,
						viewportFactor : 0.2
					});
					
				});
					
				
			} else {
			
				var $grid = masonGrid.imagesLoaded(function() {
					$grid.masonry({
						itemSelector: '.cell',
						columnWidth: '.grid-sizer',
						gutter: '.gutter-sizer'
					});
				});
				
			}

		}

		// ISOTOPE FILTER GRID =====================
		if (isoGrid.length) {

			isoGrid.imagesLoaded(function() {

				isoGrid.isotope({
					itemSelector: '.cell',
					filter: '*'
					/*
					percentPosition: true,
					masonry: {
						columnWidth: '.grid-sizer',
						gutter: '.gutter-sizer'
					}
					*/
				});
				
			});

		}

// =================================================
// =================================================
// EVENTS ==========================================
// =================================================
// =================================================

		// BASIC PARALLAX
		
		function parallax() {
		
			function simpleParallax(intensity, element, opacity) {
				
				if (element.hasClass('noscroll')) {
					return false;
				}
				
				var opacityOff = $(window).height() / 2;
				
				$(window).scroll(function() {
					
					window.requestAnimationFrame(function () {
					
						var scrollTop = $(window).scrollTop();
						var imgPos = scrollTop / intensity + 'px';
						var imgOpacity = (opacityOff - scrollTop) / opacityOff;
						
						if (opacity === "yes") {
							element.css({'transform' : 'translateY(' + imgPos + ')', 'opacity' : imgOpacity});
						} else {
							element.css('transform', 'translate3d(0px, ' + imgPos + ', 0px)');
						}
						
					});
					
				});
			}
			
			if ($(window).width() > 768) {
				simpleParallax(-4, $('.hero .scrollHint'), "yes");
			}
			
		}
		
		parallax();

		// INVIEW PHOTO LOADING ====================
		$('img.loadmeview, .loadbgview').on('inview', function(event, isInView) {
			if (isInView) {
				loadImage($(this));
			}
		});

		// INVIEW AUTOPLAY VIDEO LOADING ===========
		$('.gridpage .vidHolder').on('inview', function(event, isInView) {
			var $this = $(this);
			if (isInView) {
				loadVideoLoop($this)
			} else {
				unloadVideoLoop($this);
			}
		});

		// DYNAMIC SRC LOADING OF VIDEOS
		function videoSizeLoad() {

			$('video.sizeload').each(function() {
				var $desktopVideo = $(this).data('hd');
				var $mobileVideo = $(this).data('sd');
				if ($(window).width() <= 768) {
					$(this).find('source').attr('src', $mobileVideo);
				} else {
					$(this).find('source').attr('src', $desktopVideo);
					}
				$(this)[0].load();
			});

		}

		videoSizeLoad();

		// VIDEO PLAY BUTTON CLICK =================
		$('#content').on('click', '.video .play', function() {
			var $video = $(this).parent();
			processVid($video, "yes");
			$video.addClass('playing');
		});

		// LIGHTBOX VIDEO PLAYER ==================
		$('body').on('click', 'a.videoPlayer', function(e) {
			e.preventDefault();
			var id = $(this).data('id');
			$.get( "/getItem.php", { id: id } )
			.done(function( data ) {
				$('#overlay .inner').html(data);
				$('#overlay').addClass('on');
			});
			
		});
		
		// VIDEO ROLLOVERS =========================
		gridVid.hover(hoverVideo, hideVideo);

		// OVERLAYS & MENU TOGGLE ==================
		$('.menuBtn').click(function() {
			$('body').toggleClass('menuOn');
		});

		body.on('click', '.openOverlay', function() {
			$('#overlay').addClass('on');
		});

		$('#overlay .closeoverlay').click(function() {
			$('#overlay').removeClass('on');
		});

		// RESIZE ==================================
		$win.resize(function() {
		
			fluid();
			
			// handle resizing of justified rows
			$('.ar-rows .row .cell').each(function() {

				var _this = $(this),
					container = _this.closest('.ar-rows'),
					rowsMargin = container.data('margin'),
					percW = _this.data('percW'),
					percH = _this.data('percH'),
					ratio = _this.data('ratio'),
					num = _this.data('numImages'),
					containerWidth = container.width() - (rowsMargin * (num - 1));
				
				_this.width(containerWidth * percW);

				_this.find('img').height(ratio * (containerWidth * percW));
				
			});
			
		});

		// "SMART" RESIZE (500ms delay) ============
		$win.smartresize(function() {

			if ($slideshow.length) {
				resizeVid($('.slick-current'));
			}
			
			resizeImageCell.each(function() {
				resizeImage($(this));
			});

			// Un-comment if you need a height-responsive Justified Gallery layout:
			/*
			if (justified.length) {
				resizeJustifiedGallery(reCalc);
			}
			*/

		});

		// SCROLL ==================================
		window.addEventListener("scroll", function() {

			st = window.pageYOffset || document.documentElement.scrollTop;

			// HEADER show/hide on scroll up/down
			/*
			if (st > lastScrollTop){
				$('header').addClass('shrink');
			} else {
				$('header').removeClass('shrink');
			}
			*/
			
			lastScrollTop = st;

		}, false);

		
	}); //end doc ready

})(jQuery, window, document);
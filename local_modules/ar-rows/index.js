export default function arRows(el) {
  for (let x = 0; x < el.length; ++x) {
    let element = el[x];
    let row = element.querySelectorAll(".row");
    for (let r = 0; r < row.length; ++r) {
      justifyRows(row[r], element);
    }
    if (element.classList.contains("last-row")) {
      lastRowCheck(element);
    }
  }
}

function lastRowCheck(el) {
  let rows = el.querySelectorAll(".row");
  let lastIndex = rows.length - 1;
  let lastRow = rows[lastIndex].querySelectorAll(".cell");
  let cellCount = lastRow.length;

  // if only 1 cell found we need to restrict width
  if (cellCount == 1) {
    let cell = lastRow[0];
    let img = cell.querySelector("img.photo");
    let cellRatio = cell.getAttribute("data-ratio");
    let newW = innerWidth * 0.3;
    cell.style.width = newW + "px";
    img.style.height = newW * cellRatio + "px";
  }
}

// Justified, row-based grid:
// ====================================
function justifyRows(row, container) {
  let rowsMargin = container.getAttribute("data-margin"),
    img = row.querySelectorAll("img"),
    cell = row.querySelectorAll(".cell"),
    fh = 0,
    total = 0,
    imgCount = 0,
    num = img.length;

  if (innerWidth <= 896) {
    rowsMargin = container.getAttribute("data-mobile-margin");
  }
  let deductMargin = rowsMargin * (num - 1);
  let containerWidth = container.offsetWidth - deductMargin;

  if (img.length) {
    fh = row.querySelector("img").getAttribute("data-height");
  }

  // step 1: collect aspect ratios, set new aspect ratios based on a uniform height (we'll use the first image as our baseline)
  for (let i = 0; i < num; ++i) {
    var _this = img[i],
      ow = _this.getAttribute("data-width"), // "original" width
      oh = _this.getAttribute("data-height"), // "original" height
      r = oh / ow, // aspect ratio 1.33
      wh = fh, // new "working" height (data-height attr of first image)
      ww = wh / r; // new "working" width

    // set new width, height, and ratio attributes, based on our "working" height
    _this.setAttribute("data-width", ww);
    _this.setAttribute("data-height", wh);
    _this.setAttribute("data-ratio", r);

    // add new width to our "total width" number.
    total += ww;

    imgCount++;

    if (imgCount == num) {
      setImageDimensions(total);
    }
  }

  function setImageDimensions(total) {
    for (let i = 0; i < num; ++i) {
      let _this = img[i],
        ww = _this.getAttribute("data-width"),
        r = _this.getAttribute("data-ratio"),
        wh = _this.getAttribute("data-height");

      // image's width percentage (of "total"), in decimal format:
      let percentage = ww / total;

      // image's width percentage, relative to the container's width:
      let relativeWidth = percentage * containerWidth,
        // set image's height, based on its aspect ratio:
        // newHeight = adjustedPercentage * r,
        newHeight = relativeWidth * r,
        // set a consistent height ratio value, relative to the container's width:
        heightRatio = newHeight / containerWidth;

      // set some things on the CELL level, so we can access them on resize
      let imgCell = _this.closest(".cell");
      imgCell.style.marginBottom = rowsMargin + "px";
      imgCell.style.width = containerWidth * percentage + "px";
      imgCell.setAttribute("data-ratio", r);
      imgCell.setAttribute("data-percW", percentage);
      imgCell.setAttribute("data-percH", heightRatio);
      imgCell.setAttribute("data-numImages", num);

      // set height of the image:
      _this.style.height = newHeight + "px";
    }
  }

  /* HANDLE WINDOW RESIZE */

  function reportWindowSize() {
    // handle resizing of AR Rows
    let arRowsCell = document.querySelectorAll(".ar-rows .row .cell");
    for (let i = 0; i < arRowsCell.length; ++i) {
      var _this = arRowsCell[i],
        container = _this.closest(".ar-rows"),
        rowsMargin = container.getAttribute("data-margin"),
        percW = _this.getAttribute("data-percW"),
        percH = _this.getAttribute("data-percH"),
        ratio = _this.getAttribute("data-ratio"),
        num = _this.getAttribute("data-numImages");

      if (innerWidth <= 896) {
        rowsMargin = container.getAttribute("data-mobile-margin");
      }

      let containerWidth = container.offsetWidth - rowsMargin * (num - 1);

      _this.style.width = containerWidth * percW + "px";
      let cellImg = _this.querySelector("img");
      cellImg.style.height = ratio * (containerWidth * percW) + "px";
    }

    let arRowsLastRows = document.querySelectorAll(".ar-rows.last-row");
    arRowsLastRows.forEach((arRowsLastRow) => {
      lastRowCheck(arRowsLastRow);
    });
  }

  window.addEventListener("resize", reportWindowSize);
} // end justifyRows()

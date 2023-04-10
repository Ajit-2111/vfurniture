const bar = document.getElementById("bar");
const close = document.getElementById("close");
const nav = document.getElementById("navbar");
let modalbgimg = "";
let imagesArray = [];
let inputbgimg = document.querySelector("#modalbgimg");

inputbgimg.addEventListener("change", () => {
  const file = inputbgimg.files;
  imagesArray.push(file[0]);
  displayImages();
});
function displayImages() {
  imagesArray.forEach((image, index) => {
    modalbgimg = URL.createObjectURL(image);
    console.log(URL.createObjectURL(image));
    document.querySelector(
      "#dragable-bg"
    ).style.backgroundImage = `url('${modalbgimg}')`;
  });
}

bar.addEventListener("click", () => {
  nav.classList.add("active");
});

close.addEventListener("click", () => {
  nav.classList.remove("active");
});

// ------------------------------
var elements = document.getElementsByClassName("pro"); //change furniture to pro
var modal = document.getElementById("myModal");
for (var i = 0; i < elements.length; i++) {
  elements[i].addEventListener(
    "click",
    () => (modal.style.display = "block"),
    false
  );
}

var span = document.getElementsByClassName("close")[0];

span.onclick = function () {
  modal.style.display = "none";
};
// window.onclick = function (event) {
//   if (event.target == modal) {
//     modal.style.display = "none";
//   }
// };

var Draggable = function (id) {
  var el = document.getElementById(id),
    isDragReady = false,
    dragoffset = {
      x: 0,
      y: 0,
    };
  this.init = function () {
    //only for this demo
    this.initPosition();
    this.events();
  };
  //only for this demo
  this.initPosition = function () {
    el.style.position = "absolute";
    el.style.top = "0";
    el.style.left = "0";
  };
  //events for the element
  this.events = function () {
    var self = this;
    _on(el, "mousedown", function (e) {
      isDragReady = true;
      //corssbrowser mouse pointer values
      e.pageX =
        e.pageX ||
        e.clientX +
          (document.documentElement.scrollLeft
            ? document.documentElement.scrollLeft
            : document.getElementById("dragable-bg").scrollLeft);
      e.pageY =
        e.pageY ||
        e.clientY +
          (document.documentElement.scrollTop
            ? document.documentElement.scrollTop
            : document.getElementById("dragable-bg").scrollTop);
      dragoffset.x = e.pageX - el.offsetLeft;
      dragoffset.y = e.pageY - el.offsetTop;
    });
    _on(document, "mouseup", function () {
      isDragReady = false;
    });
    _on(document, "mousemove", function (e) {
      if (isDragReady) {
        e.pageX =
          e.pageX ||
          e.clientX +
            (document.documentElement.scrollLeft
              ? document.documentElement.scrollLeft
              : document.getElementById("dragable-bg").scrollLeft);
        e.pageY =
          e.pageY ||
          e.clientY +
            (document.documentElement.scrollTop
              ? document.documentElement.scrollTop
              : document.getElementById("dragable-bg").scrollTop);
        // left/right constraint
        if (e.pageX - dragoffset.x < 0) {
          offsetX = 0;
        } else if (
          e.pageX - dragoffset.x + 102 >
          document.getElementById("dragable-bg").clientWidth
        ) {
          offsetX = document.getElementById("dragable-bg").clientWidth - 102;
        } else {
          offsetX = e.pageX - dragoffset.x;
        }

        // top/bottom constraint
        if (e.pageY - dragoffset.y < 0) {
          offsetY = 0;
        } else if (
          e.pageY - dragoffset.y + 102 >
          document.getElementById("dragable-bg").clientHeight
        ) {
          offsetY = document.getElementById("dragable-bg").clientHeight - 102;
        } else {
          offsetY = e.pageY - dragoffset.y;
        }

        el.style.top = offsetY + "px";
        el.style.left = offsetX + "px";
      }
    });
  };
  //cross browser event Helper function
  var _on = function (el, event, fn) {
    document.attachEvent
      ? el.attachEvent("on" + event, fn)
      : el.addEventListener(event, fn, !0);
  };
  this.init();
};

let furniture = document.querySelectorAll(".pro"); // change to pro

// CHANGED HERE

let dragableId = 0;

let changeDragable = function () {
  let div = document.createElement("div");
  div.classList.add("dragable");
  div.setAttribute("id", "dragable" + dragableId);
  div.setAttribute("class", "resizable");
  document.getElementById("dragable-bg").appendChild(div);
  var img = document.createElement("img");

  img.src = event.srcElement.src;
  div.appendChild(img);
  new Draggable("dragable" + dragableId);
  dragableId += 1;
};

for (var i = 0; i < furniture.length; i++) {
  furniture[i].addEventListener("click", changeDragable, false);
}

function toggleMenu(){
    var elem = document.querySelector(".menu-desktop");
    elem.classList.toggle("open_menu");

    var elem = document.querySelector(".menu-desktop ul");
    elem.classList.toggle("open_ul");

    var elem = document.querySelector(".menu_button");
    elem.classList.toggle("open");
    elem.classList.toggle("close");
    // alert("It worked!");
}
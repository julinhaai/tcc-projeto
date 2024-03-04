let menu = document.querySelector('#menu-icon');
let navbar = document.querySelector('#menu-icon');

menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('open');
}




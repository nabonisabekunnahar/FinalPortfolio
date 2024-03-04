
/*=============== show menu =============== */
const navMenu = document.getElementById('nav-menu'),
    navToggle = document.getElementById('nav-toggle'),
    navClose = document.getElementById('nav-close');

/*===== menu show =====*/
/*validates if constant exists */
if (navToggle) {
    navToggle.addEventListener('click', () => {
        navMenu.classList.add('show-menu');
    });
}

/*=============== remove menu mobile =============== */
const navLink = document.querySelectorAll('.nav__link');
function linkAction() {
    const navMenu = document.getElementById('nav-menu');

    //when we click on each link,we remove the show-menu class
    navMenu.classList.remove('show-menu');
}

navLink.forEach((n) => n.addEventListener('click', linkAction));

/*===== hide show =====*/
/*validates if constant exists */
if (navClose) {
    navClose.addEventListener('click', () => {
        navMenu.classList.remove('show-menu');
    });
}

/*=============== Active Link =============== */
const navlink = document.querySelectorAll('.nav__link');

function activeLink() {
    navlink.forEach((a) => a.classList.remove('active-link'));
    this.classList.add('active-link');
}

navlink.forEach((a) => a.addEventListener('click', activeLink));

/*=============== Background header =============== */
function scrollHeader() {
    const header = document.getElementById('header');
    //when the scroll is greater than 50 viewport height,add the
    //scroll-header class to header tag
    if (this.scrollY >= 50) header.classList.add('scroll-header');
    else header.classList.remove('scroll-header');
}

window.addEventListener('scroll', scrollHeader);


/*=============== Mixitup Filter =============== */
let mixerProjects = mixitup('.project__container', {
    selectors: {
        target: '.project__item',
    },
    Animation: {
        duration: 300,
    },
});

/*=============== Active work =============== */
const linkWork = document.querySelectorAll('.category__btn');

function activeWork() {
    linkWork.forEach((a) => a.classList.remove('active-work'));
    this.classList.add('active-work');
}

linkWork.forEach((a) => a.addEventListener('click', activeWork));

/*=============== Testimonials Swiper =============== */

/*=============== contact =============== */

function sendMail() {
    var params = {
        name: document.getElementById("name").value,
        email: document.getElementById("email").value,
        message: document.getElementById("message").value,
    };


    const serviceID = "service_kl49u1r";
    const templateID = "template_wt0jl7w";

    emailjs.send(serviceID, templateID, params)
        .then(
            res => {
                document.getElementById("name").value = "";
                document.getElementById("email").value = "";
                document.getElementById("message").value = "";
                console.log(res);
                alert("Your message sent successfully");
            }
        )
        .catch((err) => console.log(err));
}

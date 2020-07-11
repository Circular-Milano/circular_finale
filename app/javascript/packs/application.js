// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import { initUpdateNavbarOnScroll } from '../components/navbar';
import "../plugins/flatpickr"


import { initMapbox } from '../plugins/init_mapbox';
import 'bootstrap';

initMapbox();

initUpdateNavbarOnScroll();


const cat = () => {
    console.log("ciao")
    const items = document.querySelectorAll(".item")
    const btn = document.querySelectorAll(".btn-category")
    btn.forEach((button) => {
        console.log("ciao")
        button.addEventListener("click", event => {
        items.forEach((item) => {
            if ( event.currentTarget.value === "All" || item.dataset.category === event.currentTarget.value ) {
                item.style.display = "block"
            } else {
                item.style.display = "none"
            }
        })
        })
    })
}

cat();
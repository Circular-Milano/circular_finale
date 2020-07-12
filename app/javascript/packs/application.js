// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { categorySelector } from '../plugins/categorySelector';
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
import 'bootstrap';

initMapbox();
loadDynamicBannerText();
categorySelector();
initUpdateNavbarOnScroll();

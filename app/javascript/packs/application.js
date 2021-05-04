// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import 'select2/dist/css/select2.min.css'
import 'jquery-bar-rating/dist/themes/css-stars';
import 'aos/dist/aos.css';
import AOS from 'aos'

import { loadDynamicBannerText } from '../components/typed';
import { initSelect2 } from '../components/select2';
import { initStarRating } from '../components/star_ratings';


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  //loadDynamicBannerText();
  AOS.init();
  initSelect2();
  initStarRating();
});

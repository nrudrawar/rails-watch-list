// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save any kind of movies", "Have fun"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

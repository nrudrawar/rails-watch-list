// app/javascript/components/typed.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save any kind of movie", "Have fun"],
    typeSpeed: 50,
    loop: true,
    showCursor: false
  });
}

export { loadDynamicBannerText };


import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["MAKE MONEY RENTING YOUR STUFF", "Be Circular"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };


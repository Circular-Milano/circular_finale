import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["MAKE MONEY RENTING YOUR STUFF", "CREATE YOUR OWN RENTAL SHOP", "TRY NEW HOBBIES", "BE CIRCULAR"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };



import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const text = document.getElementById("banner-typed-text")
  if (text) {
  new Typed('#banner-typed-text', {
    strings: ["DON'T OWN THINGS YOU DON'T NEED...BE CIRCULAR", "MAKE MONEY RENTING YOUR STUFF", "CREATE YOUR OWN RENTAL SHOP", "TRY NEW HOBBIES", "PROTECT THE ENVIRONMENT", "BE CIRCULAR"],
    typeSpeed: 90,
    loop: true
  }); }
}

export { loadDynamicBannerText };

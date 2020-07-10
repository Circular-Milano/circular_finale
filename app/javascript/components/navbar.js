const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navbar.offsetHeight * 4) {
        navbar.classList.add('navbar-lewagon-black');
      } else {
        navbar.classList.remove('navbar-lewagon-black');
      }
    });
  }
}
// const initUpdateNavbarOnScroll = () => {
//   const navbar = document.querySelector('.navbar-lewagon');
//   if (navbar) {
//     window.addEventListener('scroll', () => {
//       if (window.scrollY >= window.innerHeight) {
//         navbar.classList.add('navbar-lewagon-black');
//       } else {
//         navbar.classList.remove('navbar-lewagon-black');
//       }
//     });
//   }
// }

export { initUpdateNavbarOnScroll };

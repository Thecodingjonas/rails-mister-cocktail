import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["SEE","BUY INGREDIENTS", "MAKE", "SIP --> Chug, get wasted"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };

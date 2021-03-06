import Swiper from "https://unpkg.com/swiper@8/swiper-bundle.esm.browser.min.js";
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.8.3/firebase-app.js";
import {
  getFirestore,
  collection,
  getDocs,
} from "https://www.gstatic.com/firebasejs/9.8.3/firebase-firestore.js";

const firebaseConfig = {
  apiKey: "AIzaSyDrGWogIJb8Zt-SF6zM9Tw1VdVtsdBr1Lo",
  authDomain: "hausiweb.firebaseapp.com",
  databaseURL: "https://hausiweb.firebaseio.com",
  projectId: "hausiweb",
  storageBucket: "hausiweb.appspot.com",
  messagingSenderId: "651355672556",
  appId: "1:651355672556:web:eb2425fdc2114f37d23ac9",
  measurementId: "G-HBWG75CFRH",
};
let map;

const getProperties = async () => {
  const app = initializeApp(firebaseConfig);
  const db = getFirestore(app);
  const docs = await getDocs(collection(db, "listing"));
  const properties = [];
  const cardsWrapper = document.getElementById("cards-wrapper");
  docs.forEach((doc) => {
    const property = { id: doc.id, data: doc.data() };
    properties.push(property);
    const newCard = createCard(property);
    console.log(newCard);
    cardsWrapper.appendChild(newCard);
    initSwiper(property);
  });
};

const createCard = (property) => {
  console.log("create card");
  const cardTemplate = document.getElementsByClassName("listing-card")[0];
  const newCard = cardTemplate.cloneNode(true);
  newCard.setAttribute("id", property.id);
  newCard.style.display = "initial";
  newCard.childNodes[1].childNodes[0].innerText = property.data.nombre;
  newCard.childNodes[1].childNodes[1].childNodes[0].childNodes[0].childNodes[1].innerText =
    property.data.tipoComercializacion;
  newCard.childNodes[1].childNodes[1].childNodes[0].childNodes[1].childNodes[0].innerText = `$ ${
    property.data.precioVenta === 0
      ? property.data.precioRenta
      : property.data.precioVenta
  }`;
  newCard.childNodes[1].childNodes[2].childNodes[0].childNodes[1].innerText =
    property.data.habitaciones;
  newCard.childNodes[1].childNodes[2].childNodes[2].childNodes[1].innerText =
    property.data.banos;
  newCard.childNodes[1].childNodes[2].childNodes[4].childNodes[1].innerText =
    property.data.parqueaderos;
  newCard.childNodes[1].childNodes[2].childNodes[6].childNodes[1].innerText =
    property.data.areaTotal;
  newCard.childNodes[1].childNodes[3].childNodes[0].innerText =
    property.data.sectores;
  createSwiper(newCard, property);
  createMarker(property);
  console.log("a", newCard);
  return newCard;
};

const createSwiper = (newCard, property) => {
  const newSwiper = newCard.childNodes[0].childNodes[0];
  const swiperWrapper = newSwiper.childNodes[0];
  const swiperPrev = newSwiper.childNodes[1];
  const swiperNext = newSwiper.childNodes[2];
  const swiperSlide = swiperWrapper.childNodes[0];
  newSwiper.classList.add(`swiper${property.id}`);
  swiperPrev.style.color = "white";
  swiperNext.style.color = "white";
  const photoGallery = property.data.photoGallery;
  Object.keys(photoGallery).forEach((key) => {
    const newSwiperSlide = swiperSlide.cloneNode(true);
    swiperSlide.remove();
    const imageUrl = photoGallery[key].replace(/\s/g, "%20");
    newSwiperSlide.setAttribute("data-background", imageUrl);
    newSwiperSlide.style.background = "white";
    newSwiperSlide.style.display = "block";
    swiperWrapper.append(newSwiperSlide);
  });
};

const initSwiper = (property) => {
  new Swiper(`.swiper${property.id}`, {
    cssMode: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
    },
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazy: true,
  });
};

const initMap = () => {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 15,
    center: new google.maps.LatLng(-0.208946, -78.507751),
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    gestureHandling: "greedy",
    streetViewControl: false,
    fullscreenControl: false,
    mapTypeControl: false,
    mapId: "7165bcdc8480f69d",
  });
};

const createMarker = (property) => {
  console.log("crate marker");
  const latitude = parseFloat(property.data.ubicacion.split(",")[0]);
  const longitude = parseFloat(property.data.ubicacion.split(",")[1].trim());
  const latlng = new google.maps.LatLng(latitude, longitude);
  const svgMarker = {
    path: "M0,101.08h404.308L202.151,303.229L0,101.08z",
    fillColor: "#282e38",
    fillOpacity: 1.0,
    strokeWeight: 0,
    rotation: 0,
    scale: 0.03,
    anchor: new google.maps.Point(0, 0),
  };
  const marker = new markerWithLabel.MarkerWithLabel({
    position: latlng,
    map: map,
    url: property.id,
    icon: svgMarker,
    labelContent:
      property.data.precioVenta === 0
        ? property.data.precioRenta
        : property.data.precioVenta,
    labelAnchor: new google.maps.Point(-8, -12),
    labelClass: "price-label",
  });
};

await getProperties();
initMap();
window.initMap = initMap;

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
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);
const docs = await getDocs(collection(db, "listing"));
let properties = [];
const cardsWrapper = document.getElementById("cards-wrapper");
const cardTemplate = document.getElementsByClassName("listing-card")[0];
docs.forEach((doc) => {
  const property = { id: doc.id, data: doc.data() };
  const newCard = cardTemplate.cloneNode(true);
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
  newCard.setAttribute("id", property.id);
  newCard.style.display = "initial";
  newCard.childNodes[1].childNodes[0].innerText = property.data.nombre;
  newCard.childNodes[1].childNodes[1].childNodes[0].childNodes[0].childNodes[1].innerText =
    property.data.tipoComercializacion;
  newCard.childNodes[1].childNodes[1].childNodes[0].childNodes[1].childNodes[0].innerText = `$ ${property.data.precioVenta}`;
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
  cardsWrapper.appendChild(newCard);
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
});

(() => {
  // src/cms/populate-external-data/index.ts
  window.fsAttributes = window.fsAttributes || [];
  window.fsAttributes.push([
    "cmsfilter",
    async (filtersInstances) => {
      const [filtersInstance] = filtersInstances;
      const { listInstance } = filtersInstance;
      const [firstItem] = listInstance.items;
      const itemTemplateElement = firstItem.element;
      const products = await fetchProducts();
      listInstance.clearItems();
      const newItems = products.map((product) =>
        createItem(product, itemTemplateElement)
      );
      await listInstance.addItems(newItems);
      const filterTemplateElement = filtersInstance.form.querySelector(
        '[data-element="filter"]'
      );
      if (!filterTemplateElement) return;
      const filtersWrapper = filterTemplateElement.parentElement;
      if (!filtersWrapper) return;
      filterTemplateElement.remove();
      const categories = collectCategories(products);
      for (const category of categories) {
        const newFilter = createFilter(category, filterTemplateElement);
        if (!newFilter) continue;
        filtersWrapper.append(newFilter);
      }
      filtersInstance.storeFiltersData();
    },
  ]);
  var fetchProducts = async () => {
    try {
      const response = await fetch("https://fakestoreapi.com/products");
      const data = await response.json();
      return data;
    } catch (error) {
      return [];
    }
  };
  var createItem = (product, templateElement) => {
    const newItem = templateElement.cloneNode(true);
    const image = newItem.querySelector('[data-element="image"]');
    const title = newItem.querySelector('[data-element="title"]');
    const category = newItem.querySelector('[data-element="category"]');
    const description = newItem.querySelector('[data-element="description"]');
    if (image) image.src = product.image;
    if (title) title.textContent = product.title;
    if (category) category.textContent = product.category;
    if (description) description.textContent = product.description;
    return newItem;
  };
  var collectCategories = (products) => {
    const categories = /* @__PURE__ */ new Set();
    for (const { category } of products) {
      categories.add(category);
    }
    return [...categories];
  };
  var createFilter = (category, templateElement) => {
    const newFilter = templateElement.cloneNode(true);
    const label = newFilter.querySelector("span");
    const radio = newFilter.querySelector("input");
    if (!label || !radio) return;
    label.textContent = category;
    radio.value = category;
    return newFilter;
  };
})();

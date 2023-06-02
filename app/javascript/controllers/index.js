// import { Application } from "@hotwired/stimulus";

// // TODO: Import the Stimulus Controller here
// import PriceCountController from "../controllers/price_count_controller.js";
// import MapController from "../controllers/map_controller.js";
// // import AddressAutocompleteController from "./address_autocomplete_controller.js";


// window.Stimulus = Application.start();

// Stimulus.register("price-count", PriceCountController);
// Stimulus.register("map", MapController);
// // Stimulus.register("address",  AddressAutocompleteController);

// Import and register all your controllers from the importmap under controllers/*
import { application } from "controllers/application"
// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from “@hotwired/stimulus-loading”
// lazyLoadControllersFrom(“controllers”, application)


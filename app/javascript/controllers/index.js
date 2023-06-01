import { Application } from "@hotwired/stimulus";

// Import and register all your controllers from the importmap under controllers/*
// import { application } from "controllers/application";

// // Eager load all controllers defined in the import map under controllers/**/*_controller
// import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
// eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

// TODO: Import the Stimulus Controller here
import PriceCountController from "../controllers/price_count_controller.js";

window.Stimulus = Application.start();
// TODO: Register your Stimulus Controller below
Stimulus.register("price-count", PriceCountController);

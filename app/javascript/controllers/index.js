import { Application } from "@hotwired/stimulus";

// TODO: Import the Stimulus Controller here
import PriceCountController from "../controllers/price_count_controller.js";
import MapController from "../controllers/map_controller.js";
import AddressAutocompleteController from "./address_autocomplete_controller.js";


window.Stimulus = Application.start();

Stimulus.register("price-count", PriceCountController);
Stimulus.register("map", MapController);
Stimulus.register("address",  AddressAutocompleteController);

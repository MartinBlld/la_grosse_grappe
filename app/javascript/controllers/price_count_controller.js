import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="price-count"
export default class extends Controller {

  static targets = ["counter"];


  updateYearCounter(event) {
   const YearCounter = event.target.value;
    console.log(YearCounter)
  }

  updateStockCounter(event){
    const StockCounter = event.target.value;
    console.log(StockCounter)
    return
    }

  updatePriceCounter(event){
    // if (condition) {

    // } else {

    // }
  YearCounter = this.updateYearCounter(event)
  StockCounter = this.updateStockCounter(event)
  this.counterTarget.innerHTML('<p> <%= ${this.StockCounter * this.YearCounter} * grapveine.parcel_price %> </p>')
}

  }

import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="price-count"
export default class extends Controller {

  static targets = ["parcelQuantityInput", "yearsInput", "priceHolder"];
  static values = { price: Number }


  updatePrice() {

    const years = this.yearsInputTarget.value
    const parcelQuantity = this.parcelQuantityInputTarget.value
    const totalValue = this.#totalValue(years, parcelQuantity)

    this.#setPriceValue(totalValue)
    }

    #setPriceValue(value) {

    this.priceHolderTarget.innerText = value
    }

    #totalValue(years, parcelQuantity) {
      if (years == 0) {
        return (1)*(parcelQuantity) * this.priceValue
      } else if (parcelQuantity == 0)
        return (years)*(1) * this.priceValue
      else {
    return (years)*(parcelQuantity) * this.priceValue
    }
  }

}






//   updateYearCounter(event) {
//    const YearCounter = event.target.value;
//     console.log()
//   }

//   updateStockCounter(event){
//     const StockCounter = event.target.value;
//     console.log(StockCounter)
//     return
//     }

//   updatePriceCounter(event){
//     // if (condition) {

//     // } else {

//     // }
//   YearCounter = this.updateYearCounter(event)
//   StockCounter = this.updateStockCounter(event)
//   this.counterTarget.innerHTML('<p> <%= ${this.StockCounter * this.YearCounter} * grapveine.parcel_price %> </p>')
// }

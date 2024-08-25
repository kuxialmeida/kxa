import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-producs"
export default class extends Controller {
  static targets = ["form", "input", "product"]

  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
    console.log(this.listTarget)
  }
}

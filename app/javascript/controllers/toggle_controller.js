import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-controller.js"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("togglecontroller")
    console.log(this.togglableElementTarget)
  }

  fire(event) {
      event.preventDefault()
    this.togglableElementTarget.classList.toggle("d-none");
  }
}

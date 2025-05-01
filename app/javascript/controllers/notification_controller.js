import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification"
export default class extends Controller {
    connect() {
        this.element.classList.add("show")
    }

    closeMessage() {
        this.element.classList.remove("show")

        setTimeout(() => {
            this.element.remove()
        }, 300)
    }
}
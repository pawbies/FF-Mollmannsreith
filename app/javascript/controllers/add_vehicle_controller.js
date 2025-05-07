import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "form" ];

    show_form() {
        this.formTarget.style = "block";
    }
}

import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  connect() {
    // this.element.textContent = "Hello World!"
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end(bind(this))
    })
  }

  end(event) {
    console.log(event)
  }
}



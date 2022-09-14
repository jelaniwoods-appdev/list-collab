import { Controller } from "@hotwired/stimulus"
import "@hotwired/turbo-rails"
import Sortable from "sortablejs"

export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    console.log(event)
    let id = event.item.dataset.id
    let data = new FormData()
    data.append("position", event.newIndex  + 1)

    // Rails.ajax({
    //   url: this.data.get("url").replace(":id", id),
    //   type: "PATCH",
    //   data: data
    // })
    console.log(data.values())
    fetch(this.data.get("url").replace(":id", id), {
      method: "PATCH", 
      headers: {
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content,
      },
      body: data,
    });
  }
}



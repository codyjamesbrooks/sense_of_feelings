import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [ 'source' ]
  
  copyText() {
    navigator.permissions.query({ name: "clipboard-write"}).then(result => {
      if (result.state == "granted" || result.state == "prompt") {
        navigator.clipboard.writeText(this.sourceTarget.innerHTML)
      }
    })
  }
}
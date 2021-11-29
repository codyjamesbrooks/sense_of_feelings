import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static classes = [ 'editable' ]
  static targets = [ 'display', 'edit' ]
  
  editTitle() {
    this.editTarget.classList.remove('hidden')
    this.displayTarget.classList.add('hidden')
  }
}
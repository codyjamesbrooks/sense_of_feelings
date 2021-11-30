import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select-interface"
export default class extends Controller {
  static classes = [ 'selected' ]
  static targets = [ 'parent' , 'option' ]

  initialize() {
    this.labelInterfaceOptions()
    this.highlightSelectedTarget()
  }

  labelInterfaceOptions() {
    this.optionTargets.forEach((element, index) => {
      element.querySelector('.label').innerHTML = this.parentTarget.options[index].text
    })
  }

  selectOption(event) {
    let newValue = event.target.getAttribute('data-value')
    this.setFormSelected(newValue); 
    this.highlightSelectedTarget();
  }

  highlightSelectedTarget() {
    this.optionTargets.forEach((element, index) => {
      if (index == this.parentTarget.value) {
        element.classList.add('selected')
      }
    })
  }  

  setFormSelected(newValue) {
    this.removeCurrentSelection()
    this.parentTarget.value = newValue;
  }

  removeCurrentSelection() {
    this.optionTargets.forEach((element) => {
      element.classList.remove(this.selectedClass)
    })
  }
}
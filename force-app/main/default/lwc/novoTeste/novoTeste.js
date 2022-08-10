import { LightningElement } from 'lwc';
export default class Form extends LightningElement {

    handleChange(evt) {
        let counter = this.getElementById("counter");
        let maxlength = this.getAttribute("maxlength");

        counter.textContent = maxlength - this.value.length;
    }
}
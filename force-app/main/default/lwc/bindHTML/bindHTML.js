import { LightningElement, track, api } from 'lwc';

export default class InputRichText extends LightningElement {
    @api value;
    @track value;
    resultValue;

    handleChange(event){
        let maxlength = this.getAttribute("maxlength");
        this.myVal = event.target.value.length;
        let p = document.querySelector('p').innerText = (maxlength - myVal);
    }

    /*contagem(){
        this.resultValue = maxlength - myVal;
    }*/
}
/*import { LightningElement,track, api } from 'lwc';

export default class InputText extends LightningElement {
    /*value2;
    counter2;

    value2(event){
        counter2 = this.getElementById("counter2");
        let maxlength = this.getAttribute("maxlength");
        this.counter2.textContent = maxlength - this.value2.length;
    }
    @api value;
    @track value;

    itemsChange(event){
        let counter = this.getElementById("counter");
        let maxlength = this.getAttribute("maxlength");
        counter.textContent = maxlength - this.value.length;
    }


}
import { LightningElement } from 'lwc';
export default class Form extends LightningElement {

    handleChange(evt) {
        let counter = this.getElementById("counter");
        let maxlength = this.getAttribute("maxlength");

        counter.textContent = maxlength - this.value.length;
    }
}



<template>
    <lightning-input-rich-text
    type="text" value={value} onchange={handleChange} maxlength="100">
</lightning-input-rich-text>
    <span id="counter">100</span>
</template>*/
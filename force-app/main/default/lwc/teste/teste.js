import { LightningElement, track, api } from 'lwc';

export default class InputRichText extends LightningElement {
    @api value;
    @track value;
    resultValue;

    handleChange(event){
        let maxlength = this.getAttribute("maxlength");
        this.myVal = event.target.value.length;
    }
    contagem(){
        this.resultValue = maxlength - myVal;
    }
}
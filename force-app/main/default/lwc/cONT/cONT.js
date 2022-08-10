import { LightningElement, track } from 'lwc';
const max = 255;
export default class CalculatorInLwc extends LightningElement {
    @track myVal;
    resultValue;


    handleChange(event)
    {
        this.myVal = event.target.value.length;
        //this.maxlength = this.getAttribute("maxlength");
    }


    contagem(){
        this.resultValue = max - this.myVal;
    }

}
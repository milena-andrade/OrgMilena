import { LightningElement } from 'lwc';

export default class ConditionallyRenderElements extends LightningElement {
    myValue="Silencio milena esta fazendo um LWC";
    showMe = false;
    handleChange(event){
        this.showMe = event.target.checked;
    }

}
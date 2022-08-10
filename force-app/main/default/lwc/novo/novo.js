import { LightningElement,api,wire} from 'lwc';
import { getRecord, getFieldValue} from 'lightning/uiRecordApi';

export default class ProgressBar extends LightningElement {

    @api recordId;
    targetField;
    progressField;
    @wire(getRecord, { recordId: '$recordId'})
    object;

    get Name(){
        return getFieldValue(this.object.data, 'Name');
    };

    get Percentage(){
        let p = getFieldValue(this.object.data, this.progressField);
        let t = getFieldValue(this.object.data, this.targetField);
        let perc = p - t;
        if(p > 100){
            return 100;
        }
        return round(perc,2);
    }

    handleTargetChange(event) {
        this.targetField = event.detail.value;
    }
    handleProgressChange(event) {
        this.progressField = event.detail.value;
    }
}
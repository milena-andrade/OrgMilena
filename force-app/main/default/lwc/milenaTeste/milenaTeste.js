import { LightningElement ,track,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';//DISPLAY TOAST MESSAGE
export default class DEFTECH extends LightningElement {
    @api recordId;
    @track cardTitle='New Opportunity';
    caracteres="";
    
    handleChange(event) {
      let length = event.target.value.length;
      this.caracteres = `${length} de 65`;
    }


    handleSuccess (){//===>JUST COPY AND PASTE AS IT IS
        const evt = new ShowToastEvent({
            title: "Success!",
            message: "Congrats, Opportunity record has been successfully",
            variant: "success",
        });

        this.dispatchEvent(evt);
    }

}
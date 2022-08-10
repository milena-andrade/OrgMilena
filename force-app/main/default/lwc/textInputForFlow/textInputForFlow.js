import { LightningElement, api } from "lwc";
import { FlowAttributeChangeEvent } from "lightning/flowSupport";

export default class TextInputForFlow extends LightningElement {
  @api fieldName;
  @api characterLimit = 255;
  @api fieldValue = "";

  errorMessage = "";
  result="";

  renderedCallback(){
    this.validate();
  }

  get errorMessageLength() {
    return this.errorMessage.length;
  }
  set errorMessageLength(event) {
    return this.errorMessage.length;
  }

  get isErrorMessage() {
    return this.errorMessageLength > 0;
  }
  set isErrorMessage(event) {
    return this.errorMessageLength > 0;
  }

  handleChange(event) {
    let length = event.target.value.length;

    const attributeChangeEvent = new FlowAttributeChangeEvent(
      "fieldValue",
      event.target.value
    );

    this.dispatchEvent(attributeChangeEvent);

    if (length > this.characterLimit) {

      this.errorMessage = `Your answer must be less than 255 characters. Your character counts is ${length}`;
      this.result = {length};
    } else if (
      (length <= this.characterLimit) &
      (length > this.characterLimit - 25)
    ) {
        this.result = {length};
      let left = this.characterLimit - length;
      this.errorMessage = `You have ${left} of ${this.characterLimit} characters remaining`;
      this.fieldValue = event.target.value;
    } else {
        this.result = {length};
      this.errorMessage = "";
      this.fieldValue = event.target.value;
    }

  }

  @api
  validate() {
    let length = this.fieldValue.length;
    console.log(`length: ${length}`);
    if ((length <= this.characterLimit) & (length > 0)) {
      return { isValid: true };
    } else if (length === 0 || this.fieldValue === null) {
      return {
        isValid: false,
        errorMessage: "This field is required"
      };
    }
    return {
      isValid: false,
      errorMessage: "Your answer must be less than 255 characters"
    };
  }
}
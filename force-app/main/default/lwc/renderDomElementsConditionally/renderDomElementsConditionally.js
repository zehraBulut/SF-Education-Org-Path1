import { LightningElement } from 'lwc';

export default class RenderDomElementsConditionally extends LightningElement {

display=true;
firstName;
lastName;
grade;
rollNumber;




firstNameHandler (event){
    this.firstName=event.target.value;
}

lastNameHandler(event){
    this.lastName=event.target.value;
}


gradeHandler (event){
    this.grade=event.target.value;
}

rollNhandler (event){
    this.rollNumber=event.target.value;
}
saveButtonHandler (){
    this.display=false;
}









}
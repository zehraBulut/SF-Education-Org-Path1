import { LightningElement } from 'lwc';

export default class ForPractic extends LightningElement {


firstName;
lastName;

FNH(event){
    this.firstName=event.target.value;
}

LNH(event){
    this.lastName=event.target.value;
}


get fullName (){
    return `${this.firstName} ${this.lastName}`;
}
}
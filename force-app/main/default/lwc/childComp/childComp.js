import { LightningElement, api } from 'lwc';

export default class ChildComp extends LightningElement {


myTitle;

@api //map.liyor title ları
get title(){
    return this.myTitle
}


set title (value){
 this.myTitle=value.toUpperCase();
 this.setAttribute('title', this.myTitle);
}

}
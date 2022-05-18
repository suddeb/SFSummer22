import { LightningElement, track, wire } from 'lwc';
import getAccounts from '@salesforce/apex/GetAccountDataController.getAccounts';


export default class DisplayAccountDetails extends LightningElement {
    @track columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Id', fieldName: 'Id'}
    ];
   @track accountList;

   //Method 2
   @wire (getAccounts) wiredAccounts({data,error}){
        if (data) {
             this.accountList = data;
        console.log(data); 
        } else if (error) {
        console.log(error);
        }
   }
}
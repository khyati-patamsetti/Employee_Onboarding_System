import { LightningElement, api, wire, track } from 'lwc';
import getTasks from '@salesforce/apex/OnboardingHandler.getTasks';

export default class EmployeeTasks extends LightningElement {
    @api recordId;
    @track tasks = [];
    columns = [
        { label: 'Task Name', fieldName: 'Name' },
        { label: 'Status', fieldName: 'Status__c' },
        { label: 'Due Date', fieldName: 'Due_Date__c', type: 'date' }
    ];

    @wire(getTasks, { employeeId: '$recordId' })
    wiredTasks({ error, data }) {
        if (data) {
            this.tasks = data;
        } else if (error) {
            console.error(error);
        }
    }
}

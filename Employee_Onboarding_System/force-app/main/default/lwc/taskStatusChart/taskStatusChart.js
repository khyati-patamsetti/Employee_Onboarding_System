import { LightningElement, api } from 'lwc';
import { loadScript } from 'lightning/platformResourceLoader';
import chartJs from '@salesforce/resourceUrl/chartJs';
import getTaskStatusSummary from '@salesforce/apex/OnboardingHandler.getTaskStatusSummary';

export default class TaskStatusChart extends LightningElement {
    @api recordId;
    chart;

    renderedCallback() {
        if (this.chart) return;
        loadScript(this, chartJs)
            .then(() => this.initializeChart())
            .catch(error => console.error(error));
    }

    initializeChart() {
        getTaskStatusSummary({ employeeId: this.recordId })
            .then(data => {
                const ctx = this.template.querySelector('canvas').getContext('2d');
                this.chart = new Chart(ctx, {
                    type: 'pie',
                    data: {
                        labels: Object.keys(data),
                        datasets: [{
                            data: Object.values(data),
                            backgroundColor: ['#008000','#FFA500','#FF0000','#0000FF','#800080','#00FFFF','#FFFF00']
                        }]
                    }
                });
            })
            .catch(error => console.error(error));
    }
}

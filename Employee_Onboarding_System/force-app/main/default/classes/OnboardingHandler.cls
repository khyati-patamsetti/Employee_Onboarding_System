public with sharing class OnboardingHandler {

    public static void assignOnboardingTasks(List<Employee__c> employees){
        List<Onboarding_Task__c> tasks = new List<Onboarding_Task__c>();

        // Create Employee Records for Master-Detail
        Map<Id, Employee_Record__c> empRecMap = new Map<Id, Employee_Record__c>();
        List<Employee_Record__c> recsToInsert = new List<Employee_Record__c>();
        for(Employee__c emp : employees){
            Employee_Record__c rec = new Employee_Record__c(
                Name = emp.FirstName__c + ' ' + emp.Last_Name__c
            );
            recsToInsert.add(rec);
            empRecMap.put(emp.Id, rec);
        }
        insert recsToInsert;

        // Create Onboarding Tasks
        for(Employee__c emp : employees){
            Onboarding_Task__c task = new Onboarding_Task__c(
                Assigned_To__c = emp.Id, // Employee__c Id for Master-Detail
                Employee_Record__c = empRecMap.get(emp.Id).Id,
                Name = emp.FirstName__c + ' ' + emp.Last_Name__c + ' Onboarding Task',
                Status__c = 'Pending' // exact picklist value
            );
            tasks.add(task);
        }

        if(!tasks.isEmpty()){
            insert tasks;
        }
    }
@AuraEnabled(cacheable=true)
public static Map<String, Integer> getTaskStatusSummary(Id employeeId) {
    Map<String, Integer> statusMap = new Map<String, Integer>();
    List<AggregateResult> results = [
        SELECT Status__c, COUNT(Id) 
        FROM Onboarding_Task__c
        WHERE Employee_Record__c = :employeeId
        GROUP BY Status__c
    ];
    for (AggregateResult ar : results) {
        String status = (String) ar.get('Status__c');
        Integer count = (Integer) ar.get('expr0'); // COUNT(Id) result is 'expr0' by default
        statusMap.put(status, count);
    }
    return statusMap;
}
@AuraEnabled(cacheable=true)
public static List<Onboarding_Task__c> getTasks(Id employeeId) {
    return [
        SELECT Id, Name, Status__c, Due_Date__c
        FROM Onboarding_Task__c
        WHERE Employee_Record__c = :employeeId
    ];
}


}
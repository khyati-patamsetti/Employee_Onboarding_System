Phase 3 — Data Modeling & Relationships

Project: Employee Onboarding System (Salesforce)
Context: Define the data structure for the onboarding solution, including standard and custom objects, fields, relationships, and layouts. This ensures the org has a solid data foundation before building automation, flows, and dashboards.

1. Standard & Custom Objects

Standard Objects:

User → HR staff, managers, and system users.

Contact → Optional if employees are linked to external contacts.

Custom Objects:

Employee__c → Main record for each employee.

Onboarding_Task__c → Individual tasks for new hires.

Document__c → Required documents (e.g., NDA, ID Proof).

Training__c → Training sessions for employees.

Department__c → Department for each employee.

Employee_Training__c → Junction object for many-to-many between Employee and Training.

2. Fields

Employee__c (Custom Object) example fields:

Name (Standard)

Email (Text)

Job Title (Picklist: Full-Time, Part-Time, Intern)

Department (Lookup → Department__c)

Start Date (Date)

Onboarding Status (Picklist: Not Started, In Progress, Completed)

Onboarding_Task__c example fields:

Task Name (Text)

Assigned To (Lookup → Employee__c)

Due Date (Date)

Status (Picklist: Pending, Completed)

Document__c example fields:

Document Name (Text)

Employee (Master-Detail → Employee__c)

Document Type (Picklist: ID, NDA, Certificate)

Submission Status (Picklist: Not Submitted, Submitted, Approved)

Training__c example fields:

Training Name (Text)

Training Date (Date)

Duration (Number)

3. Record Types

Employee__c:

Record Types → Full-Time, Part-Time, Intern

Each type can have different picklist values and page layouts.

Onboarding_Task__c:

Optional record types: IT Setup Task, HR Paperwork, Training Task

4. Page Layouts

Employee Page Layout: Sections for Personal Info, Department Info, Onboarding Status, Assigned Tasks, Documents

Onboarding Task Layout: Task Details, Employee Lookup, Status

Document Layout: Document Details, Employee Lookup, Submission Status

5. Compact Layouts

Employee Highlight Panel: Name, Job Title, Start Date, Onboarding Status

Task Highlight Panel: Task Name, Status, Due Date

Document Highlight Panel: Document Name, Submission Status

6. Schema Builder

Visualize all objects and relationships:

Employee__c → Master-Detail → Onboarding_Task__c

Employee__c → Master-Detail → Document__c

Employee__c ↔ Training__c → Junction Object Employee_Training__c

Employee__c → Lookup → Department__c

7. Lookup vs Master-Detail vs Hierarchical Relationships

Master-Detail:

Onboarding_Task__c → Employee__c (task cannot exist without employee)

Document__c → Employee__c (document belongs to employee)

Lookup:

Employee__c → Department__c (employee belongs to a department, but department can exist without employees)

Hierarchical:

User → User (Manager field to track reporting structure)

8. Junction Objects

Employee_Training__c:

Master-Detail → Employee__c

Master-Detail → Training__c

Allows many employees to be assigned to multiple trainings
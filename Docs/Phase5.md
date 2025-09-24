Phase 5: Apex Programming (Developer)
Objectives

Add backend automation and processing using Apex.

Implement trigger framework for Employee__c.

Use Queueable, Batch, and Scheduled Apex for background jobs.

Log errors in a reusable way.

Achieve ≥75% test coverage with proper unit tests.

Steps

Step 1 — Trigger Framework

Create a trigger on Employee__c.

Move all business logic into a handler class (EmployeeHandler).

Use:

Before Insert → set default status (Not Started) and default due date.

After Insert → queue welcome email job.

After Update → detect status change to At Risk and queue reminder job.

Step 2 — Error Logging

Create a custom object Error_Log__c.

Add fields:

Context__c (Text)

Error_Message__c (Long Text Area)

Stack_Trace__c (Long Text Area)

Related_Record_Id__c (Text)

Logged_Date__c (DateTime)

Build a utility class (ErrorLogger) to insert error records from try/catch blocks.

Step 3 — Queueable Apex (Async Jobs)

Create WelcomeEmailJob to send welcome emails to new hires.

Create ReminderQueueable to send reminders for employees flagged as “At Risk” or overdue.

Enqueue these jobs from the handler class using System.enqueueJob().

Step 4 — Scheduled Apex

Create OnboardingReminderScheduler.

Run it daily to check for employees with overdue end dates.

Scheduler enqueues ReminderQueueable for those employees.

Schedule the job via Setup → Apex Classes → Schedule Apex.

Step 5 — Batch Apex

Create ArchiveOldOnboarding batch job.

Archive or delete old onboarding logs (e.g., older than 1 year).

Run manually or schedule it monthly.

Step 6 — Exception Handling

Wrap all trigger, queueable, batch, and scheduled logic in try/catch.

On error → call ErrorLogger.log() with context + details.

This ensures no silent failures and centralized error tracking.

Step 7 — Test Classes

Build one consolidated test class: EmployeePhase5Tests.

Cover scenarios:

Insert new employee → welcome email queued.

Update employee to “At Risk” → reminder queued.

Scheduler executes and finds overdue employees.

Batch archives old logs.

ErrorLogger creates log entries.

Confirm org-wide code coverage ≥75%.

Step 8 — Run & Verify Tests

Open Developer Console → Test → New Run.

Select EmployeePhase5Tests.

Run tests and verify all pass.

Check Test Coverage tab for ≥75%.

Step 9 — Security & Sharing

Go to Object Manager → Error Log → Object Settings.

Profiles (System Admin, HR Manager): Read + Create access.

Sharing Settings: Set to Private (recommended).

Step 10 — Deployment

Use Change Sets (classic) or SFDX (recommended).

Include:

Apex Classes

Triggers

Custom Object Error_Log__c

Any custom fields

Validate and run tests during deployment.

Step 11 — Monitoring & Maintenance

App Launcher → Error Log tab → monitor runtime errors.

Setup → Apex Jobs → view queued, scheduled, and batch jobs.

Setup → Apex Classes → review job history and errors.
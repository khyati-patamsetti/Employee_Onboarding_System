Phase 8: Data Management & Deployment
1 Data Import Wizard

Purpose: Simple tool for importing small datasets (≤50,000 records).

Best for: CSV import of Accounts, Contacts, Leads, Custom Objects.

Steps:

Go to Setup → Data Import Wizard.

Select the object (e.g., Employee__c).

Upload a CSV file.

Map CSV columns to Salesforce fields.

Start Import → Salesforce shows progress + success/failure.

2 Data Loader

Purpose: Advanced import/export tool for large datasets (>50,000 records).

Best for: Bulk inserts, updates, deletes, upserts.

Steps:

Download Data Loader from Setup.

Login with Salesforce credentials (use security token if required).

Choose operation: Insert / Update / Upsert / Export / Delete.

Select object (e.g., Onboarding_Task__c).

Upload CSV with data.

Run → Check success & error logs.

3 Duplicate Rules

Purpose: Prevent users from creating duplicate records.

Steps:

Setup → Duplicate Rules.

Create New Rule → Select object (Employee__c).

Define Matching Rule (e.g., Email = must be unique).

Choose action: Block or Allow with Alert.

Activate the rule.

4 Data Export & Backup

Purpose: Backup Salesforce data.

Options:

Data Export Service (weekly/monthly export from Setup).

Data Loader Export (manual CSV export).

Steps:

Setup → Data Export.

Choose objects to export.

Salesforce emails a download link with .zip files.

5 Change Sets

Purpose: Move metadata (not data) from Sandbox → Production.

Steps:

Sandbox → Outbound Change Set → Add components (Apex classes, Objects, Fields, LWCs).

Upload to Production.

In Production → Inbound Change Sets → Validate → Deploy.

6 Unmanaged vs Managed Packages

Unmanaged Packages:

Used for deployment (dev → sandbox/prod).

Code is editable in target org.

Managed Packages:

Used by ISVs on AppExchange.

Code is locked, only upgrades possible.


7 ANT Migration Tool

Purpose: Command-line deployment tool (uses build.xml).

Best for: Continuous Integration (CI/CD).

Steps:

Install Apache ANT.

Configure build.xml with Salesforce login.

Run commands like:

ant retrieve
ant deploy

 8 VS Code & SFDX (Salesforce DX)

Purpose: Modern development + deployment toolset.

Best for: Source-driven development, CI/CD.

Steps:

Install VS Code + Salesforce Extensions Pack.

Authorize org:

sfdx force:auth:web:login -a MyOrg


Deploy metadata:

sfdx force:source:deploy -p force-app/main/default -u MyOrg


Retrieve metadata:

sfdx force:source:retrieve -p force-app/main/default -u MyOrg
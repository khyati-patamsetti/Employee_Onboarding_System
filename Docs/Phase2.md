# Phase 2 — Org Setup & Configuration

**Project:** Employee Onboarding System (Salesforce)
**Context:** As a 4th-year student, my goal is to simulate how a Salesforce consultant/administrator would set up the environment for an onboarding solution. This phase ensures the org is correctly configured before I build the automation, onboarding flows, and dashboards.

---

## 1. Salesforce Editions

* Using a **Developer Edition org** .
* Real-world note: Companies may choose Enterprise or Unlimited editions.

## 2. Company Profile Setup

* Set company info (name,address,timezone,currency).
* For this project: set timezone to my country, currency to INR/USD.

## 3. Business Hours & Holidays

* Business hours: 9 AM–6 PM,Mon–Fri.
* Add public holidays to simulate SLA tracking.

## 4. Fiscal Year Settings

* Standard fiscal year (Jan–Dec).
* Note: Custom fiscal years used in specific industries.

## 5. User Setup & Licenses

* Create sample users: HR Manager,IT Admin,Legal Officer,New Hire.
* Assign standard Salesforce licenses.

## 6. Profiles

* HR Profile: access to employee objects & dashboards.
* IT Profile: access to setup + onboarding tasks.
* New Hire Profile: limited access.

## 7. Roles

* Role hierarchy: CEO → HR Manager → IT Admin → New Hire.
* Visibility flows upward.

## 8. Permission Sets

* Document Signer Access (DocuSign integration).
* Training Module Access.

## 9. Organization-Wide Defaults (OWD)

* Employee Records: Private.
* Onboarding Tasks: Controlled by Parent.

## 10. Sharing Rules

* Example: Allow IT team to view onboarding records for account setup.

## 11. Login Access Policies

* Trusted IP ranges.
* Two-factor authentication for admins.

## 12. Dev Org Setup

* Connect Developer Org to VS Code + GitHub.
* Practice with Salesforce DX scratch orgs.

## 13. Sandbox Usage

* Developer Edition provides 1 Sandbox.
* Simulate testing workflow: Sandbox → Deployment.

## 14. Deployment Basics

* Use change sets and Git-based deployments.

---

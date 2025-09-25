Phase 6: User Interface Development
1 Lightning App Builder

Purpose: Customize pages without code.

Use Cases: Home pages, record pages, app pages.

Key Features:

Drag-and-drop components.

Assign pages by profile or app.

Preview pages in desktop/mobile.

Tip: Combine with Dynamic Forms to show/hide fields based on criteria.

2 Record Pages

Customize layout for a specific object.

Can include:

Standard Lightning components.

Custom components (Aura or LWC).

Related lists, tabs, and charts.

Example: Employee record page showing onboarding tasks in a related list component.

3 Tabs

Add object tabs, web tabs, visualforce tabs, or Lightning page tabs.

Useful for quick navigation in a Lightning app.

Example: Tab for “Employee Onboarding Tasks”.

4 Home Page Layouts

Configure dashboard components, reports, and list views on home pages.

Assign layouts to profiles or apps.

5 Utility Bar

Lightning apps can have a utility bar for frequently used components.

Example: Quick access to recent onboarding tasks or quick actions.

6 Lightning Web Components (LWC)

Modern framework for building fast, reusable components.

Key Features:

Uses HTML, JavaScript, and CSS.

Reactive data binding.

Communication via events and @api/@track/@wire decorators.

7 Apex with LWC

Call Apex methods imperatively or via @wire.
8 Events in LWC

Custom events: Pass data to parent components.

Standard events: lightning/ui* events for navigation, refresh, etc.
9 Wire Adapters

Pull Salesforce data declaratively using @wire.

Example: Fetch records from standard objects.
10 Imperative Apex Calls

When you need dynamic or on-demand data fetching.

Use .then() and .catch() promises to handle responses and errors.

11 Navigation Service

Programmatically navigate to:

Record pages

Object home

Web pages
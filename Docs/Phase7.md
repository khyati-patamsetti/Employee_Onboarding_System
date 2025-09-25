Phase 7: Integration & External Access

Overview:
Phase 7 focuses on connecting Salesforce with external systems, enabling data exchange, real-time notifications, and interaction with external services. This phase ensures that Salesforce can both consume external services and expose its own functionality for other systems, all while adhering to security and API governance best practices.

Topics Covered
1. Named Credentials

Purpose: Simplifies and secures authentication for external callouts without the need to hardcode credentials in Apex code.

Features:

Stores endpoint URLs and authentication information in a central place.

Supports OAuth 2.0, password authentication, and custom authentication providers.

Allows callouts to external services using a simple reference in Apex (callout:MyNamedCredential).

Benefits: Reduces maintenance, improves security, and makes external integrations more declarative.

2. External Services

Purpose: Allows Salesforce to declaratively consume external REST APIs.

Features:

Use OpenAPI (Swagger) specifications to import API definitions.

Automatically generate Apex actions that can be used in Flow Builder.

Supports REST services that can be integrated without writing code.

Benefits: Non-developers can integrate external APIs easily and safely, accelerating automation and process building.

3. Web Services (REST/SOAP)

Purpose: Expose Salesforce business logic to external systems via web services.

Types:

REST Web Services: Lightweight, JSON-based, stateless APIs. Expose Apex methods using @RestResource and HTTP method annotations (@HttpGet, @HttpPost).

SOAP Web Services: XML-based APIs suitable for enterprise systems. Expose Apex classes with webService keyword.

Benefits: Allows third-party systems to interact with Salesforce programmatically, supporting integrations and data exchange.

4. Callouts

Purpose: Enables Salesforce to send HTTP requests to external systems.

Types:

Synchronous Callouts: Wait for a response before continuing execution.

Asynchronous Callouts: Execute in the background (e.g., using @future methods or Queueable Apex).

Considerations:

Must configure Remote Site Settings or Named Credentials.

Handle timeouts, errors, and response parsing properly.

Benefits: Real-time access to external services for enriching Salesforce data or triggering external processes.

5. Platform Events

Purpose: Supports event-driven architecture for real-time notifications and integrations.

Features:

Define custom events with fields.

Publish events from Apex, Flows, or external systems.

Subscribe to events in Apex, Process Builder, or external apps via CometD protocol.

Benefits: Decouples systems, enabling scalable and asynchronous communication for real-time processes.

6. Change Data Capture (CDC)

Purpose: Tracks record changes in Salesforce and delivers events in real time.

Features:

Detect creation, updates, deletion, and undelete operations.

Subscribe via CometD, Apex triggers, or external systems.

Benefits: Keeps external systems synchronized with Salesforce without polling, reducing latency and improving performance.

7. Salesforce Connect

Purpose: Access external data in real time without storing it in Salesforce.

Features:

Supports OData 2.0 and 4.0 protocols.

Creates external objects that behave like standard Salesforce objects.

Enables reporting and process automation on external data.

Benefits: Eliminates data duplication, reduces storage costs, and allows seamless integration with external databases.

8. API Limits

Purpose: Govern and monitor Salesforce API usage to prevent exceeding organizational limits.

Key Considerations:

Daily API request limits depend on license type.

Track API usage using System Overview, Event Monitoring, or API Usage reports.

Design integrations efficiently to avoid hitting limits (e.g., bulkification, caching).

Benefits: Ensures integration reliability and prevents disruption of Salesforce services.

9. OAuth & Authentication

Purpose: Securely authenticate external systems when accessing Salesforce resources.

Features:

Supports OAuth 2.0 flows: Web Server, User-Agent, JWT, and Client Credentials.

Provides access tokens for API callouts.

Ensures proper permissions with connected apps.

Benefits: Provides secure and scalable authentication for integrations without exposing user credentials.

10. Remote Site Settings

Purpose: Authorizes Salesforce to make HTTP callouts to external endpoints.

Features:

List of approved external URLs.

Required for all HTTP callouts unless using Named Credentials.

Benefits: Enhances security by restricting callouts to trusted systems only.

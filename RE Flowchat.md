```mermaid
sequenceDiagram
    participant Underwriting
    participant Risk Control
    participant Customer/Broker

    Note over Underwriting, Risk Control: Step 1: Request
    Underwriting->>Risk Control: Submits Risk Control Service Request Form

    Note over Underwriting, Risk Control: Step 2: Triage & Clarify
    Risk Control->>Underwriting: Review risk profile to define assessment scope and align assessment plan with Underwriting.

    Note over Risk Control: Step 3: Assess
    Risk Control->>Risk Control: Conducts Assessment (On-Site or Desktop)

    Note over Risk Control, Underwriting: Step 4: Report
    Risk Control->>Underwriting: Requests final info post-assessment (if needed)
    Risk Control->>Risk Control: Prepares:<br/>1. Internal "Survey Report"<br/>2. External "RIA Report"
    Risk Control->>Underwriting: Delivers both reports

    Note over Underwriting, Customer/Broker: Step 5: Decide & Deliver
    Underwriting->>Underwriting: Uses "Survey Report" for UW Decision
    Underwriting->>Customer/Broker: Delivers "RIA Report"
    
    Note over Underwriting, Customer/Broker: Step 6: Follow Up with Customer/Broker
    Underwriting->>Customer/Broker: Follows up on RIA implementation
    Customer/Broker->>Underwriting: Provides status update
        
    Note over Underwriting, Risk Control: Internal Support & Validation
    Underwriting->>Risk Control: Requests technical support/validation
    Risk Control->>Underwriting: Provides clarification & closure

```mermaid
sequenceDiagram
    participant Underwriting
    participant Risk Control
    participant Customer/Broker

    Note over Underwriting, Risk Control: Step 1: Request
    Underwriting->>Risk Control: Submits Risk Control Service Request Form

    Note over Underwriting, Risk Control: Step 2: Triage & Clarify
    Risk Control-->>Underwriting: Communicates for additional info (if needed)

    Note over Risk Control: Step 3: Assess
    Risk Control->>Risk Control: Conducts Assessment (On-Site or Desktop)

    Note over Risk Control, Underwriting: Step 4: Report
    Risk Control-->>Underwriting: Requests final info post-assessment (if needed)
    Risk Control->>Risk Control: Prepares:<br/>1. Internal "Survey Report"<br/>2. External "RIA Report"
    Risk Control->>Underwriting: Delivers both reports

    Note over Underwriting, Customer/Broker: Step 5: Decide & Deliver
    par Use for Decision AND Deliver to Customer
        Underwriting->>Underwriting: Uses "Survey Report" for UW Decision
    and
        Underwriting->>Customer/Broker: Delivers "RIA Report"
    end

    Note over Underwriting, Customer/Broker: Step 6: Follow Up with Customer/Broker
    loop Ongoing RIA Tracking
        Underwriting->>Customer/Broker: Follows up on RIA implementation
        Customer/Broker-->>Underwriting: Provides status update
    end
    
    Note over Underwriting, Risk Control: Internal Support & Validation
    Underwriting->>Risk Control: Requests technical support/validation
    Risk Control-->>Underwriting: Provides clarification & closure

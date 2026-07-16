```mermaid
sequenceDiagram
    participant Underwriting
    participant Risk Control

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 1: Request
        Underwriting->>Risk Control: Submits Risk Control Service Request Form
    end

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 2: Triage & Clarify
        Risk Control-->>Underwriting: Communicates to get additional info (if needed)
        Underwriting-->>Risk Control: Provides info
    end

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 3: Assess
        Risk Control->>Risk Control: Conducts Assessment (On-Site or Desktop)
    end

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 4: Report
        Risk Control-->>Underwriting: Requests final info post-assessment (if needed)
        Underwriting-->>Risk Control: Provides final info
        Risk Control->>Risk Control: Prepares:<br/>1. Internal "Survey Report"<br/>2. External "RIA Report"
        Risk Control->>Underwriting: Delivers both reports
    end

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 5: Decide & Deliver
        Underwriting->>Underwriting: Uses "Survey Report" for UW Decision
        Underwriting->>Customer/Broker: Delivers "RIA Report"
    end

    rect rgb(235, 245, 255)
        Note over Underwriting, Risk Control: Step 6: Follow Up
        Underwriting->>Underwriting: Tracks RIA Implementation
        loop Ongoing Support
            Underwriting-->>Risk Control: Requests technical support/validation
            Risk Control-->>Underwriting: Provides clarification & closure validation
        end
    end

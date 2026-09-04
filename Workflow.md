```mermaid
sequenceDiagram
    participant Customer/Producer
    participant Underwriting
    participant Risk Control
    

    Underwriting ->> Risk Control: Submits Service Request Form

    activate Risk Control
    Note over Risk Control: Triage & Clarify
    Risk Control -->> Underwriting: Aligns scope & requests info (if needed)

    Note over Risk Control: Assess
    Risk Control ->> Risk Control: Conducts Assessment (On-Site/Desktop)

    Note over Risk Control: Risk Control Output
    Risk Control ->> Risk Control: Prepares:<br>1. Internal "Survey Report"<br>2. External "RIR Report"<br>3. Risk Opinion (For Desktop)

    Risk Control ->> Underwriting: Delivers both reports
    deactivate Risk Control

    Note over Underwriting, Customer/Producer: Decide & Deliver

    par Use Risk Control's Output for Decision
        activate Underwriting
        Underwriting ->> Underwriting: Uses Survey Report/Risk Opinion for UW decision
        deactivate Underwriting
    and Deliver RIR Report
        Underwriting ->> Customer/Producer: Delivers RIR Report
    end

    Note over Underwriting, Customer/Producer: Follow Up with Customer/Producer

    loop Ongoing RIR Tracking
        Underwriting ->> Customer/Producer: Follows up on implementation
        Customer/Producer -->> Underwriting: Provides status update
    end

    Note over Underwriting, Risk Control: Internal Support & Validation

    Underwriting ->> Risk Control: Requests technical support/validation
    activate Risk Control
    Risk Control -->> Underwriting: Provides clarification & closure
    deactivate Risk Control

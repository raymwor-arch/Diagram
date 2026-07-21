sequenceDiagram
    participant C as Customer / Broker
    participant A as APEX
    participant X as AXA

    Note over C,X: STEP 1 — Enquiry and Initial Assessment
    C->>A: Submit insurance enquiry
    A->>A: Collect CDD information
    A->>A: Assess risk against underwriting limits
    A->>A: Check referral and decline criteria

    Note over C,X: STEP 2 — Compliance Review
    A->>X: Submit customer information for compliance review
    X->>X: Sanction Screening
    X->>X: Clash Checking
    X->>X: Due Diligence Review

    alt Compliance Cleared
        X-->>A: Clearance confirmed
    else Not Cleared
        X-->>A: Risk declined — compliance failure
        A-->>C: Notify decline
    end

    Note over C,X: STEP 3 — Referral (if applicable)
    alt Risk requires referral
        A->>X: Submit referral for approval
        X->>X: Review referral risk
        alt Referral Approved
            X-->>A: Referral approved
        else Referral Declined
            X-->>A: Referral declined
            A-->>C: Notify decline
        end
    end

    Note over C,X: STEP 4 — Quotation
    A->>A: Calculate premium, rates, deductibles and charges
    A-->>C: Issue quotation

    Note over C,X: STEP 5 — Acceptance and Binding
    C->>A: Accept quotation
    A->>A: Bind risk under delegated authority

    Note over C,X: STEP 6 — Policy Issuance
    A->>X: Submit policy issuance instruction
    X->>X: Produce policy and issue certificate
    X-->>A: Policy and certificate issued

    Note over C,X: STEP 7 — Delivery and Ongoing Servicing
    A-->>C: Deliver policy and certificate
    A->>A: Endorsements, renewals and policy servicing
    

sequenceDiagram
    participant Underwriter
    participant TUG as Technical Underwriting & Governance
    participant PPA as Pricing & Portfolio Analytics
    participant CH as Channel Head

    Underwriter->>TUG: 1. Submits referral for EC/SME NB with Target Premium

    TUG->>PPA: Request Technical Premium calculation
    PPA-->>TUG: 2. Computes and provides Technical Premium

    TUG->>Underwriter: 3. Advises on the required Premium Buffer

    Underwriter->>CH: 4. Discusses buffer application
    CH-->>Underwriter: Provides approval for buffer
    Underwriter->>TUG: Notifies of Channel Head's approval

    Underwriter->>TUG: 5. Reports final case result (Bound/Failed)

    TUG->>CH: 6. Updates on final Premium Buffer used and balance

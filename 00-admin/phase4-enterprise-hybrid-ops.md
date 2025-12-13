# Phase 4 — Enterprise Hybrid Ops & Automation (Amplix-Informed) (15–20 Days)

This phase layers **enterprise/MSP realities** on top of the existing Hybrid SysAdmin foundation.  
Focus: **automation at scale, identity visibility, ITSM workflows, and data-aware operations**.

This is not a pivot into data engineering or BI development — it is the modern **ops/infrastructure** layer seen in MSPs and M&A-heavy environments.

---

## Outcomes

By the end of Phase 4, I will be able to:

- Automate tenant and endpoint data collection using **PowerShell + Microsoft Graph**
- Explain how ops telemetry flows into **Azure SQL** and how dashboards are built/consumed in **Power BI**
- Operate within an **ITSM** workflow (ServiceNow style): clean tickets, documentation, escalation boundaries
- Support internal tools safely (C#/VBA ecosystems) without risky “cowboy edits”
- Document SOPs/runbooks and work effectively across vendors and MSP partners

---

## Module 4.1 — PowerShell + Microsoft Graph (High ROI)

### Skills
- Graph concepts: permissions/scopes, delegated vs application access
- Using Graph PowerShell SDK to query tenant data
- Exporting results to CSV for operational reporting

### Labs
- Query Entra ID users, groups, devices (read-only)
- Pull license / sign-in / device compliance signals (where available)
- Create reusable reporting scripts + logging

---

## Module 4.2 — Azure SQL Awareness for Operations (Not DBA)

### Skills
- Azure SQL vs SQL Server (what sysadmins need to know)
- Reading schemas/tables and understanding data flow
- Safe operational interaction (read-only mindset)

### Labs
- Connect with SSMS
- View tables, run basic SELECT queries
- Upload structured data files to a staging table (lab-only)

---

## Module 4.3 — Power BI Awareness (Consumer, Not BI Developer)

### Skills
- How dashboards consume data (Azure SQL / datasets)
- Interpreting KPIs relevant to infrastructure and operations
- Communicating technical risk through metrics

### Labs
- Connect a sample dataset (lab)
- Read dashboards and interpret operational insights
- Define “what leadership cares about” metrics

---

## Module 4.4 — ITSM + MSP Operating Model (ServiceNow-Lite)

### Skills
- Ticket hygiene: problem statement, troubleshooting steps, resolution
- Documentation standards: SOPs/runbooks
- Escalation boundaries: internal team vs external MSP partners
- Operating in M&A/standardization environments

### Labs
- Create “ticket writeups” from lab incidents (template-based)
- Build an SOP for a recurring task (patching, onboarding, access requests)
- Create an escalation checklist

---

## Module 4.5 — Internal Tools Awareness (C#/VBA + Secure Ops)

### Skills
- Supporting internal apps safely (logs, configs, environments)
- Versioning awareness and controlled deployments
- Security mindset: least privilege, change control, audit trail

### Labs
- Create a “safe triage checklist” for internal apps
- Write a troubleshooting flow: symptom → logs → data → escalation
- Build a change log template (what changed, why, rollback)

---

## Deliverables (GitHub)

- Graph reporting scripts in `/scripts/powershell/graph/`
- Azure SQL lab notes and safe query examples
- Power BI “ops dashboard interpretation” notes
- ITSM templates: ticket writeups, SOP template, escalation checklist
- Phase 4 capstone: end-to-end ops reporting pipeline (lab)

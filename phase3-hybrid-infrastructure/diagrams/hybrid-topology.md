# Hybrid Lab Topology (On-Prem + Azure)

```text
                          AZURE (CLOUD)
                    ─────────────────────────
                           ┌───────────────┐
                           │  Azure Tenant │
                           └───────┬───────┘
                                   │
                     Entra ID (Azure AD / Identity)
                                   │
                           ┌───────┴────────┐
                           │ Azure AD Connect│
                           └───────┬────────┘
                                   │ Sync (PHS/PTA)
             ┌─────────────────────┴──────────────────────┐
             │                                            │
      ┌──────┴──────┐                               ┌─────┴───────┐
      │  Azure VNet │                               │  Intune     │
      │  (10.10.0.0/16)                             │ (Mgmt Plane)│
      └──────┬──────┘                               └─────┬───────┘
             │                                            │
      ┌──────┴─────────────┐                      ┌───────┴─────────┐
      │  Subnet 10.10.1.0  │                      │ Policies, Apps  │
      │  Azure VM(s)       │                      │ & Compliance    │
      └────────────────────┘                      └─────────────────┘


                         ON-PREM LAB (VIRTUALBOX / HYPER-V)
                    ──────────────────────────────────────────

   ┌───────────────┐          ┌────────────────┐        ┌───────────────┐
   │   pfSense     │          │  DC1           │        │   SRV1         │
   │  (Router/FW)  │──────────│  AD DS, DNS    │────────│ File Server    │
   │  192.168.1.1  │          │  DHCP (opt.)   │        │ Other Roles    │
   └───────────────┘          └────────────────┘        └───────────────┘
            │                            │                        │
            │                            │                        │
      ┌─────┴─────┐                ┌─────┴─────┐          ┌──────┴───────┐
      │ CLIENT1   │                │  Azure AD │          │  Hybrid-Joined│
      │ Win10/11  │                │  Connect  │          │  Devices      │
      └───────────┘                └───────────┘          └───────────────┘

```
---

## This diagram represents:

# On-prem lab:

- pfSense for routing/firewall

- DC1 for AD DS, DNS, and potentially DHCP

- SRV1 as a file server or additional roles

- CLIENT1 as a domain-joined workstation

# Azure:

- Entra ID as the identity plane

- Azure AD Connect syncing from on-prem AD

- A VNet with Azure VMs

- Intune managing devices via Entra ID

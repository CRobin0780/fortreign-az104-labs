# Lab 01 — Command Output Log

**Date:** 2026-03-11  
**Analyst:** Chris Robinson (Kai)  
**Environment:** RG-AZ104-LAB | eastus | fortreign.soc@outlook.com  

---

## Get-AzContext
```
Tenant: Default Directory (dadaddc2-edd2-4073-ae8b-0ab99eb00c38)

SubscriptionName     SubscriptionId                       Account                   
----------------     --------------                       -------                   
Azure subscription 1 aeaec93f-d9e1-4ab8-8bee-8c03dd23d1a1 fortreign.soc@outlook.com
```

## New-AzResourceGroup
```
ResourceGroupName : RG-AZ104-LAB
Location          : eastus
ProvisioningState : Succeeded
ResourceId        : /subscriptions/aeaec93f-d9e1-4ab8-8bee-8c03dd23d1a1/resourceGroups/RG-AZ104-LAB
```

## Subnet Verification
```
Name               AddressPrefix
----               -------------
subnet-frontend    {10.10.1.0/24}
subnet-backend     {10.10.2.0/24}
AzureBastionSubnet {10.10.100.0/27}
```

## Portal Verification
Screenshot: screenshots/vnet-subnets-portal.png  
All three subnets confirmed in Azure Portal with correct address prefixes and available IP counts.
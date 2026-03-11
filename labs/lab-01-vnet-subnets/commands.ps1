# ============================================================
# Lab 01 — Virtual Networks and Subnets
# AZ-104 Domain: Implement & Manage Virtual Networking (25%)
# Date: 2026-03-11
# Analyst: Chris Robinson
# Environment: RG-AZ104-LAB | eastus | fortreign.soc@outlook.com
# ============================================================

# Verify active context
Get-AzContext

# Confirm Resource Group exists
Get-AzResourceGroup -Name "RG-AZ104-LAB"

# Define subnet configurations
$subnetFrontend = New-AzVirtualNetworkSubnetConfig `
    -Name "subnet-frontend" `
    -AddressPrefix "10.10.1.0/24"

$subnetBackend = New-AzVirtualNetworkSubnetConfig `
    -Name "subnet-backend" `
    -AddressPrefix "10.10.2.0/24"

# NOTE: Bastion subnet name must be EXACTLY "AzureBastionSubnet"
$subnetBastion = New-AzVirtualNetworkSubnetConfig `
    -Name "AzureBastionSubnet" `
    -AddressPrefix "10.10.100.0/27"

# Create the Virtual Network with all three subnets
$vnet = New-AzVirtualNetwork `
    -Name "vnet-az104-lab" `
    -ResourceGroupName "RG-AZ104-LAB" `
    -Location "eastus" `
    -AddressPrefix "10.10.0.0/16" `
    -Subnet $subnetFrontend, $subnetBackend, $subnetBastion

# Verify subnets were created correctly
(Get-AzVirtualNetwork `
    -Name "vnet-az104-lab" `
    -ResourceGroupName "RG-AZ104-LAB").Subnets `
    | Select-Object Name, AddressPrefix
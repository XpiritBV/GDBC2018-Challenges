param
(
    [string] $applicationName,
    [string] $subscriptionid,
    [string] $resourcegroup,
    [string] $location
)

$spn = Get-AzureRmADApplication -DisplayNameStartWith "$applicationName"

$rg = New-AzureRmResourceGroup -Name $resourcegroup -Location $location
New-AzureRmRoleAssignment  -ApplicationId $($spn.ApplicationId) -ResourceGroupName $resourcegroup -RoleDefinitionName 'Contributor'
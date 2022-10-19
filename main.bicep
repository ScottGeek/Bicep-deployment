@maxLength(11)
param storageAccountPrefix string = 'bicep'
param location string = resourceGroup().location

var sta = '${storageAccountPrefix}${uniqueString(substring().id)}'

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-10-18' = {
    name: sta
    location: location
    kind: 'StorageV2'
    sku: {
        name: 'Standard_LRS'
    }
}


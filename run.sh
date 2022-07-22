#!/usr/bin/env bash

set -x

# 1. run the script to create communication service
# 2. go to the Communicatoin Service under the resource group on Azure portal
# 3. Sample applicatoins > deploy 'Group calling hero sample for Web'
# 4. App Name: enter something unique, e.g., chat55665566
# 5. go to App Service under the resource group and copy the URL: https://chat55665566.azurewebsites.net
# 6. profit!
#
# reference: https://qiita.com/ryoma-nagata/items/36e5146d3229f889d68e
#
# alternatively, just click 'Deploy to Azure' here:
# https://docs.microsoft.com/en-us/azure/communication-services/samples/calling-hero-sample?pivots=platform-web


AZURE_GROUP_NAME=""
AZURE_COMMUNICATION_SERVICE_NAME="teams-$((1 + RANDOM % 1000))"

# create communication service
az communication create \
    --name "$AZURE_COMMUNICATION_SERVICE_NAME" \
    --resource-group "$AZURE_GROUP_NAME" \
    --location "global" \
    --data-location "unitedstates"

az communication list --resource-group "$AZURE_GROUP_NAME" --out table

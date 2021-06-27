# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/node:3.0-appservice
FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=lagcppvc;AccountKey=9nTHKvwYHfnYNtm8Nk4o14tNnlC7OeNtSveOxiaq4weKH2oSiSFfKenJZAZTx0WZM5Vys16aJIbpIYVekn0pkQ==;EndpointSuffix=core.windows.net

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true

ENV WEBSITE_HOSTNAME localhost
ENV WEBSITE_SITE_NAME WeatherAPI
ENV AZURE_FUNCTIONS_ENVIRONMENT Development

COPY . /home/site/wwwroot

RUN cd /home/site/wwwroot
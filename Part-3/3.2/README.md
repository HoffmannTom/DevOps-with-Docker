# EXERCISE 3.2: A DEPLOYMENT PIPELINE TO A CLOUD SERVICE
## Link to repository
The GitHub repository is located at https://github.com/HoffmannTom/leaky. The deployment takes place to render.com.
The deployed website is accessible at https://leaky.onrender.com 

## Credentials
For render.com there are two options for deployment:
1) In the account settings of render.com we can create an API key, used as an access token.
   The service-id can be either extracted from the Deploy Hook (in the Settings-section)
   or can be fetched via curl, see command below.
   The action marketplace offers the action "sws2apps/render-deployment@v1.2.0" to deploy on render.com:
   https://github.com/sws2apps/render-deployment  
   After settings the parameters for the service-id and the API token, the container was successfully deployed on render.com
   
2) Connect render.com with your github account and let render.com build and deploy the application.
   For this purpose, render can observe pull-requests and build and deploy the app.
   After a pull request is merged or deleted, the deployed app is deleted.
   
Option 1 was used, as no pull requests are used.
   
## Fetch service-id
The services and corresponding id can be fetched via curl:
```
 curl --request GET \
     --url 'https://api.render.com/v1/services?limit=20' \
     --header 'Accept: application/json' \
     --header 'Authorization: Bearer <API-Token>'
```
Alternatively, the service-id is within the Deploy Hook:  
https://api.render.com/deploy/<service-id>?key=<parameter>

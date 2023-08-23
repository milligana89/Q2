# Q2
The application is structured with a multi-stage CI/CD pipeline, using terraform, to build and deploy the application. The Azure Pipeline, defined in azure-pipelines.yml utilizes the "Azure Pipelines Terraform Tasks" extension by Charles Zipp, documented at https://marketplace.visualstudio.com/items?itemName=charleszipp.azure-pipelines-tasks-terraform&targetId=df43ec0f-7f9c-4df0-a365-a9729446fa02&utm_source=vstsproduct&utm_medium=ExtHubManageList.


The current pipeline builds the SampleWebAPI application, runs the test on SampleWebAPITests, and deploys the application if the build/test steps are successful. The pipeline is trigger by a push to the branch 'main'. The tfstate file will be stored remotely at a storage account defined in the yaml - stgacct, resource group rg_sample_api_useast1, as is best practice.

Nice-to-have enhancements:

1) Set a trigger to deploy the pipeline when a PR is merged to main, rather than a direct push to main
2) Set up additional non-prod environments
    a) Build stand-alone pipeline for lowest level environment for functional testing
    b) For other non-prod environments, pipeline should promote and deploy build through higher regions to prod

this project is the infrastructure of a new e-commerce platform. This is how to use it.

before use:
If you want to test the code without using workflows, you have to set environmental variables with ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID and ARM_TENANT_ID, You got these values when creating an App Registration. 


Git:
To use this infrastructure with workflows, you need to add secrets into git. These secrets are ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_SUBSCRIPTION_ID and ARM_TENANT_ID. You got these values when creating an App Registration. This is done so that the workflows have access to the state files and can use workflow init.

You also need to make the branches staging and dev. In my implementation i have chosen that the main branch will work together with the prod workspace, so you don't have to make a prod branch. There is also no need to make workspaces, this is done automatically in the workflows if not done beforehand.


workflows:
To use the validate workflow with tfsec and tflint you need to download these before use. If you dont want that, they are already commented out in the workflow.


code:
I have given some examples og how to use the terraform.tfvars files with different environments in core_infrastructure with variables used in the database module. If you want to add more, it can be done in the same way.


structure:
I have chosen to use ./global as a folder for the resources that might get used in several other "projects", like application_platform or core_infrastructure. For now, the only resource in main is random_number, this is used to put a random number after all the resources.

core_infrastructure is used for the backend of the platform and application_platform is used for the resources tied to the web application. You can simple add more folders like these when the demand gets bigger and the infrastructure grows.
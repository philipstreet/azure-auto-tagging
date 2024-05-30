# Azure Auto-Tagging

This repo provides examples of using two auto-tagging frameworks for deploying resources into Azure; terratag and yor. The frameworks automatically add git metadata tags to the resources being deployed - without commit those changes to the git repo - to facilitate traceability of those resources in the Azure Portal. Essentially, they provide answers to the questions, "What, where, when deployed these resources?".

The repo deploys an Azure Storage Account in three different ways:

- using a resource block
- using a module block, where the source is defined in a local "modules" folder
- using a module block, where the source is from the Terraform registry

This will provide proof that the frameworks can handle the three different approaches to deploying a resource.

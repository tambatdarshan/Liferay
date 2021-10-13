Instructions for leveraging the Devfile in CRW
====
I. First setup CRW to pull the image a registry. Follow the instructions in the link: 
https://www.eclipse.org/che/docs/che-7/end-user-guide/using-private-container-registries/

II. In CRW, create a custom workspace
a. define the workspace-name
b. define the storage type 
c. Enter the devfile url, then load: https://raw.githubusercontent.com/DaniellaFreese/Liferay/main/che/devfile.yaml

d. Correct line 67, to point to your liferay image on the ocp cluster
image-registry.openshift-image-registry.svc:5000/<correct-namespace>/liferay:latest

When ready, save, and open the workspace to validate functionality. 
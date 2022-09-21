# Liferay
Run liferay server within the devSpaces for developers to be able to create, develop and deploy their java apps into a liferay server.

## Step 1
`git clone this repo`

## Step 2
Create the container image (Dockerfile) and add it to openshift.

`podman build .`

`podman tag openshift-registry-url/openshift/liferay`

`podman login -u user -p $(oc whoami -t ) openshift-registry-url`

`podman push openshift-registry-url/openshift/liferay`

## Step 3
Create Workspace pointing to the git repository of the devile.
https://raw.githubusercontent.com/renatoppuccini/Liferay/main/che/devfile.yaml


Instructions to Build and Deploy Liferay on Openshift 
=========

## Building Liferay container 
The buildconfig , bc-liferay.yaml, relies on the Dockerfile in the parent directory. In order to build liferay using openshift run the following commands: 
1. create the build config resource in your openshift project/namespace: 
```
oc create -f openshift/app/bc-liferay.yaml 
```
2. To start a build run the following command: 
```
oc start-build liferay-base --from-dir=. 
```

You should see build pods running in the namespace complete. To review and validate the build executed successfully run the following: 
```
oc get builds 
oc describe build <build-name>
```
Also validate that the imagestream has a reference to an image: 
```
oc describe is liferay 
```



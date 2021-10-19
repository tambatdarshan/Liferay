Instructions for Deploying the Liferay Helm Chart on Openshift 
=====
Before executing the chart, ensure the liferay imagestream is present in the openshift project. That can be validated by running the following command:
```
oc get is
```
You should see the liferay imagestream, with a reference to an image. 

To deploy the chart, have  helm 3 cli tool installed, and run the following command: 
```
helm install liferay ./ -f openshift/helm-liferay/values.yaml
```

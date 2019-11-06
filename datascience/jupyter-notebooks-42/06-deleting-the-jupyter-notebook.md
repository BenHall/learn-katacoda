When you are done with the Jupyter notebook instance you can delete it from the command line.

To validate that you are deleting the correct resources, first run:

``oc get all --selector app=custom-notebook``{{execute}}

This uses a label selector to reference only the resources for this deployment.

When happy that you will be deleting the correct resources, run:

``oc delete all --selector app=custom-notebook``{{execute}}

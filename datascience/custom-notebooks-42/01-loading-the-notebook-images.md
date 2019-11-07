The Jupyter on OpenShift project provides Jupyter notebook images which have been purpose built to work best with OpenShift.

Before you can deploy these Jupyter notebook images, you first need to load the images for the Jupyter notebook application into your project in OpenShift. You only need to load this once in a project. You can then use it in creating as many different Jupyter Notebook deployments as you need.

Login to the OpenShift cluster you have been provided by running:

``oc login -u developer -p developer``{{execute}}

and then create a project in which to work:

``oc new-project myproject``{{execute}}

To load the Jupyter notebook images, run:

``oc apply -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/master/image-streams/s2i-minimal-notebook.json``{{execute}}

Once created, run the command:

``oc get imagestreams -o name``{{execute}}

and you should now see that the `s2i-minimal-notebook` image stream has been added.

You can inspect the image stream by running:

``oc describe imagestream s2i-minimal-notebook``{{execute}}

and you will see that the image stream includes tags for `3.5` and `3.6`. These correspond to versions of the image for Python 3.5 and Python 3.6.

oc login -u developer -p developer
oc new-project myproject
curl https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/master/image-streams/s2i-minimal-notebook.json | oc apply -f - -n myproject
curl https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/develop/templates/notebook-builder.json | sed -e 's/"Redirect"/"Allow"/' | oc apply -f - -n myproject
curl https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/develop/templates/notebook-deployer.json | sed -e 's/"Redirect"/"Allow"/' | oc apply -f - -n myproject
curl https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/develop/templates/notebook-quickstart.json | sed -e 's/"Redirect"/"Allow"/' | oc apply -f - -n myproject
curl https://raw.githubusercontent.com/jupyter-on-openshift/jupyter-notebooks/develop/templates/notebook-workspace.json | sed -e 's/"Redirect"/"Allow"/' | oc apply -f - -n myproject

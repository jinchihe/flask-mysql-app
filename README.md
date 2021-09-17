# flask-mysql-app

The project is to deploying a Flask API and MySQL server on Kubernetes with CI/CD pipeline.

## Quick Start
1. Update `k8s/git-credentials.yaml` and `k8s/quay-io-credentials.yaml`
2. Deploy database.
   ```
   oc apply -f mysql
   ```
3. Deploy tekton caylog.
    ```
    oc apply -f k8s/tekton
    ```
4. Deploy others
   ```
   oc apply -f k8s/
   ```
    This may create a pipelinerun.

Also a new pipelinerun will be created if any PR created since the webhook already setup.

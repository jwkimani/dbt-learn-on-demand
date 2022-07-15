## Container image that runs your code
#FROM fishtownanalytics/dbt:1.0.0

## Copies your code file from your action repository to the filesystem path `/` of the container
#COPY .github/workflows/entrypoint.sh /entrypoint.sh

## Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]

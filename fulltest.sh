DATAHUB_VERSION=head ./gradlew quickstartDebug -x :docker:quickstartDebugComposeDownForcedOnFailure
sed -i 's/^# METADATA_SERVICE_AUTH_ENABLED=false/METADATA_SERVICE_AUTH_ENABLED=false/' docker/datahub-frontend/env/docker.env docker/datahub-gms/env/docker.env
datahub docker ingest-sample-data
datahub properties upsert -f property1.yaml
datahub properties upsert -f property2.yaml
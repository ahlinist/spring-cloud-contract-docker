sudo docker run \
    -e PROJECT_NAME=myprojectname \
    -e PROJECT_GROUP=com.ahlinisty \
    -e PROJECT_VERSION=LATEST \
    -e REPO_WITH_BINARIES_URL=https://my.jfrog/ \
    --volume "$PWD/tests/contract/testDefinitions/:/contracts:ro" \
    --volume "$PWD/tests/contract/output:/spring-cloud-contract/build" \
     springcloud/spring-cloud-contract:2.2.2.RELEASE ./gradlew publish

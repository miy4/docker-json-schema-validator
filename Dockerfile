FROM anapsix/alpine-java

ENV JSON_SCHEMA_VALIDATOR_VERSION 2.2.6
ENV LANG en_US.UTF-8
RUN apk add --no-cache curl \
    && mkdir /app \
    && curl -L https://bintray.com/artifact/download/fge/maven/com/github/fge/json-schema-validator/${JSON_SCHEMA_VALIDATOR_VERSION}/json-schema-validator-${JSON_SCHEMA_VALIDATOR_VERSION}-lib.jar -o /app/json-schema-validator.jar \
    && apk del curl

ENTRYPOINT [ "java", "-jar", "/app/json-schema-validator.jar" ]
CMD [ "--help" ]

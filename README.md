docker-json-schema-validator
==========

Docker container with Alpine Linux, Java and json-schema-validator.  
[json-schema-validator](https://github.com/java-json-tools/json-schema-validator) is a JSON Schema validation implementation in Java.

### Installation

To pull:

```sh
$ docker pull miy4/json-schema-validator
```

To build:

```sh
$ git clone https://github.com/miy4/docker-json-schema-validator.git
$ cd docker-json-schema-validator
$ docker build -t miy4/json-schema-validator .
```

### Usage

```sh
$ docker run -v ${PWD}:/work -w /work --rm [JSON_SCHEMA_VALIDATOR_ARGUMENTS]
# or
$ /path/to/run-json-schema-validator [JSON_SCHEMA_VALIDATOR_ARGUMENTS]
```

`docker run` and `run-json-schema-validator` accept and pass a set of parameters to json-schema-validator CLI.  
You can see command help (`docker run ... --help` or `run-json-schema-validator --help`) for more details. 

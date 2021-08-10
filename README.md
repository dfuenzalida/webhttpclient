# Web HTTP Client

A simple app that uses the synchronous HTTP client APIs in Java 11 to send GET requests to any address.

Includes a simple `hello.jsp` page that replies with a JSON response, used for testing.

## Prerequisites

* [Java 11 or later](https://adoptopenjdk.net/)
* An Azure subscription ([free trial here](https://azure.microsoft.com/en-us/free/))
* [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
* [Apache Maven](https://maven.apache.org/)


## Build

```
mvn clean package
```

## Deployment to Azure

Configure your resources with

```
mvn com.microsoft.azure:azure-webapp-maven-plugin:2.0.0:config
```

Deploy with

```
mvn azure-webapp:deploy
```

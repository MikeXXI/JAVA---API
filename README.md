## CREATE the JAR

```
mvn clean package
```

## BUILD the IMAGE

```
docker build . -t kmikaz/java-mike:v1.1.x
```

## PUSH the IMAGE in DOCKER HUB

```
docker push kmikaz/java-mike:v1.1.x
```

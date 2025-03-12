# Maven in 5 min tutorail will help : https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html



# Create Project 

```sh
mvn archetype:generate -DgroupId=com.mycompany.app \
-DartifactId=my-app \
-DarchetypeArtifactId=maven-archetype-quickstart \
-DarchetypeVersion=1.5 \
-DinteractiveMode=false 

'''

# Build and Run the package

```sh
mvn package

java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App

```

# Create Mavaen project for s3 and lambda project

## Refrance https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/setup-project-maven.html


```sh
mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_EAST_1 \
 -DarchetypeVersion=2.X.X \
 -DgroupId=com.example.myapp \
 -DartifactId=myapp


 mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_EAST_1 \
 -DarchetypeVersion=2.30.37 \
 -DgroupId=com.example.mylambdaapp \
 -DartifactId=mylambdaapp

 mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=lambda -Dregion=US_EAST_1 \
 -DarchetypeVersion=2.30.37 \
 -DgroupId=com.example.mylambdaapp \
 -DartifactId=mylambdaapp

 ```
#!/bin/bash

export env=$1
export version=$2
JAR_NAME=/home/travis/build/vishwanathbeena/travis_cics_practice/target/travis_cics_practice-${version}.jar
CLASS_NAME="com.cicd.travis.practice.MyFirstTravisProgram"

if [ ${env} = "dev" ] || [ ${env} = "staging" ] || [ ${env} = "prod" ]; then 
    java -cp ${JAR_NAME} ${CLASS_NAME}
else 
    echo "Invalid Environment"
	exit 1
fi



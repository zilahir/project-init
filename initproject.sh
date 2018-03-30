#!/bin/bash
workingDirectory='/Users/rzilahi/work/';

newProjectName=$1;
currentUsername=logname

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, exiting"
    exit 1;
fi

# INIT PROJECT INIT SCRIPT

echo "-------------------------------------------"
echo "-------- Initializing new project ---------"
echo "-------------------------------------------"

# CREATE THE NEW FODLER IN THE WORKING DIRECTORY

## check if the folder is already exist

if [ ! -d $workingDirectory$newProjectName ];
then
  mkdir -p $workingDirectory$newProjectName
  cp package.json.template $workingDirectory$newProjectName
  cd $workingDirectory$newProjectName;
  echo -e "creating working directory ""\033[32m[OK]";
else
  echo "lofasz";
fi
tput init

#HANDLE JSON

## create jsonfile from template

templateFile="$(cat package.json.template)"

echo $templateFile > package.json;

# add the projectname to the template file

sed -i '' "s/%projectname%/$newProjectName/g" package.json;

echo -e "configuring package.json ""\033[32m[OK]"
tput init

## HANDLE NPM INSTALL
# install dependency tree based on package.json

npm install -s -q

echo "--------- Initializing git repo -----------"

touch README.md
vi README.md

git init
git add .
git commit -m "initial commit"

echo "Add the project repo's url:";

read projectRepoUrl;

#git remote add origin projectRepoUrl
#git push -u origin master

echo -e "configuring gitrepo ""\033[32m[OK]"
tput init

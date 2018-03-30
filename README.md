### This is a project for initilizing and creating project with gitrepo, npm, bower, and gulp

# Usage

`sh initproject.sh <projectname>`

Will do the following:

1. creates a folder named `<projectname>`
2. install the npm packages predefined in the `packages.josn.template` file.
3. during execution the script will ask you to privde the desired gitrepository url for the project
4. inits the gitrepo, sets the upstream based on the prompted `gitrepo url `
5. that's it. you're ready to code.

# Future features

1. creates the initial files for the web applications (`src`, `scss`, `js`, `fonts`, `img`, `dist`, etc)
2. inits `gulpfile.js` with `default` task 

Richard Zilahi – 2018

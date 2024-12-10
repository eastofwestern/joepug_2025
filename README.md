# library

Current EOW Library - PHP 7.2.01

STEPS TO START A NEW PROJECT

1. Clone this library to local folder
2. Run npm install to include required packages

PARCEL COMMANDS

1. npm run dev (This will watch the src folder for all JS files during DEV and Tailwind Changes)
2. npm run build (When ready to publish run the build command for PROD)

OPTIONAL PACKAGES

1. masonry | npm i masonry-layout
2. flickity | npm i flickity
3. JS Cookie npm i js-cookie

DATABASE SETUP

I. Set up website on DreamHost

1.  Go to Websites > Manage Websites tab
2.  Click Add Website
3.  Click "Create a subdomain". Type in the name of your subdomain, and select "eowdev.com" for the Parent domain
4.  Select the appropriate hosting option, and select the appropriate user
5.  Click "set up website"

II. Set up MySQL Database on DreamHost

1.  Go to Websites > MySQL Databases
2.  Enter the new database name, choose "mysql.eowdev.com" as the hostname
3.  Click "add new database now"
4.  Put anything for the username/password (we will assign eowdev user access later)
5.  Click "Add a user" next to the new database you created. Select "eowdev" as the new user.
6.  Log on to phpMyAdmin for DreamHost and import the cms_setup.sql to the new database

IV. Set up Cloudflare

1.  Add the A record to Cloudflare
2.  Add SSL through DreamHost after DNS setup

III. Push local Git repo to DreamHost server

1.  Create a bare repository on your DreamHost server.
   
    i. Log in to the server with this command
    ` ssh [username]@[server.dreamhost.com]`
    
    ii. Create a new directory for your new remote repository
    ```
        cd ~
        mkdir [projectname].eowdev.com.git
        cd ~/[projectname].eowdev.com.git
        git init --bare
        git symbolic-ref HEAD refs/heads/main
    ```
    iii. Run `ls -la` to confirm that the files and directories have been created, it should look like this:
    ```
       total 40
       drwxrwxr-x  7 dh_6xz7ms pg10989616 4096 Dec 10 19:21 .
       drwx--x--- 19 dh_6xz7ms adm        4096 Dec 10 19:21 ..
       -rw-rw-r--  1 dh_6xz7ms pg10989616   21 Dec 10 19:21 HEAD
       drwxrwxr-x  2 dh_6xz7ms pg10989616 4096 Dec 10 19:21 branches
       -rw-rw-r--  1 dh_6xz7ms pg10989616   66 Dec 10 19:21 config
       -rw-rw-r--  1 dh_6xz7ms pg10989616   73 Dec 10 19:21 description
       drwxrwxr-x  2 dh_6xz7ms pg10989616 4096 Dec 10 19:21 hooks
       drwxrwxr-x  2 dh_6xz7ms pg10989616 4096 Dec 10 19:21 info
       drwxrwxr-x  4 dh_6xz7ms pg10989616 4096 Dec 10 19:21 objects
       drwxrwxr-x  4 dh_6xz7ms pg10989616 4096 Dec 10 19:21 refs
    ```
    iv. Confirm the HEAD file is set to use main by running the command `cat HEAD`. You should see main is being used:
    `ref: refs/heads/main`
3.  Push local repo to the remote repo
    i. Exit the server and get back to your local repo
    ii. Add the empty DreamHost repo as a "remote" within your local git repo using this command:
    `git remote add dreamhost ssh://[user]@[server].dreamhost.com/~/[project].eowdev.com.git`
    iii. Check if the new remote exists by running `git remote show`, which should return "dreamhost"
    iv. Push the local repo to the DreamHost server
    `git push -u dreamhost main `

IV. Push live changes to the DreamHost website

1.  Add this line to connect.php
    `self::$conn = new mysqli("mysql.eowdev.com", "eowdev", "BOMhGywsQpMgs8", "[insert db name here]")`
2.  Log in to your web server via SSH
3.  CD into your remote repository directory, eg ` cd joepug.eowdev.com.git`
4.  Run nano and create a file named post-receive:
    `nano hooks/post-receive`
5.  Add this code to the file:
    `#!/bin/sh
GIT_WORK_TREE=/home/[username]/[example].eowdev.com git checkout -f main`
6.  Save and close
7.  Give the file execute rights:
    ` chmod +x hooks/post-receive`

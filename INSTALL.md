## Install Python:

Install [Python](https://www.python.org/downloads/) 3.8 or later to your local machine from their website.

## Clone the source code to your machine:

Run `git clone https://github.com/COSC481W-2021Fall/capstone-adam-and-the-mod-squad.git` from CMD or your web browser.

## Install packages:

Run `pip install django==3.2.7` and `pip install mysqlclient` from CMD.

## Install XAMPP

Install the [XAMPP](https://www.apachefriends.org/index.html) control panel which will provide access to Muninn's MySQL database. 

## Setting up local database

Once you have that installed, open XAMPP and click "Start" for the Apache server and MySQL. CLick "Admin" for MySQL and phpMyAdmin should load in your web browser. Click "New" and create a new database with a name of your choice.

## Migrating SQL data

Go to the directory where the source code is saved and type cmd in the File Explorer address bar. Once the CMD pops up with the repo as your current directory, run `activate` to switch over to the project's virtual environment. From there, run `python manage.py migrate`.

## Running Muninn locally

Run `python manage.py runserver`. Muninn should now be accessible locally from your web browser at http://127.0.0.1:8000/.



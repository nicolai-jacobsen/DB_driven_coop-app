# CS3200 Final Project
# Database-driven Northeastern Co-op Website
Nicolai Jacobsen

## How to setup and start the containers
**Important** - you need Docker Desktop installed

1. Clone this repository.  
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the `webapp` user. 
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 

## For setting up a Conda Web-Dev environment:

1. `conda create -n webdev python=3.9`
1. `conda activate webdev`
1. `pip install flask flask-mysql flask-restful cryptography flask-login`

## Flask App
The flask app folder contains APIs for three different personas, students, advisors and companies. Each contains get and post requests relevant to each persona, these blueprints are then used to form the flask app. Each route is used in the appsmith application to create an interactive and useful environment for advisors, students and companies.

## App Routes:
* Get Advisor Data
* Get Application Data
* Get major data
* Get student data
* Post update to application status
* Post a new application
* Get company data
* Get coop offers
* Post a new coop

## db
The database is created using a single db bootstrap file and docker. There are a total of 15 tables in the database, each containing relevant data to the three personas. This database is further explained by the relational diagrams and ER diagrams within the folder phase 2 deliverable pdf.

## Diagrams & Wireframes
Contains the database schema and wireframes showing the concept of the website

https://drive.google.com/file/d/1XNX8-e6AfQAOU2qY9XiC_Q7v7zMilraQ/view?usp=sharing

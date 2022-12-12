from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db
import random

companies = Blueprint('companies', __name__)

@companies.route('/companies')
def get_companies():
   cur = db.get_db().cursor()
   cur.execute('select * from Companies')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@companies.route('/companies/coop_offers')
def get_coops():
   cur = db.get_db().cursor()
   cur.execute('select * from Coop_offers')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@companies.route('/companies/post_coop', methods=['POST'])
def post_coop():
   current_app.logger.info(request.form)
   cur = db.get_db().cursor()
   position = request.form['position']
   pref_majors = request.form['pref_majors']
   pref_skills = request.form['pref_skills']
   skills = request.form['skills']
   description = request.form['description']
   min_gpa = request.form['min_gpa']
   start_date = request.form['start_date']
   end_date = request.form['end_date']
   comp_id = request.form['company_id']
   coop_id = random.randint(100000000, 999999999)
   query = f'INSERT INTO Coop_offers(coop_id, Position, Pref_majors, Pref_skills, Skills, Description, Min_GPA, Start_date, End_date, Company_id) VALUES(\"{coop_id}\", \"{position}\", \"{pref_majors}\", \"{pref_skills}\", \"{skills}\", \"{description}\", {min_gpa}, \"{start_date}\", \"{end_date}\", \"{comp_id}\")'
   cur.execute(query)
   db.get_db().commit()
   return "Success!"
from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

students = Blueprint('students', __name__)

@students.route('/students')
def get_students():
   cur = db.get_db().cursor()
   cur.execute('select * from Students')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@students.route('/students/update_appstatus', methods=['POST'])
def update_appstatus():
   current_app.logger.info(request.form)
   cur = db.get_db().cursor()
   nu_id = request.form['nu_id']
   coop_id = request.form['coop_id']
   status = request.form['status']
   query = f'UPDATE Applied SET Status=\"{status}\" WHERE (Student_id=\"{nu_id}\" AND Coop_id=\"{coop_id}\")'
   cur.execute(query)
   db.get_db().commit()
   return "Success!"

@students.route('/students/add_application', methods=['POST'])
def add_application():
   current_app.logger.info(request.form)
   cur = db.get_db().cursor()
   nu_id = request.form['nu_id']
   coop_id = request.form['coop_id']
   date = request.form['date']
   status = request.form['status']
   query = f'INSERT INTO Applied(Student_id, Coop_id, Date, Status) VALUES(\"{nu_id}\", \"{coop_id}\", \"{date}\", \"{status}\")'
   cur.execute(query)
   db.get_db().commit()
   return "Success!"




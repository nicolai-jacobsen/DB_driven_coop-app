from flask import Blueprint, request, jsonify, make_response
import json
from src import db

advisors = Blueprint('advisors', __name__)

@advisors.route('/advisors')
def get_advisors():
   cur = db.get_db().cursor()
   cur.execute('select * from Advisors')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@advisors.route('/applications')
def get_applied():
   cur = db.get_db().cursor()
   cur.execute('select * from Applied')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@advisors.route('/majors')
def get_majors():
   cur = db.get_db().cursor()
   cur.execute('select * from Majors')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)



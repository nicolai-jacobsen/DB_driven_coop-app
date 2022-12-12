from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

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
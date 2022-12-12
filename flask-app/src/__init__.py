from flask import Flask

from flaskext.mysql import MySQL

db = MySQL()

def create_app():
    app = Flask(__name__)

    app.config['SECRET_KEY'] = 'verysecretkey!!'

    app.config['MYSQL_DATABASE_HOST'] = 'db'
    app.config['MYSQL_DATABASE_PORT'] = 3306
    app.config['MYSQL_DATABASE_USER'] = 'webapp'
    app.config['MYSQL_DATABASE_PASSWORD'] = open('/secrets/db_password.txt').readline()
    app.config['MYSQL_DATABASE_DB'] = 'neu_coop_db'

    db.init_app(app)

    from src.views import views
    from src.students.students import students
    from src.advisors.advisors import advisors
    from src.companies.companies import companies

    app.register_blueprint(views, url_prefix='/classic')
    app.register_blueprint(students, url_prefix='/classic')
    app.register_blueprint(companies, url_prefix='/classic')
    app.register_blueprint(advisors, url_prefix='/classic')

    return app


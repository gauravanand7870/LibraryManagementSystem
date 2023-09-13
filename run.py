from app import app, register_blueprints, init_dao

init_dao(app)
register_blueprints(app)

if __name__ == "__main__":
    app.run(debug=True)

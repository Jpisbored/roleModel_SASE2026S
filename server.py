from fastapi import FastAPI
import mysql.connector
from datetime import datetime

app = FastAPI()

db = mysql.connector.connect(
    host="localhost",
    user="roleModels",
    password="notadmin123",
    database="sase"
)

@app.get("/session")
def get_session(id: str):
        cursor = db.cursor(dictionary=True)
        try:
            cursor.execute("SELECT * FROM session WHERE ID = (%s)", (id))
            return cursor.fetchall()
        except():
            return 200

@app.post("/add_session")
def add_session(id: str, dt: datetime):
        cursor = db.cursor(dictionary=True)
        cursor.execute("INSERT INTO session (id, date, barCount, drinkCount, shotCount) VALUES (%s, %s, %s, %s, %s)", (id, dt, 0, 0, 0))
        db.commit()

        

@app.post("/add_bar")
def add_bar(name: str):
        cursor = db.cursor()
        cursor.execute("INSERT INTO bar (name) VALUE (%s)",(name))
        db.commit()
        return {"Status":"bar added"}

@app.get("/bar")
def get_bar():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM bars")
    return cursor.fetchall()


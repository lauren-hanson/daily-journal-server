import sqlite3
import json
from models import Moods

MOODS = [
    
]

def get_all_moods(): 
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            m.id, 
            m.type
        FROM Moods m
        """)

        moods = []

        dataset = db_cursor.fetchall()
        for row in dataset: 
            entry = Moods(row['id'], row['type'])

            moods.append(entry.__dict__)

    return moods

def get_single_mood(id): 
    with sqlite3.connect('./dailyjournal.sqlite3') as conn: 
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT 
            m.id, 
            m.type
        FROM Moods m 
        WHERE m.id = ? 
        """, (id, ))

        data = db_cursor.fetchone()

        mood = Moods(data['id'], data['type'])

        return mood.__dict__

def delete_mood(id):
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        db_cursor = conn.cursor()
        db_cursor.execute("""
        DELETE FROM moods
        WHERE id = ?
        """, (id, ))
import sqlite3
import json
from models import Entries, Moods

ENTRIES = [
    
]

def get_all_entries(): 
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            e.id, 
            e.mood_id,
            e.text, 
            e.tag_id, 
            m.mood mood 
        FROM Entries e
        JOIN Moods m 
            ON m.id = e.mood_id
        """)

        entries = []

        dataset = db_cursor.fetchall()
        for row in dataset: 
            entry = Entries(row['id'], row['mood_id'], row['text'],row['tag_id'])

            mood = Moods(row['mood_id'], row['mood'])

            entry.mood = mood.__dict__

            entries.append(entry.__dict__)

    return entries

def get_single_entry(id): 
    with sqlite3.connect('./dailyjournal.sqlite3') as conn: 
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT 
            e.id, 
            e.mood_id, 
            e.text,
            e.tag_id
        FROM Entries e
        WHERE e.id = ? 
        """, (id, ))

        data = db_cursor.fetchone()

        entry = Entries(data['id'], data['mood_id'], data['text'],data['tag_id'])

        return entry.__dict__

def delete_entry(id):
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        db_cursor = conn.cursor()
        db_cursor.execute("""
        DELETE FROM entries
        WHERE id = ?
        """, (id, ))
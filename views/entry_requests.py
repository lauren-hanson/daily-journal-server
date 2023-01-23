import sqlite3
import json
from models import Entries

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
            e.tag_id, 
            e.text
        FROM Entries e
        """)

        entries = []

        dataset = db_cursor.fetchall()
        for row in dataset: 
            entry = Entries(row['id'], row['mood_id'], row['tag_id'], row['text'])

            entries.append(entry.__dict__)

    return entries

def get_single_entry(id): 
    requested_entry = None
    for entry in ENTRIES: 
            if entry["id"] == id: 
                requested_entry = entry

    return requested_entry
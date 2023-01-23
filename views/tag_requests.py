import sqlite3
import json
from models import Tags

TAGS = [
    
]

def get_all_tags(): 
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            t.id, 
            t.type
        FROM Tags t
        """)

        tags = []

        dataset = db_cursor.fetchall()
        for row in dataset: 
            tag = Tags(row['id'], row['type'])

            tags.append(tag.__dict__)

    return tags

def get_single_tag(id): 
    with sqlite3.connect('./dailyjournal.sqlite3') as conn: 
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT 
            t.id, 
            t.type
        FROM Tags t
        WHERE t.id = ? 
        """, (id, ))

        data = db_cursor.fetchone()

        tag = Tags(data['id'], data['type'])

        return tag.__dict__

def delete_tag(id):
    with sqlite3.connect("./dailyjournal.sqlite3") as conn:
        db_cursor = conn.cursor()
        db_cursor.execute("""
        DELETE FROM tags
        WHERE id = ?
        """, (id, ))
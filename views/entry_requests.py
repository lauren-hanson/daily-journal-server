ENTRIES = [
    {
        "id": 1, 
        "mood_id": 3, 
        "tag_id": 4, 
        "text": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    }
]

def get_all_entries(): 
    return ENTRIES

def get_single_entry(id): 
    requested_entry = None
    for entry in ENTRIES: 
            if entry["id"] == id: 
                requested_entry = entry

    return requested_entry
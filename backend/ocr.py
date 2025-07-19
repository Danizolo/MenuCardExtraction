import easyocr
import sys
import json

reader = easyocr.Reader(['en'], gpu=False,verbose=False)
results = reader.readtext(sys.argv[1])


dish_names = [
    text.strip()
    for _, text, _ in results
    if len(text.strip()) > 2 and
       text.strip().isalpha() and
       text.strip().lower() not in ['menu', 'price', 'mrp', 'drinks', 'veg', 'nonveg']
]


print(json.dumps(dish_names))
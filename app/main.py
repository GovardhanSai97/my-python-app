from fastapi import FastAPI

# Create an instance of FastAPI
app = FastAPI()

# A simple route
@app.get("/")
def read_root():
    return {"message": "Hello, World!"}

# Route with a parameter
@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "query": q}

# Post route example
@app.post("/create-item/")
def create_item(name: str, description: str):
    return {"name": name, "description": description}
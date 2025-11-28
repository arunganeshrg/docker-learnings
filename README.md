# Simple Flask app

Files added:
- `app.py` — minimal Flask application with a `/` route that returns "Hello, Flask!".
- `requirements.txt` — lists `Flask`.

Quick start (recommended using a venv):

```bash
python3 -m venv .venv
source .venv/bin/activate    # on macOS / zsh
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python app.py
```

Alternatively, to run a quick programmatic check without starting the server:

```bash
# from project root
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python -c "from app import app; print(app.test_client().get('/').data.decode())"
```

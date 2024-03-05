#!/bin/bash
ls
exec python3 app.py &
exec python3 main.py

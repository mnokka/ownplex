#!/usr/bin/env nix-shell
#!nix-shell -i python3 -p "python3.withPackages(ps: [ ps.flask ])"
# nixos shebang

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_plex():
    return 'Hello, Plex!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=33400) 
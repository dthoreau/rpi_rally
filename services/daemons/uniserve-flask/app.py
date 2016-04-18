#!/usr/bin/env python3

import connexion

if __name__ == '__main__':
    app = connexion.App(__name__, specification_dir='./swagger/')
    app.add_api('swagger.yaml', arguments={'title': 'A second cut at writing the code initial formed in web.py for the PiMoroni UnicornHAT\n'})
    app.run(port=8080)

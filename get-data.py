from urllib.parse import urlparse, parse_qs
import os

URL='http://flask-app:5000/data'
parsed_url = urlparse(URL)
parse_qs(parsed_url.query)

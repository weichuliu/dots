#!/usr/bin/env python3
import os
import sys
from subprocess import Popen
from urllib.parse import quote_plus

url_google_hp = 'https://www.google.com'
url_google_search = 'https://www.google.com/search?ie=UTF-8&q={}'
url_google_lucky = 'https://www.google.com/search?ie=UTF-8&btnI=1&q={}'
url_gmap_search = 'https://www.google.com/maps/search/?api=1&query={}'
url_gmap_dir = 'https://www.google.com/maps/dir/?api=1&origin={}&destination={}'

def google_search(query, feeling_lucky=False):
    query_url = (url_google_lucky if feeling_lucky else url_google_search).format(quote_plus(query))
    return query_url

def google_map(query):
    if ' to ' in query or 'から' in query:
        if ' to ' in query:
            origin, destination = query.split(' to ', 1)
        else:
            origin, destination = query.split('から', 1)
        return url_gmap_dir.format(quote_plus(origin), quote_plus(destination))
    else:
        return url_gmap_search.format(quote_plus(query))

if __name__ == '__main__':
    argv = sys.argv[1:]
    if len(argv) == 0:
        query_url = url_google_hp
    elif argv[0] == '-m':
        argv.pop(0)
        query_url = google_map(' '.join(argv))
    else:
        feeling_lucky = False
        if argv[0] == '-l':
            feeling_lucky = True
            argv.pop(0)
        query_url = google_search(' '.join(argv), feeling_lucky)
    print(query_url, file=sys.stderr)
    if "INCOG" in os.environ:
        Popen(['open', '-a', 'Google Chrome', '--new', '--args', '--incognito', query_url])
    else:
        Popen(['open', query_url])

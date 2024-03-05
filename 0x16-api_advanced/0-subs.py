#!/usr/bin/python3
"""use reddit api to print the number of subscribers"""
import requests


def number_of_subscribers(subreddit):
<<<<<<< HEAD
    """Return the total number of subscribers on a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json" .format(subreddit)
    headers = {
            "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov)"
    ~}
=======
    """Reddit API endpoint for subreddit information"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'u/nourhan1414'}
>>>>>>> 050465579d663be54d19d5b8aa0a561df35fab4a
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return 0
    data = response.json().get("data")
    subscribers = data.get('subscribers')
    return subscribers

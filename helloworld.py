import requests

resp = requests.get("https://loripsum.net/api")
resp.raise_for_status()
print(resp.text)

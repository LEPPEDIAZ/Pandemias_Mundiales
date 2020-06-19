import sharepy_custom as sharepy
import json

# (1) Authenticate
s = sharepy.connect("example.sharepoint.com")

# (2) Get file information
r = s.get("https://mspasgt-my.sharepoint.com/:x:/r/personal/jguerra_mspas_gob_gt/_layouts/15/Doc.aspx?sourcedoc=%7BB321BA42-1A1E-407D-8BC8-42B89F1E81B9%7D&file=infocovid19.xlsx&action=default&mobileredirect=true&cid=757a8035-53fd-4821-87fc-4a5baea4f328")
data = r.json()
file = open("sharepoint.json", "w")
file.write(json.dumps(data, indent=4))
print("json file has been generated")

# (3) Download file
r = s.getfile("https:// example.sharepoint.com/GroupSites/HR/_api/web\
/GetFileByServerRelativeUrl('/GroupSites/HR/Shared Documents/Team.xlsx')/$value"\
, filename = 'team.xlsx')
print("File Downloaded")
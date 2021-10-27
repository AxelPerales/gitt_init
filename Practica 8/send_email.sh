#!/bin/bash/
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json

data = {}
# {
# "user": ""
# "pass": ""
# }
#
#
with open("pass.json") as f:
    data = json.load(f)

email_msg = MIMEMultipart()
email_msg["From"] = data["user"]
receipents = ["axel.peralest@uanl.edu.mx"]
email_msg["To"] = ", ".join(receipents)
email_msg["Subject"] = "Salu2"


message = "Hola "
email_msg.attach(MIMEText(message, "plain"))


server = smtplib.SMTP("smtp.office365.com:587")
server.starttls()

server.login(data["user"], data["pass"])


server.sendmail(email_msg["From"], receipents, email_msg.as_string())
server.quit()
print("successfully sent email to %s:" % (email_msg["To"]))

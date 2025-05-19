import mysql.connector

dataBase = mysql.connector.connect(

host ="localhost",

user ="root",

passwd ="@Bh!$@!123"

)

print(dataBase)

# Disconnecting from the server

dataBase.close()
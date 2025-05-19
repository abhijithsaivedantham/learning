# importing required libraries

import mysql.connector

dataBase = mysql.connector.connect(

host ="localhost",

user ="root",

passwd ="@Bh!$@!123"

)

print(dataBase)

cursorObj= dataBase.cursor()
cursorObj.execute("CREATE DATABASE abhidb")#create database

# Disconnecting from the server

dataBase.close()
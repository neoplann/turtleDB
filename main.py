#from tkinter import *
from art import *
import mysql.connector
import os



con = mysql.connector.connect(

    host="192.168.56.101",
    user="test",
    password="1234567890",
    database="turtles"

)

try:
    os.system("cls")

    splash=text2art("vzlomKAZINO")
    print(splash)


    while True:

        print("\n")

        log = input("Enter the login!\n")

        cur = con.cursor()
        cur.execute(f'SELECT pass FROM users WHERE login = "{log}";')

        for i in cur.fetchall():
            print("Password: ",i)
                            
except EOFError:
    con.close()
    os.system("cls")
    exit()


'''
def vzlom():
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM users;")



root = Tk()
root.title("Взлом КАЗИНО")
root.geometry("640x480")


ass = Label(text="имя пользователя", font = "Arial 20")
ass.pack(anchor=NW, padx=20, pady=20)

assResult = Entry(font="Arial 20")
assResult.pack(anchor=NW, padx=20, pady=10)

assButton = Button(command = vzlom,text="взлом", font="Arial 20")
assButton.pack(anchor=NW, padx=20, pady=10)


resLabel = Label(text="результат", font = "Arial 20")
resLabel.pack(anchor=NW, padx=20, pady=20)


resEntry = Entry(font="Arial 20")
resEntry.pack(anchor=NW, padx=20, pady=10)


root.mainloop()
'''
#use text files for recycle_tips
#text file with recycle tips on there, send in order
#find a way to send notifications
#instagram-style through swift
#method to add tips
#class Recycle_tip:
#  def __init__():
class Recycle_tip:
  def __init__(self):
    tips = []
    f = open("Recycling_Tips.txt", "r")
    line = f.readline()
    while line:
      tips.append(line)
      line=f.readline()
    f.close()
    for tip in tips:
      print(tip)

import sqlite3
conn = sqlite3.connect('database')
string = '''CREATE TABLE IF NOT EXISTS Customer
  (Customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
  Email_ID TEXT NOT NULL,
  Name TEXT NOT NULL);'''
conn.execute("PRAGMA foreign_keys = ON")
conn.execute(string)

conn.execute('''CREATE TABLE IF NOT EXISTS Material(
  RecyclingID INT PRIMARY KEY NOT NULL,
  Type TEXT NOT NULL);''')

#conn.execute('''CREATE TABLE IF NOT EXISTS Shape(
#  ShapeID INT PRIMARY KEY NOT NULL,
#  Shape TEXT NOT NULL,
#  Average_weight REAL NOT NULL);''')
#print("Create Shape table")
string1 = '''CREATE TABLE IF NOT EXISTS Recycling_Customer(
  RecyclingCustomerID INT PRIMARY KEY NOT NULL,
  Customer_id INT,
  Material_id INT,
  Quantity INT NOT NULL,
  TOTAL INT NOT NULL,
  PREVIOUS_TOTAL INT,
  FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),  
  FOREIGN KEY(Material_id) REFERENCES Material(RecyclingID));'''
conn.execute(string1)
conn.commit
 

class Art_project:
  def __init__(self,title,required_material):
    self.title = title
    self.required_bags = required_material
    file = open("crafts.txt", "r")
    project = [] 
    line = file.readline().strip("\n")
    while line:
      project.append(list(line.split(",")))
      line = file.readline().strip("\n")
    file.close()
    project.sort(key = lambda x: x[1])
    for i in range (len(project)):
      if title == project[i][1] and required_material >= int(project[i][0]):
        print(project[i][2]+ ' ' + project[i][3])


class New_recycle_entry:
  global reusable
  def __init__(self,action):
    user = int(input())
    button1 = ""
    print("1: aluminum")
    print("2: cardboard")
    print("3: glass")
    print("4: plastic")
    print("Choose your option: ")
    if(user == 1):
      button1 = "aluminum"
    elif(user ==2):
      button1 = "cardboard"
    elif(user == 3):
      button1 = "glass"
    elif(user == 4):
      button1 = "plastic"

    if action == 'reuse':
      print("1: wrapper")
      print("2: bag")
      print("3: bottle")
      print("4: can")
      print("5: jar")
      print("6: carton")
      print("7: box")
      print("8: utensil")

      print("Choose your option: ")
      button2 = int(input())
      if(button1 == "plastics"):
        if (button2 == 1):
          reusable[0][2] += 1
        elif (button2 == 2):
          reusable[1][2] += 1
        elif (button2 == 3):
          reusable[2][2] += 1
        elif (button2 == 6):
          reusable[3][2] += 1
        elif (button2 == 8):
          reusable[4][2] += 1

      elif(button1 == "aluminum"):
        if (button2 == 4):
          reusable[5][2] += 1
      
      elif(button1 == "glass"):
        if (button2 == 4):
          reusable[6][2] += 1
        elif (button2 == 4):
          reusable[7][2] += 1

      elif(button1 == "cardboard"):
        if(button2 == 7):
          reusable[8][2] +=1

    if action == 'recycle':
      check = 0
      while check != 5:
        print("1: aluminum")
        print("2: cardboard")
        print("3: glass")
        print("4: plastic")
        print("5: cancel")
        check = input("What are you recycling? ")
        plastic_total = 0
        aluminum_total = 0
        cardboard_total = 0
        glass_total = 0
        total = 0
        if check == 1:
          for i in range(0,len(reusable)):
            if reusable[i][0] == "aluminum":
              aluminum_total += reusable[i][2]
            elif reusable[i][0] == "cardboard":
              cardboard_total += reusable[i][2]
            elif reusable[i][0] == "glass":
              glass_total += reusable[i][2]
            elif reusable[i][0] == "plastic":
              plastic_total += reusable[i][2]   
      total = plastic_total + aluminum_total + cardboard_total + glass_total
      print("The total plasic you recycle is " + str(plastic_total))
      print("The total aluminum you recycle is " + str(aluminum_total))
      print("The total cardboard you recycle is " + str(cardboard_total))
      print("The total glass you recycle is " + str(glass_total))
      print("The combined total: " + str(total))
    
    if action == 'check recyclable':
      #what it is made of
      recyclable = ["aluminum", "steel", "cardboard", "glass", "paper", "plastic"]
      user_input = input('What object would you like to check? ')
      if user_input in recyclable:
        print("You can recycle this item")
      else:
        print("You cannot recycle this item")

reusable = [["plastic", "wrapper", 0],["plastic", "bag", 0], ["plastic", "bottle", 0], ["plastic", "carton", 0], ["plastic", "utensil", 0], ["aluminum", "can", 0], ["glass", "jar", 0], ["glass", "bottle", 0], ["cardboard", "box", 0]]  
def main():
  Customer_email = str(input())
  Name = input()
  #string3= "SELECT customer_id, email_ID, Name from Customer where email_ID = " + Customer_email
  #print(string3)
  cursor = conn.execute("SELECT customer_id, email_ID, Name from Customer")
  #result = cursor.fetchone()
  #print(result)
  #cursor=conn.execute("SELECT Id, Name, Address, Salary from COMPANY")
  for row in cursor:
    if Customer_email == row[1]:
      customer_id = row[0]
      break;
    else:  
      conn.execute("INSERT INTO Customer(email_ID,Name) \ VALUES ("+ Customer_email + ", " + Name +")");
  
  action = input("Do you want to reuse, recycle, or check recyclable?")
  New_recycle_entry(action)

  Art_project("bottle",50)
  Art_project("medium wrapper", 2)
  
if __name__ == "__main__":
  main()

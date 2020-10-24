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
      line = f.readline()
    f.close()
    for tip in tips:
        print(tip)

import sqlite3
conn = sqlite3.connect('database')
conn.execute("PRAGMA foreign_keys = ON")

conn.execute('''CREATE TABLE IF NOT EXISTS Customer
  (ID INT PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL);''')
print("Create Customer table")

conn.execute("INSERT INTO Customer(ID,Name)\
  VALUES (1, 'Abby')");
conn.execute("INSERT INTO Customer(ID,Name)\
  VALUES (2, 'Johnathan')");

conn.execute('''CREATE TABLE Material(
  RecyclingID INT PRIMARY KEY NOT NULL,
  Type TEXT NOT NULL,
  Average_weight REAL NOT NULL);''')
print("Create Material table")

conn.execute("INSERT INTO Material(RecyclingID,Type,Average_weight) \
  VALUES (20, 'Plastic', 5)");

conn.execute('''CREATE TABLE IF NOT EXISTS Shape(
  ShapeID INT PRIMARY KEY NOT NULL,
  Shape TEXT NOT NULL,
  Average_weight REAL NOT NULL);''')
print("Create Shape table")

conn.execute("INSERT INTO Shape(ShapeID,Shape,Average_weight) \
  VALUES (300, 'bottle', 5.5)");

conn.execute('''CREATE TABLE IF NOT EXISTS Recycling_Customer(
  RecyclingCustomerID INT PRIMARY KEY NOT NULL,
  Customer_id INT,
  Material_id INT,
  Quantity INT NOT NULL,
  Shape_id INT,
  FOREIGN KEY(Customer_id) REFERENCES Customer(CustomerID),  
  FOREIGN KEY(Material_id) REFERENCES Material(RecyclingID),
  FOREIGN KEY(Shape_id) REFERENCES Shape(ShapeID));''')
conn.close()
 
#store amount of reusable materials
#import new_recycle_entry to get the amount of reusable items
#text file to store info
#link the project ideas
#import New_recycle_entry
class Art_project:
  def __init__(self,title,required_material):
    self.title = title
    self.required_bags = required_material
    file = open("art_project.txt", "r")
    project = [] 
    line = file.readline().strip("\n")
    while line:
      project.append(list(line.split(",")))
      line = file.readline().strip("\n")
    file.close()
    project.sort(key = lambda x: x[1])
    for i in range (len(project)):
      if title == project[i][1] and required_material >= int(project[i][0]):
        print(project[i][2])


#home page
#should this be recycled?
#notifies the user of how much plastic is used
#stores the amount of plastic is used
#stores reusable materials
#class New_recycle_entry:
#  def __init__():
    
  #should this be recycled?
#  def recyclable:
    
#  def plastic_used:

  
#import Recycle_tip
#import Art_project
#import New_recycle_entry
def main():
  Recycle_tip()
  Art_project("bottle",50)
  Art_project("medium wrapper", 2)
  
if __name__ == "__main__":
  main()

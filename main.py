#use text files for recycle_tips
#text file with recycle tips on there, send in order
#find a way to send notifications
#instagram-style through swift
#method to add tips
class Recycle_tip:
  def __init__():

    
#store amount of reusable materials
#import new_recycle_entry to get the amount of reusable items
#text file to store info
#link the project ideas
import New_recycle_entry
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
class New_recycle_entry:
  def __init__():
    
  #should this be recycled?
  def recyclable:
    
  def plastic_used:

  
import Recycle_tip
import Art_project
import New_recycle_entry
def main():
  
  Dress = Art_project("Plastic Bag Dress","Dress made out of plastic grocery bags",100,0)
  Pencil_pouch = Art_project("Plastic pencil case","Pencil pouch made out of candy wrappers",0,100)
  
if __name__ == "__main__":
  main()



#home page
#should this be recycled?
#notifies the user of how much plastic is used
#stores the amount of plastic is used
#stores reusable materials
#are you reusing or recycling

class New_recycle_entry:
  def __init__(self):
    self

  #three options - reuse, recylce, or check for recycle
  #include a list of materials that could be used to the art project
  def reuse_recycle_check(self,action):

    #maybe have three buttons for these three options when switching to swift?
    #action = input("Do you want to reuse, recycle, or check recyclable?")

    if action == 'reuse':
      #store into database, keep track of how many of each item there is
      #store in textfile for now
      #_ more objects and you can make a ______!
      obj = input('What object would you like to reuse? ')
      objCount = 0

      
      

    
    if action == 'recycle':
      plastic_used = 0
      plastic_check = input("Are you recycling plastic? ")
      if plastic_check == 'yes':
        object_options= ['small bottle', 'big bottle']
        obj = input('What object do you wnat to recycle? ')


    if action == 'check recyclable':
       user_input = input('What object would you like to check? ')
       recyclables = open('recyclables.txt')
       if user_input in recyclables.read():
         print("You can recycle this item")
       else:
          print("You cannot recycle this item")
       recyclables.close()
      
  
    
  def plastic_used(v):
    return v

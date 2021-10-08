# Directions

#     Read over the code in process.py file and add comments explaining what you think each line is doing. Recall that in Python, you can specify a comment using an octothorpe (#).

#     Change the script to display sales info for Monday instead of Tuesday.




log_file = open("um-server-01.txt") # I think this line is used to open and retrieve information from another file. 


def sales_reports(log_file): # this line is a start of a function which is being used to gather the information from the sales report that has been logged within the file.   
    for line in log_file: # This line is being used to loop through the file. 
        line = line.rstrip() # I believe this line is being used to remove any whitespaces from the fil so that it can be readable without there being too much space between the information. 
        day = line[0:3] # I think this line is being used for a list which is being used as days in the list.  
        if day == "Mon": #this line tells the code to look for days that are equal to what the individual is looking for. WAS ORIGINASLLY TUESDAY ("Tue") but I change it to MONDAY ("Mon")
            print(line) # This line is then used to print all information that was requested within the code. 


sales_reports(log_file) #So any sales that were made MONDAY were then printed with the the date, quantity, type of melon and delivered to the user ID.




if instance_exists(objQuery) exit
my_id=instance_create(x,y,objQuery) 
my_id.choice1=0 //FILE
my_id.choice2=4 //QUIT
my_id.query="UNSAVED CHANGES WILL BE LOST!#ARE YOU SURE YOU WANT TO QUIT?"

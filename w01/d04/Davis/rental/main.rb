#inputs:
# people, apartments, buildings

#behavior:
	#create 1 building for user
	#only 1 building created

	#menu
		#create person
			#get person to initialize
			#then create new person
			#return to menu

		#create apartment

		#list apaartment
		#list people in 1 apartment
		#quit
#end


#define building
	#array of apartments
#define apartments within building
	#array of renters
#define people within apartment


#loop until user decides to quit
	#present menu of choices
		#create person
			#get person to initialize
			#then create new person
			#return to menu
			#re-ask for menu
		#create apartment
			#stuff
			#re-ask for menu
		#list apartments in building
			#stuff
			#re-ask for menu
		#list people in given apartment in building
			#stuff
			#re-ask for menu
		#else
			#tell retard that this option not part of menu
			#re-ask for menu
	#end
#end
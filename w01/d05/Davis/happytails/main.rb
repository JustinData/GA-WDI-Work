#structure similar to rental app
#ie hash <- array <- data
#store as ObjectID's
#call methods as needed

require 'animal'
require 'client'
require 'shelter'

#create new shelter


#display menu options
#menu loop
	#selection start
	#1 create animal
		#animal input

		#does client specified / owner exist? yes
				
			#add animal to specified client

		# no

			#create? yes or no loop
				#do you want to create client? and add animal? yes
					#create client
					#add animal to created client
				#no
					#reprompt for (animal input)
				#else
					#reprompt for (yes or no loop)
				#end
			
			#end

		#else
			#error message
		#end

	#2 create client
		#client input

		#does client exist? yes
			#reprompt (client input)
		#no
			#create client
		#else
			#reprompt client input
		#end
	
	#else error message
	
	#end

	#reprompt for input
#end
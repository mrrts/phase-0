names_master = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

## PSEUDOCODE
# Create results array, which will be an array of group arrays
# Iterate through names master list array with indexes
# Push each name into array to hold the small group
# If the index+1 is divisible by 4
# 	The array is finished
#   Push the array into the results array
# If the final group array has fewer than 3 people
#  	Put the first person into the second-to-last group
#  	Put the second person (if there is one) into the third-to-last group
# Return the results array 
# Perhaps make a results hash that has "Group 1" as the key, and the group array as the value


def make_groups(name_master_list, group_size, min_group_size)
	groups = {}
	group_num = 1
	name_master_list.each_with_index do |name, index|
		groups["Group #{group_num}"] ||= []
		groups["Group #{group_num}"] << name
		if (index + 1) % group_size == 0 || name_master_list[index + 1] == nil
			group_num += 1
		end
	end
	groups
end

p make_groups(names_master, 4, 3)
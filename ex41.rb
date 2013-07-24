def prompt()
  print "> "
end


def death()
  quips = ["You died. You kinda suck at this.", 
  	"Nice job, you died...jackass.",
    "I have a small puppy that's better at this."]
  puts quips[rand(quips.length())]
  Process.exit(1)
end

def central_corridor()
  corridor_copy = <<-HEREDOC	
  The Gothons of Planet Percal #25 have invaded your ship and destroyed
  your entire crew.  You are the last surviving member and your last
  mission is to get the neutron destruct bomb from the Weapons Armory
  put it in the bridge,and blow the ship up after getting into an
  escape pod.\n
  You're running down the central corridor to the Weapons Armory when
  a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
  flowing around his hate filled body.  He's blocking the door to the 
  armory and about to pull a weapon to blast you.
  HEREDOC
  puts corridor_copy

  prompt()
  action = gets.chomp.downcase()

  if action == "shoot!"
  	shoot = <<-HEREDOC
  	Quick on the draw you yank out your blaster and fire it at the Gothon.
  	His clown costume is flowing and moving around his body, which throws
  	off your aim.  Your laser hits his costume but missed him entirely. This
  	completely ruins his brand new costume his mother bought him, which
  	makes him fly into an insane rage and blast you repeatedly in teh face until
  	you are dead. Then he eats you.
  	HEREDOC
  	puts shoot
  	return :death

  elsif action == "dodge!"
  	dodge = <<-HEREDOC
	Like a world class boxer you dodge, weave, slip and slide right
  	as the Gothon's blaster cranks a laser past your head
  	In the middle of your artful dodge your foot slips and you
  	bang your head on the metal wall and pass out.
  	You wake up shortly after only to die as the Gothon stomps on
  	your head and eats you
  	HEREDOC
  	puts dodge
  	return :death

  elsif action == "tell a joke"
    joke = <<-HEREDOC
  	Lucky for you they made you learn Gothon insults in the academy
  	You tell the one Gothon joke you know:
  	Here's the joke.GHJDF FHFHF FHDSHDFH FHDSFhsdf....dhffh!
  	The Gothon stops, tries not the laugh, then busts out laughing and can't move.
  	While he's laughing you run up and shoot him square in the head
  	putting him down, then jump through the armory door.
    HEREDOC

    puts joke

  	return :laser_weapon_armory
  else
  	puts "DOES NOT COMPUTE!"
  	return :central_corridor
  end
end

def laser_weapon_armory()
  laser_armory_prep = <<-HEREDOC	
  You do a dive roll into the armory, crouch and scan the room
  for more Gothons that might be hiding. It's dead quiet. Too quiet
  You stand up and run to hte far side of the room and find the
  neutron bomb in its container.  There's a keypad lock on the box
  and you need the code to get the bomb out. If you get the code
  wrong 10 times then the lock closes forever and you can't
  get the bomb. The code is 3 digits.
  HEREDOC

  puts laser_armory_prep
  code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
  cheat = "%s" % ["cheater"]
  print "[keypad]> "
  guess = gets.chomp()
  guesses = 0

  while (guess != code) && (guess != cheat) && (guesses < 10)
  	puts "BZZZZZZZEED"
  	guesses += 1
  	print "[keypad]> "
  	guess = gets.chomp
  end
  
  if (guess == code) || (guess == cheat)
  	good_guess = <<-HEREDOC
  	The container clicks open and the seal breaks, letting gass out.
  	You grab the neutron bomb and run as fast as you can to the
  	bridge where you must place it in the right spot.
  	HEREDOC

  	puts good_guess
  	return :the_bridge
  else
  	puts "The lock buzzes one last time and then you hear a sickening"
  	puts "melting sound as the mechanism is fused together"
  	puts "You decide to sit there , and finally the Gothons blow up the"
  	puts "ship from their ship and you die."
  	return :death
  end
end

def the_bridge()
  bridge_copy = <<-HEREDOC
  You burst onto the bridge with the neutron destruct bomb
  under your arm and surprise 5 Gothons who are trying to
  take control of the ship. Each of them has an even uglier
  clown costume than the last. They haven't pulled their
  weapons out yet, as they see the active bomb under your
  arm and don't want to set it off.
  HEREDOC
  puts bridge_copy

  prompt()
  action = gets.chomp()

  if action == "throw the bomb"
  	throw_bomb = <<-HEREDOC
    In a panic you throw the bomb at the group of Gothons
    and make a leap for the door. Right as you drop it a
    Gothon shoots you right in the back killing you
    As you die you se another Gothon frantically trying to disarm the bomb.
    You die knowing they wil probably blow up when
    it goes off
    HEREDOC
    puts throw_bomb
    return :death

  elsif action == "slowly place the bomb"
   bomb_placement = <<-HEREDOC
   	You point your blaster at the bomb under your arm
    and the Gothons put their hands up and start to sweat
    You inch backward to the door, open it, and then carefully
    place the bomb on the floor, pointing your blaster at it.
    You then jump back through the door, pucn the close button
    and blast the lock so the Gothons can't get out
    Now that the bomb is placed you run to the escape pod to
    get off this tin can
   HEREDOC
   puts bomb_placement
    return :escape_pod
  else
    puts "DOES NOT COMPUTE!"
    return :the_bridge
  end
end

def escape_pod()
  dying_pod = <<-HEREDOC 
  You rush through the ship desperately trying to make it to
  the escape pod before the whole ship explodes. It seems like
  hardly any Gothons are on the ship, so your run is clear of
  interference. You get to the chamber with the escape pods, and 
  now need to pick one to take. Some of them could be damaged
  but you don\'t have time to look. There\'s 5 pods, which one
  do you take?
  HEREDOC

  puts dying_pod

  good_pod = rand(5)+1
  cheat_pod = '6'
  print "[pod #]> "
  guess = gets.chomp.to_i()

  if (guess == good_pod) || (guess != cheat_pod)
   dying_pod = <<-HEREDOC 
   You jump into pod #{guess} and hit the eject button.
   The pod escapes out into the void of space, then implodes as the hull ruptures, crushing your body
   into jam jelly.
   HEREDOC
   puts dying_pod
   return :death
  else 
    winning = <<HEREDOC
	    You jump into pod #{guess} and hit the eject button
	    The pod easily slides out into space heading to
	    the planet below. As it flies to the planet, you look
	    back to see your ship implode then explode like a 
	    bright star, taking out the Gothon ship at the same
	    time. You won!
HEREDOC
	puts winning
    Process.exit()
  end
end

ROOMS = {
	:death => method(:death),
	:central_corridor => method(:central_corridor),
	:laser_weapon_armory => method(:laser_weapon_armory),
	:the_bridge => method(:the_bridge),
	:escape_pod => method(:escape_pod)
}


def runner(map, start)
  next_one = start

  while true
  	room = map[next_one]
  	puts "\n----------"
  	next_one = room.call()
  end
end

runner(ROOMS, :central_corridor)
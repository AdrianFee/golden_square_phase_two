# Design a single class program - Music

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
```ruby

class MyMusic

    def initialize(name)
        # user adds name
    end 

    def add_song(song, artist)
        # user adds the name of the song, and the artist, and receives a confirmation message
    end

    def all_my_music
        # takes no arguments, returns list of music already listened to, in a nice format
    end 

end 
```

## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

# EXAMPLES

# 1
new_songs = MyMusic.new
new_songs.add_song("Loco in Acapulco", "Four Tops")
# => "Hope you've been enjoying the Four Tops!"

# 2
new_songs = MyMusic.new
new_songs.add_song("Round Round")
# => fails with no artist

# 3
new_songs = MyMusic.new
new_songs.all_my_music
# => 
# "Here's what you've listened to so far:
# - "Loco in Acapulco" by the "Four Tops"
# - "Round Round" by the "Sugababes"



## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
---
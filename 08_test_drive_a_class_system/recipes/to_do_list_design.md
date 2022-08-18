# Improve grammar

## 1. Describe the problem

```
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

```

## 2. Design the method signature

``` ruby
check = check_to_do_list(string)
string is a string of tasks/information, check will return either true or false, depending on whether the string contains "#TODO"

```

## 3. Create examples as tests

``` ruby 

# 1 
check_to_do_list("#TODO: 1. This is task 1")
# => true

# 2
check_to_do_list("#todo: 1. This is task 1")
# => false

# 3
check_to_do_list("")
# => false

# 4
check_to_do_list("#TO DO")
# => false

```

## 4. Implement the behaviour
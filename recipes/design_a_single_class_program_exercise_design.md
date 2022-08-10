# Design a single class program - To Do list

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
```ruby
# EXAMPLE
class Reminder
  def initialize(name) # name is a string
    # ...
  end
  def remind_me_to(task) # task is a string
    # No return value
  end
  def list()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
  def delete_task(task)
#   delete the task from the list
    end
end
```

## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

# EXAMPLES

# 1
reminder = Reminder(“Kay”)
reminder.remind_me_to(“Walk the dog”)
reminder.remind() # => “Walk the dog, Kay!”
# 2
reminder = Reminder(“Kay”)
reminder.remind() # fails with “No task set.”
# 3
reminder = Reminder(“Kay”)
reminder.remind_me_to(“”)
reminder.remind() # => “, Kay!”
# 4
reminder = Reminder (“kay”)
reminder.delete_task(“Walk the dog”)
reminder.remind() # “Walk the dog” is not there



## 4. Implement the Behaviour
_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
---
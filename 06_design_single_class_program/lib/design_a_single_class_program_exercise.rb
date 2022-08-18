
class Reminder
    def initialize(name)
        @name = name
        @list = []
    end 

    def remind_me_to(task)
        @list << task
    end 

    def list
        return @list.join(", ")
    end 

    def delete_task(task)
        return @list.reject {|task_delete| task_delete == task}
    end 
end 
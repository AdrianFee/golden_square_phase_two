class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    @list << todo
  end

  def incomplete
    @list.select {|todo| !todo.done?}
  end

  def complete
    @list.select {|todo| todo.done?}
  end

  def give_up!
    if @list.empty?
      return "You haven't added any tasks."
    else 
      @list.each {|todo| todo.mark_done!} 
    end
  end
end
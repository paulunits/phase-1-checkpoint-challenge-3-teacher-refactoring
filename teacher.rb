require_relative 'Instructors'

class Teacher < Instructors
  attr_reader  :salary, :performance_rating, :target_raise
  attr_accessor :age, :name, :phase

  def initialize(option = {})
    #@phase = 3
    #@name = options.fetch(:name, "")
    super
    @performance_rating = 0
    @target_raise = 1000
  end

  #def offer_high_five
   # "High five!"
  #end

  #def set_phase(num)
   # @phase = num
    #{}"Cool, I've always wanted to teach phase #{num}!"
  #end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  #def salary=(new_salary)
   # puts "This better be good!"
    #@salary = new_salary
  #end

  #def receive_raise(raise)
   # @salary += raise
  #end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end

new_teacher = Teacher.new

p new_teacher

p new_teacher.age

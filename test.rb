class School 

attr_reader :name 

  
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end 
  
  def roster 
    @roster
  end 
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade 
    if @roster.include?(grade) 
       @roster[grade] << student_name
    else  
     @roster[grade] = []
     @roster[grade] << student_name
    end 
  end
   
   def grade(grade)
     @grade = grade 
     @roster[@grade]
   end 
  
   def sort 
     sorted_roster = {}
     @roster.each do |level, array|
       sorted_roster[level] = array.sort
      end 
    sorted_roster
   end 
     
end
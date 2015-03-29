class Employee < Person
   belongs_to :boss, :class_name => "Employee" , :foreign_key => :reports_to
end

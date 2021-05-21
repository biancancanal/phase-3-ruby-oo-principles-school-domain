# code here!
class School
    attr_accessor :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end 

    def grade(grade)
        roster[grade] 
    end
    
    def sort
        abc_roster = {}     
        roster.each do |grade, students|
            abc_roster[grade] = students.sort
        end 
        abc_roster
    end 
end




#a ||= b is a conditional assignment operator. 
#It means if `a` is undefined or falsey, then evaluate `b`and set `a` to the result. 
#Equivalently, if `a` is defined and evaluates to truthy, 
#then `b` is not evaluated, and no assignment takes place.
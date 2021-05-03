class StudentClass
    def initialize(first_name,last_name,age,course,school)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @course = course
        @school = school
    end
    def student_intro
        puts "hi my name is #{@first_name} #{@last_name}. I'am #{@age} year's old and currently studying #{@course} at #{@school}"
    end
end

juan_delacruz = StudentClass.new("Juan","Dela Cruz","21","Web Development", "Avion School");

juan_delacruz.student_intro
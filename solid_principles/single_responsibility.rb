#this class accepts first name and last name and convert it to a username

class Username

    def initialize(first_name,last_name)
        @first_name = first_name
        @last_name  = last_name
    end

    def generate_username
        @first_name.downcase.delete(' ') + '.' + @last_name.downcase.delete(' ')
    end

end

eileen = Username.new("Eileen Andrea", "De Guzman")

puts eileen.generate_username
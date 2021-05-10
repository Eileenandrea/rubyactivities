#Authenticate module responsible for authentication such as generating password hash
module Authenticate
    require 'bcrypt'
    class PasswordHash
        def create_hash(password)
            BCrypt::Password.create(password)
        end
        def verify_hash(hash)
            BCrypt::Password.new(hash)
        end
    end


end

#View class responsible for user view interface
class View
    def changepass_view
           puts "enter current password"
           password = gets.chomp
           puts "enter new password"
           new_password = gets.chomp
            return [password,new_password]
    end
end

class User
    attr_accessor :password
    def initialize(username,password)
        #generate a user and hashing password before storage for security
        @username = username
        @password = Authenticate::PasswordHash.new.create_hash(password)
    end

    #change password method. first call View.changepass_view to get the current password and change password from the user
    def changepassword
        passwords = View.new.changepass_view
        current_password = passwords[0]
        new_password = passwords[1]
        puts @password
        #checks if the user entered current password match with the user password if it match change password is permited if not it will not change the current password
        if @password == current_password
            puts 'Correct password'
            @password = Authenticate::PasswordHash.new.create_hash(new_password)
            puts 'password has been change'
        else
            puts 'invalid password please try again'
        end
    end

end

eileen = User.new("eileen","password1")

puts eileen.password


eileen.changepassword
eileen.changepassword
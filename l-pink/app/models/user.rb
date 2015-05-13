class User < ActiveRecord::Base
	include Gravtastic
	gravtastic
	
	attr_accessor :password  
	before_save :encrypt_password

	validates_presence_of :nombre, :message => "%{value} es un campo obligatorio."
	validates_presence_of :apellido, :message => "%{value} es un campo obligatorio."
	validates_presence_of :email, :message => "%{value} es un campo obligatorio."
	validates_confirmation_of :password, :message => " no coincide."
	validates_presence_of :password, :on => [:create,:update], :message => "%{value} es un campo obligatorio."
	validates_uniqueness_of :email 

	def encrypt_password  
		if password.present?  
		  self.password_salt = BCrypt::Engine.generate_salt  
		  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)  
		end  
	end

	def self.authenticate(email, password)  
	    user = find_by_email(email)  
	    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)  
	      user  
	    else  
	      nil  
	    end  
	end  
	
end

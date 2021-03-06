class User < ActiveRecord::Base

	has_many :scripts

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	validates_presence_of :name
	validates_uniqueness_of :name
	validates_length_of :profile, :maximum => 10000

	strip_attributes
end

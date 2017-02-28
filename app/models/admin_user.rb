class AdminUser < ApplicationRecord

	has_secure_password

	EMAIL_REGEX = /\A[a-z0-9._%+=]+@[a-z0-9.]+\.[a-z]{2,4}\Z/i
	validates_presence_of :email
	validates_confirmation_of :password
	validates_presence_of :password_confirmation
	validates_confirmation_of :email
	validates_presence_of :email_confirmation
	validates_format_of :email, :with => EMAIL_REGEX

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits
end

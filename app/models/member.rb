class Member < ActiveRecord::Base
has_many :posts
validates :name, :job_title, :email, :password_digest, presence: true

has_secure_password validations: false

end
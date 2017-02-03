# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

module SeedData

  def self.extended(object)
    object.instance_exec do

      # User.destroy_all

      unless User.find_by(email: "batman@cave.org")
        @batman = User.create!(email: "batman@cave.org", password: "123456", code: "ABC")
      end

      unless User.find_by(email: "nicole@gmail.com")
        @nicole = User.create!(email: "nicole@gmail.com", password: "123456", code: "NIC", admin_role: true)
      end

      unless User.find_by(email: "harry@gmail.com")
        @harry = User.create!(email: "harry@gmail.com", password: "123456", code: "HAR", curator_role: true)
      end 

    end 
  end 
end 

extend SeedData if ARGV.include?("db:seed")
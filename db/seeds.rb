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

      # USERS
      unless User.find_by(email: "batman@cave.org")
        @batman = User.create!(email: "batman@cave.org", password: "123456", code: "ABC")
      end
      unless User.find_by(email: "nicole@gmail.com")
        @nicole = User.create!(email: "nicole@gmail.com", password: "123456", code: "NIC", admin_role: true)
      end
      unless User.find_by(email: "harry@gmail.com")
        @harry = User.create!(email: "harry@gmail.com", password: "123456", code: "HAR", curator_role: true)
      end 

      # GALLERIES
      unless Gallery.find_by(number: 1)
        @introduction = Gallery.create!(number: 1, name: "Introduction")
      end 
      unless Gallery.find_by(number: 2)
        @india = Gallery.create!(number: 2, name: "India & Thailand")
      end 
      unless Gallery.find_by(number: 3)
        @china = Gallery.create!(number: 3, name: "China")
      end 
      unless Gallery.find_by(number: 4)
        @gandhara = Gallery.create!(number: 4, name: "Jewels & Gandhara Art")
      end 
      unless Gallery.find_by(number: 5)
        @indonesia = Gallery.create!(number: 5, name: "Indonesia & Sri Lanka")
      end 
      unless Gallery.find_by(number: 6)
        @myanmar = Gallery.create!(number: 6, name: "Myanmar")
      end 
      unless Gallery.find_by(number: 7)
        @japan = Gallery.create!(number: 29, name: "Japan & Tibet")
      end 

      # STORIES
      unless Story.find_by(title: "The Buddha")
        @story1 = Story.create!(title: "The Buddha", content: "The Buddha must have been an inspiring teacher who captivated his audience. After his death his pupils continued to spread his words. They were written down several centuries later. Many Buddhist texts therefore begin with the words: ‘Thus I have heard’. The Buddha’s teachings quickly attracted growing numbers of followers. From the third century BC Buddhism began to spread, first to large parts of Asia and eventually also to other parts of the world. Buddhism has changed over time. There are now many different strands of Buddhism, and each region has its own traditions. They all however subscribe to the key role of the Buddha. His life story is essential. According to the texts, he told the story himself. Whatever its grounding in history, people have been passing on, rewriting and republishing the story for centuries, because they deemed it valuable. This exhibition shows how the life story of the Buddha has continued to inspire people in different countries and regions. It encompasses not only the Buddha’s life, but also his many previous lives and the relics that perpetuate his life even after his death.", gallery_id: 1)
      end 

    end 
  end 
end 

extend SeedData if ARGV.include?("db:seed")
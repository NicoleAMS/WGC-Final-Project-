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
        @japan = Gallery.create!(number: 7, name: "Japan & Tibet")
      end

      # STORIES
      unless Story.find_by(title: "The Buddha")
        @story1 = Story.create!(gallery_id: @introduction.id, title: "The Buddha", content: "The Buddha must have been an inspiring teacher who captivated his audience. After his death his pupils continued to spread his words. They were written down several centuries later. Many Buddhist texts therefore begin with the words: ‘Thus I have heard’. The Buddha’s teachings quickly attracted growing numbers of followers. From the third century BC Buddhism began to spread, first to large parts of Asia and eventually also to other parts of the world. Buddhism has changed over time. There are now many different strands of Buddhism, and each region has its own traditions. They all however subscribe to the key role of the Buddha. His life story is essential. According to the texts, he told the story himself. Whatever its grounding in history, people have been passing on, rewriting and republishing the story for centuries, because they deemed it valuable. This exhibition shows how the life story of the Buddha has continued to inspire people in different countries and regions. It encompasses not only the Buddha’s life, but also his many previous lives and the relics that perpetuate his life even after his death.")
      end
      unless Story.find_by(title: "A living tradition")
        @story2 = Story.create!(gallery_id: @introduction.id, title: "A living tradition", content: "The Buddha’s life story was a source of inspiration to artists. Indeed the earliest Buddhist depictions, from India, are older than the texts. They mark the beginning of a visual tradition that now includes standardised elements, yet still adapts to new cultures. The Buddha’s life story has traditionally been shown in temples and monasteries. This is still the case today, although it has now also become part of popular culture, featuring on posters and Buddhist calendars, in children’s books and comic strips. New media have broadened the tradition even further. TV series and animated films reach a wider audience. They are often made for educational purposes, and are designed to appeal to a younger generation. Not everything is acceptable in all traditions. Buddhism in Sri Lanka and Southeast Asia is less tolerant than in Korea and Japan, for example. In Korea, young artist Yang Kyung Soo, himself a Buddhist, has produced a modern interpretation of the life of the Buddha in eight digital prints. He portrays the preaching Buddha as a DJ, for instance. In fact, he is simply doing what artists before him have done: placing the life of the Buddha in the context of his own time and surroundings.")
      end
      unless Story.find_by(title: "The Buddha’s life story")
        @story3 = Story.create!(gallery_id: @introduction.id, title: "The Buddha’s life story", content: "The Buddha was born in Lumbini. His given name was Siddhartha, and his family name Gautama. Wise men at the court predicted that he would become a powerful king or a great spiritual leader. His father was afraid it would be the latter. He ensured his son grew up in a life of luxury within the confines of the palace. When Siddhartha was older, he managed to leave the palace and encountered old age, disease and death for the first time. He also met an itinerant ascetic. Siddhartha decided to follow his example. He leaves the palace by night. Years of strict asceticism brought him no closer to his goal, however. He started to eat again and decided to sit beneath a fig tree until he had gained a deeper understanding. There Siddhartha arrived at bodhi, awakening. He achieved nirvana, a state of peace and calm in which desire, hatred and ignorance are extinguished. He was now the Buddha, the Awakened One. In his first sermon he set out the four noble truths that explain suffering and its extinction. He died at the age of eighty, passing into parinirvana, the final deathless state.")
      end
      unless Story.find_by(title: "Characteristics of the Buddha")
        @story4 = Story.create!(gallery_id: @introduction.id, title: "Characteristics of the Buddha", content: "Various texts describe the 32 major characteristics and 80 secondary characteristics of the Buddha. For instance, the soles of his feet are completely smooth and flat and bear the sign of the wheel, he has protruding heels, legs like an antelope and the chest of a lion. He has 40 teeth and a long tongue. Buddhist art depicts only a few of the characteristics. They include the curl of hair between his eyebrows and a protuberance on his head. The Buddha generally sits cross-legged. Sometimes the royal aspect of the Buddha is emphasised, and he is shown seated on a throne with his legs down. His hand gestures refer to events in his life story. The earth touching gesture, bhumisparsha-mudra, is the most common. This refers to the Buddha’s awakening. Only when he dies is the Buddha shown lying down. His death signifies his parinirvana, when he is released from the cycle of rebirth. The Buddha is the first of the three jewels, or triratna, of Buddhism. The other two are the teaching, dharma, and the community of monks, sangha. They are integrally connected with the Buddha’s life story and form the basis of Buddhism. Buddhists declare that they seek refuge in these three jewels." )
      end
      unless Story.find_by(title: "Spread of Buddhism")
        @story5 = Story.create!(gallery_id: @introduction.id, title: "Spread of Buddhism", content: "Buddhism spread to various parts of India and Sri Lanka from the third century BC onwards. Not long after, it travelled via trade routes over land to Pakistan, Afghanistan, Central Asia and China, and from there to Vietnam, Korea and Japan. From the fifth century Buddhism also spread via maritime routes to Myanmar, Malaysia, Thailand, Laos, Cambodia, Vietnam and Indonesia, and from the seventh century to Nepal, Bangladesh, Tibet, Bhutan and Mongolia. In some regions, like Thailand, Buddhism remains important today, while in others, like Indonesia, it has become a minority religion. Some regions have experienced repeated periods of growth and decline in Buddhism. The cultural encounter between Buddhism and Europe, North America and other parts of the world began in the nineteenth century. Interest in Buddhism grew in these regions, and Buddhists also migrated there from Asia. There are three major Buddhist traditions in Asia: the Theravada tradition of Sri Lanka and Southeast Asia; the Mahayana tradition of East Asia; and Tibetan Buddhism.")
      end
      unless Story.find_by(title: "India and Buddhism")
        @story6 = Story.create!(gallery_id: @india.id, title: "India and Buddhism", content: "India is the birthplace of Buddhism. It was there that the Buddha lived in the fifth century BC, attracting more and more followers among ordinary people, and also among rich merchants and monarchs. Thanks to their financial support monks were able to purchase land and found monasteries. Emperor Ashoka is one of the key figures in the early history of Buddhism. In the third century BC he was influential in large parts of India. Inspired by the teachings of the Buddha, he promised to create a just and humane society. Ashoka is the legendary example of a virtuous Buddhist monarch. Buddhism experienced its heyday in India between the fourth and eighth centuries AD. It remained important in the Pala empire in Northeast India. The famous monastery at Nalanda had thousands of students who came from near and far in search of knowledge. When Turkic peoples set out to plunder the north of India in the twelfth century the poorly protected monasteries with their many treasures were an easy target. The disappearance of the monasteries and the financial support from kings destroyed the basis of Buddhism in India. Buddhist pilgrimages have however grown steadily in importance in recent decades.")
      end
      unless Story.find_by(title: "Places of pilgrimage")
        @story7 = Story.create!(gallery_id: @introduction.id, title: "Places of pilgrimage", content: "As the Buddha lay on his deathbed one of his pupils asked how he could honour him when he was gone. The Buddha answered that there were four places believers could visit: Lumbini, his birthplace; Bodhgaya, the place where he achieved enlightenment; Sarnath, the place where he delivered his first sermon, setting the wheels of Buddhist teaching in motion; and Kushinagara, where he died and attained parinirvana. Visiting these places would earn them merit, punya, and lead to a good reincarnation. Four other places also became important: Shravasti, where the Buddha performed his miracles; Rajagriha, where he tamed a ferocious elephant; Sankashya, where he returned to earth after visiting heaven; and Vaishali, where a monkey offered him honey. Although there are many more places that attract pilgrims, these eight are an important group. The number of Buddhists making pilgrimages has increased in recent times, due to globalisation and the ease of air travel.")
      end
      # unless Story.find_by(title: "")
      #   @story8 = Story.create!(title:, content: )
      # end
      # unless Story.find_by(title: "")
      #   @story9 = Story.create!(title:, content: )
      # end
      # unless Story.find_by(title: "")
      #   @story10 = Story.create!(title:, content: )
      # end
      # unless Story.find_by(title: "")
      #   @story11 = Story.create!(title:, content: )
      # end
      # unless Story.find_by(title: "")
      #   @story12 = Story.create!(title:, content: )
      # end
      # unless Story.find_by(title: "")
      #   @story13 = Story.create!(title:, content: )
      # end

    end
  end
end

extend SeedData if ARGV.include?("db:seed")
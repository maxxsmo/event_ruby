require 'time'

class Event
    attr_accessor :start_date, :length, :title, :attendees
    
    def initialize(date_to_update, length, title, attendees)
        @start_date = Time.parse(date_to_update)
        @length = length
        @title = title
        @attendees = attendees
    end

    # décaler au jour suivant
    def postpone_24h 
         puts start_date + (24*60*60)
    end

    # date de fin 
    def end_date
        puts @start_date + @length * 60
    end
    # si l'event est déjà passé 
    def is_past
        puts (start_date < Time.now ? true : false)   
    end
    # si l'event n'est pas encore passé 
        # vu que c'est l'inverse de la méthode précédente on peut faire
            # def is_future
            #     !self.is_past
            #   end
    def is_future
        puts (start_date > Time.now ? true : false)   
    end
    # Si l'event est dans moins de 30 min.
    def is_soon
        puts "starts within 30 minutes" if start_date.between?(Time.now, Time.now + 30 * 60)
    end

    # affichage :
    def to_s
        puts "Titre: #{title}"
        puts "Date de début: #{start_date}"
        puts "Durée: #{length} minutes"
        puts "Invités: " + attendees.join(', ')
    end

end

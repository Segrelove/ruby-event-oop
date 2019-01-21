require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :length, :title, :attendees, :end_date
	@@end_date 

  def initialize(start_date, length, title, attendees)
    @start_date = Time.parse("#{start_date}")
    @length = length
    @title = title
		@attendees = attendees
		@end_date = @start_date + (@length * 60)
    puts "L'évenement #{title} aura lieu le #{start_date} pour #{@length} minutes, avec #{attendees}"
	end

  def postpone_24h
    @new_date = @start_date + 60*60*24
    puts "RDV décallé à #{@new_date}"
  end

  def end_date
		puts "L'evenement se termine le #{@end_date}"
	end
	
	def is_past
		if @end_date < Time.now
			puts "L'évenement s'est déroulé et s'est terminé le #{@end_date}"
		else
			puts "L'évenement ne s'est pas encore déroulé, et aura lieu le"
			puts "#{@start_date}."
		end
	end

	def is_future
		if @end_date > Time.now
			puts "L'évenement ne s'est pas encore déroulé, et aura lieu le"
			puts "#{@start_date}."
		else
			puts "L'évenement s'est déroulé et s'est terminé le #{@end_date}"
		end
	end

	def is_soon
		puts "#{start_date - 30*60}"
		puts Time.now
		if @start_date < Time.now
			puts "Tu l'as loupé abruti"
		elsif @start_date - 30*60 < Time.now
			puts "Depeche toi, ton RDV a lieu dans moins de 30minutes, si ce n'est moins"
		else
			puts "Tu as le temps."
		end
	end

	def to_s
		users_to_string = @attendees.join(', ')
		puts "Titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@length}"
		puts "Invités : #{users_to_string}"
	end
end

# binding.pry
puts "End of file"

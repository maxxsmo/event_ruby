# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;)
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

julie = User.new("julie@julie.com", "julie")
jean = User.new("jean@jean.com", "jean")


e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
puts "Voici l'email du premier attendee de l'événement : #{e.attendees.first.name}"

p julie.email


# Open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc etc
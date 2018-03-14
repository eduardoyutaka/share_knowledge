# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# team = Team.create(name: '')
# team.projects << Project.create(big_idea: '', description: '', name: '')
# team.students << Student.create(cohort: '', email: '', first_name: '', last_name: '', profile: '')

team = Team.create(name: 'Nil Spectrum')
team.projects << Project.create(big_idea: 'Education', description: 'A text-based adventure', name: 'Story Lives')
team.students << Student.create(cohort: 'Afternoon', email: 'alessandro.izzo998@gmail.com', first_name: 'Alessandro', last_name: 'Izzo', profile: 'Geek')
team.students << Student.create(cohort: 'Afternoon', email: 'carmine.molisso@gmail.com', first_name: 'Carmine', last_name: 'Molisso', profile: 'Geek')
team.students << Student.create(cohort: 'Afternoon', email: 'ciro.rispoli@yahoo.it', first_name: 'Ciro', last_name: 'Rispoli', profile: 'Creative')
team.students << Student.create(cohort: 'Afternoon', email: 'eduardo.nakanishi@gmail.com', first_name: 'Eduardo', last_name: 'Nakanishi', profile: 'Geek')
team.students << Student.create(cohort: 'Afternoon', email: 'disomma.giada@icloud.com', first_name: 'Giada', last_name: 'Di Somma', profile: 'Creative')
team.students << Student.create(cohort: 'Afternoon', email: 'ilariagis@gmail.com', first_name: 'Ilaria', last_name: 'Gison', profile: 'Creative')
Mentor.create(email: 'mararosse@me.com', field: 'Design', first_name: 'Mara', last_name: 'Rossi')

team = Team.create(name: 'Chemical X')
team.projects << Project.create(big_idea: 'Science Education', description: 'Interactive, sensor-based learning', name: 'Helium')
team.students << Student.find_by(email: 'eduardo.nakanishi@gmail.com')
team.students << student = Student.create(cohort: 'Afternoon', email: 'ash.thomas@me.com', first_name: 'Ash', last_name: 'Thomas', profile: 'Geek')
team.students << student = Student.create(cohort: 'Afternoon', email: 'george.taylor1@live.co.uk', first_name: 'George', last_name: 'Taylor', profile: 'Geek')
team.students << student = Student.create(cohort: 'Afternoon', email: '1986mvrd@gmail.com', first_name: 'Mauro', last_name: 'Barchiesi', profile: 'Geek')
team.students << student = Student.create(cohort: 'Afternoon', email: 'credo.non@gmail.com', first_name: 'Milan', last_name: 'Jovanović', profile: 'Creative')
team.students << student = Student.create(cohort: 'Afternoon', email: 'mail@pavelaristov.com', first_name: 'Pavel', last_name: 'Aristov', profile: 'Geek')
team.students << student = Student.create(cohort: 'Afternoon', email: 'tassiomm@icloud.com', first_name: 'Tassio', last_name: 'Marques', profile: 'Geek')
Mentor.create(email: 'stefanoperna@gmail.com', field: 'Design', first_name: 'Stefano', last_name: 'Perna')
Mentor.create(email: 'domenicotangredi@icloud.com', field: 'Code', first_name: 'Domenico', last_name: 'Tangredi')

team = Team.create(name: 'TMG')
team.projects << Project.create(big_idea: 'Comunication', description: 'Gamified social media', name: '21')
team.students << Student.create(cohort: 'Morning', email: 'madmaleine@icloud.com', first_name: 'Nataliya', last_name: 'Mandziy', profile: 'Creative')
team.students << Student.create(cohort: 'Morning', email: 'andrea.tiberio@invented.com', first_name: 'Andrea', last_name: 'Tiberio', profile: 'Creative')
team.students << Student.create(cohort: 'Morning', email: 'alessandro.mendozz@invented.com', first_name: 'Alessandro', last_name: 'Mendozz', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'alessandro.graziani@invented.com', first_name: 'Alessandro', last_name: 'Graziani', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'caio.b.lunardi@gmail.com', first_name: 'Caio', last_name: 'Lunardi', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'davide.maimone@invented.com', first_name: 'Davide', last_name: 'Maimone', profile: 'Geek')

team = Team.create(name: 'Breaking Barriers')
team.projects << Project.create(big_idea: 'Accessibbility', description: 'App for blind people to find things through QRCodes', name: 'QRecord')
team.students << Student.create(cohort: 'Morning', email: 'alqawabehm@gmail.com', first_name: 'Maher', last_name: 'Al Qawabeh', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'thedogger93@gmail.com', first_name: 'Fabrizio', last_name: 'Natale', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'sarambrancato@gmail.com', first_name: 'Sara', last_name: 'Brancato', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'pierfrancescoonnis@live.it', first_name: 'Pierfrancesco', last_name: 'Onnis', profile: 'Geek')
team.students << Student.create(cohort: 'Morning', email: 'francesco.picerno@gmail.com', first_name: 'Francesco', last_name: 'Picerno', profile: 'Creative')
team.students << Student.create(cohort: 'Morning', email: 'simone.fiorentino@invented.com', first_name: 'Simone', last_name: 'Fiorentino', profile: 'Creative')
team.students << Student.create(cohort: 'Morning', email: 'francesco.pignataro@invented.com', first_name: 'Francesco', last_name: 'Pignataro', profile: 'Geek')

team = Team.create(name: 'Block Mirror')
team.projects << Project.create(big_idea: 'Blockchain', description: 'Savings app for cryptocurrency', name: 'Ethervault')
team.students << Student.create(cohort: 'Morning', email: 'neelima.rathi@gmail.com', first_name: 'Nelly', last_name: 'Rathi', profile: 'Master')
team.students << Student.create(cohort: 'Morning', email: 'dimitri.mazur@invented.com', first_name: 'Dimitri', last_name: 'Mazur', profile: 'Master')
team.students << Student.create(cohort: 'Morning', email: 'zacharias.mitzelos@invented.com', first_name: 'Zacharias', last_name: 'Mitzelos', profile: 'Geek')

Student.create(cohort: 'Morning', email: 'francescochiusolo@icloud.com', first_name: 'Francesco', last_name: 'Chiusolo', profile: 'Creative')
Student.create(cohort: 'Morning', email: 'zkmr08@gmail.com', first_name: 'Zakaria', last_name: 'Marouf', profile: 'Geek')

team = Team.create(name: 'Drifters')
team.projects << Project.create(big_idea: 'Environment', description: 'An app that uses machine learning to recognize plants', name: 'Eden')
team.students << Student.create(cohort: 'Afternoon', email: 'pansinimary95@gmail.com', first_name: 'Mariapia', last_name: 'Pansini', profile: 'Geek')
team.students << Student.create(cohort: 'Afternoon', email: 'l.cotrozzi@gmail.com', first_name: 'Lucia', last_name: 'Cotrozzi', profile: 'Geek')
team.students << Student.create(cohort: 'Afternoon', email: 'luismauto@hotmail.com', first_name: 'Luis', last_name: 'Mautone', profile: 'Geek')

team = Team.create(name: 'Sigabrt')
team.projects << Project.create(big_idea: 'AR', description: 'An app that creates a new way to enjoy your memories', name: 'Souvenir')
team.students << Student.create(cohort: 'Afternoon', email: 'fuscaldofrancesco@gmail.com', first_name: 'Francesco', last_name: 'Fuscaldo')

Student.create(cohort: 'Afternoon', email: 'francescoiuryforte@gmail.com', first_name: 'Francesco Iury', last_name: 'Forte', profile: 'Geek')
Student.create(cohort: 'Morning', email: 'incredibile100@hotmail.it', first_name: 'Francesco', last_name: 'Abbondo', profile: 'Geek')
Student.create(cohort: 'Afternoon', email: 'roberto.corporente@icloud.com', first_name: 'Roberto', last_name: 'Corporente', profile: 'Geek')
Student.create(cohort: 'Afternoon', email: 'gemix95@gmail.com', first_name: 'Emmanuele', last_name: 'Corporente', profile: 'Geek')
Student.create(cohort: 'Afternoon', email: 'francesco.rispoli@invented.com', first_name: 'Francesco', last_name: 'Rispoli', profile: 'Geek')
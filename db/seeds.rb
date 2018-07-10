# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    tittle: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu tellus bibendum, tincidunt massa sed, lacinia tortor. Ut vitae eros vel tortor ultrices consequat. Cras in pretium dui. Mauris a pulvinar erat. Donec sit amet ante ac risus ullamcorper imperdiet vitae quis nisi. Sed maximus dolor at augue lobortis, eu convallis mauris ultricies. Cras egestas aliquet lobortis. Quisque efficitur, nibh non lacinia porttitor, erat nisi mattis arcu, a pharetra odio leo in est. Curabitur at finibus ligula, nec sollicitudin erat. Donec et interdum arcu. In consequat sollicitudin ipsum. Nulla facilisi. Praesent ac sodales tellus."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    tittle: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio tittle: #{portfolio_item}",
    subtitle: "My great service",
    body: "Suspendisse id fringilla nibh, non luctus felis. In nunc arcu, congue sed justo sit amet, laoreet ultricies dui. Mauris ac purus quis elit lobortis placerat sed eu risus. Duis et dapibus dui, et posuere tellus. Etiam sed est vitae lacus laoreet pretium eu eget mi. Morbi erat nibh, maximus vel pellentesque aliquam, commodo ut ex. Integer magna dui, consequat non dapibus quis, mollis sit amet mi. Curabitur in ligula semper, pretium ipsum sed, dictum mi. Vestibulum luctus leo dolor, ac molestie leo porta ac. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent condimentum mollis venenatis. Maecenas sed massa sed erat lobortis placerat vel ac orci.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

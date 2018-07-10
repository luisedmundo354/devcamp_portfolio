# Devcamp app portfolio

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* ### Ruby 2.4.2

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

>This is a Ruby on Rails 5 applocation tahta allows users to create their own portfolios.

### features

-Real time chat engine for comments
-Blog
-Portfolio
-Drag and drop interface

```ruby
def my_great_method
	puts "here it is"
end
```
```javascript
alert('Hi there')
```
### Build pages via controller generator

rails g controller <controller name> <controller arguments or pages>
rails g controller Pages home about

### Build models via model generator

Just create a model which communicates with the database
```rails g model Skill name:string percentage_utilized:integer
 ```

### Build a resource via resource generator

Is like a minimal scaffold. It does not create all the mothods in the controllers no any view but the folders and the files.
```rails g resource Portfolio title:string subtitle:string body:text main_image:text thumb_image:text
```
### Upload to github

git add .
git commit -m "<message>
git push

### Create an app

rails new GeneratorApp -T --database=postgresql

#### To merge a branch into the master

- git merge model-generator
- git push

where model-generator is the branch and you are currently in the master branch

### start postgresql

- sudo service postgresql start

### Rails console

- rails c

###Create a record in the rails console

- Skill.create!(tittle: "Rails", percent_utilized: 75)

###Rails convention

- Models are written in singular Model
- Controllers are written in plural Controllers

### Create items for each database table via seeds.rb

```ruby
5.times do |skill|
  Skill.create!(
    tittle: "Rails #{skill}",
    percent_utilized: 15
  )
end```

- This is written in the file seeds.rb, then this command should be executed in the prompt shell

```shell
rails db:setup
'''

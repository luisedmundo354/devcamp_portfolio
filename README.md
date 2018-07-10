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
```shell
rails g model Skill name:string percentage_utilized:integer
 ```

### Build a resource via resource generator

Is like a minimal scaffold. It does not create all the mothods in the controllers no any view but the folders and the files.
```shell
rails g resource Portfolio title:string subtitle:string body:text main_image:text thumb_image:text
```
### Upload to github

```shell
git add .
git commit -m <message>
git push
```
### Create an app

```shell
rails new GeneratorApp -T --database=postgresql
```
#### To merge a branch into the master

```shell
git merge model-generator
git push
```

Where model-generator is the branch and you are currently in the master branch

### start postgresql
```shell
sudo service postgresql start
```
### Rails console
```shell
rails c
```
### Create a record in the rails console

```ruby
Skill.create!(tittle: "Rails", percent_utilized: 75)
```
### Rails convention

- Models are written in singular Model
- Controllers are written in plural Controllers

### Create items for each database table via seeds.rb

```ruby
5.times do |skill|
  Skill.create!(
    tittle: "Rails #{skill}",
    percent_utilized: 15
  )
end
```
- This is written in the file seeds.rb, then this command should be executed in the prompt shell

```shell
rails db:setup
```

### Imbedded Ruby

- When the ruby code is into <% %> rails is not going to render that code. If you write <%= %> then it is going to render the piece of code you write.

### Make an index view

- In the view index.html.erb

```html
<% @portfolio_items.each do |portfolio_items| %>
  <p><%= portfolio_items.title %></p>
  <p><%= portfolio_items.subtitle %></p>
  <p><%= portfolio_items.body %></p>
  <p><%= image_tag portfolio_items.thumb_image if !portfolio_items.thumb_image.nil? %></p>
<% end %>
```
- In the controller

```Ruby
def index
	@portfolio_items = Portfolio.all
end
```
### Make a create method

- In the view

```html
<%= form_with(model: @portfolio, local: true) do |form| %>
  <div class="field">
    <%= form.label :title %>
    <%= form.text_field :title, id: :portfolio_title %>
  </div>

  <div class="field">
    <%= form.label :subtitle %>
    <%= form.text_field :subtitle, id: :portfolio_subtitle %>
  </div>

  <div class="field">
    <%= form.label :body %>
    <%= form.text_area :body, id: :portfolio_body %>
  </div>

  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
```

- In the controller

```ruby
def new
	@portfolio = Portfolio.new
end

def create
	@portfolio = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

	respond_to do |format|
		if @portfolio.save
			format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
		else
			format.html { render :new }
		end
	end
end
```

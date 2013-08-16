#Code Fellows Rails Class Assignment
##2.2 - Rails Introduction
This is the finished product, as a result of doing the commands below

1) Create a new rails project.

From where you do your course work do:

    mkdir week_2
    cd week_2
    rails new intro
    cd intro

2) Create git repo and push to github.

First create a repository called "intro" on your github account. See IntroGit.png for how to create your repo. Then in your shell

    git init
    git remote add origin git@github.com:your_user_name/intro.git

    git add .
    git commit -m "initial commit"
    git push origin master    ==> I did a git push -u origin master (just a habit!)

3) Start rails server.

In another terminal window run:

    rails server

Go to localhost:3000 in your browser and make sure it started up. If you don't see the welcome to rails message. Check the console for errors. Debug it, before moving on!

4) Generate welcome controller.

Run this in the console: "rails generate controller -h". Read the output. Compare it to the next command. After you see some similarities run the next command.

    rails g controller welcome index

Look at the files generated. Then open config/routes.rb find the comment about root. Uncomment it to make it active. Now refresh localhost:3000. Do you see the contents from the erb template? (app/views/welcome/index.html.erb) If so, move on!

5) Generate Hello controller and views.

    rails generate controller hello from_view from_controller

Look at the files generated. Look at config/routes.rb again. What is new? Go to localhost:3000/hello/from_view and localhost:3000/hello/from_controller. Do you see the generated templates? See if you can find the templates.

6) Edit the from_view template.

Find the template and delete all of the content. Add a single h1 tag with the text: Hello World from a view template!

View localhost:3000/hello/from_view in your browser. Did it work?

7) Edit the from_controller template.

Find the template and delete all of the content. Add a single h1 tag with a single printing erb tag rendering an instance variable called: @hello

View localhost:3000/hello/from_controller in the browser. What happened? It should have an error. Look at it in the terminal. Can you make sense of it?

8) Edit the from_controller action in the hello controller.

Open the hello_controller.rb file and find the from_controller action. Add an instance variable in the method body defining the instance variable from step #7. The contents of the variable should be: "Hello World from a Rails Controller!"

View localhost:3000/hello/from_controller in your browser (refresh, if necessary!). Did your h1 tag from #7 show the message now?

9) Commit and push your changes to your repo on github.

If you are stuck, look at step step #2 again. Hint: You will only need part of the directions (add, commit, push parts).

10) Verify you see your changes you pushed on github.com.

11) Submit your github browser URL for credit.


# From stock rails readme - suggestions for contents of a README.md file:

## Ruby version

ruby-2.0.0-p247

## Rails version

4.0.0

## System dependencies

## Configuration

## Database creation

## Database initialization

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions

This is a finished product - in the end you can do these actions in the browser:

What to try out:
localhost:3000 <-- since the routes.rb has root 'welcome#index' line, this means the routing will call the index action in the welcome controller ( rake routes will show root, GET, /,welcome#index )
localhost:3000/welcome/index <-- same results as above
localhost:3000/hello/from_controller <-- notice the pattern controller/action (controller is hello (hello_controller.rb), and the action is from_controller ( and the action is found in the hello_controller.rb, and also a view called from_controller.html.erb)
localhost:3000/hello/from_view

Other observations!

rake routes -
shows this ( also you can enter http://localhost:3000/rails/info/routes in browser )
<pre>
<code>

               Prefix Verb URI Pattern                      Controller#Action
      hello_from_view GET /hello/from_view(.:format)       hello#from_view
hello_from_controller GET /hello/from_controller(.:format) hello#from_controller
        welcome_index GET /welcome/index(.:format)         welcome#index
                 root GET /                                welcome#index

</pre>

</code>




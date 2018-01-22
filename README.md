# Friends List - Elm Workshop

## What to install

### NPM/Yarn way
This project was initially bootstrapped with [Create Elm App](https://github.com/halfzebra/create-elm-app) and then ejected, so everything you need to do is run Yarn. (Note: it works with NPM too, I just stick with Yarn for this)

```
yarn install 
```

Elm, Webpack and everything else will be set and downloaded to your computer and you can just delete the folder after workshop and act as nothing happened.

After running 
```
yarn start
```

you should see page with text "Your Elm App is working". Everything should be set to just open your editor of choice on `./src/Main.elm` and start writing Elm code.


If you would like to install Elm permanently on your system, you can do it by 
```
yarn global add elm
```

For more information about installing Elm visit [Elm Guide](https://guide.elm-lang.org/install.html).

### Ellie alternative
If you prefer not installing anything and stay lightweight, you can find the same code prepared in online tool called Elm Live Editor (a.k.a. Ellie). The workshop was done with Ellie in mind, so you don't have to worry that you'll miss something (except maybe the joy of compiling it to JS by yourself).

You can find the same starting code online in [Ellie App](https://ellie-app.com/bFbKXhfRWa1/0)

## Stage One - Basics

You can take a look at basic syntax in the nutshell on [Learn Elm in Y minutes](https://learnxinyminutes.com/docs/elm/)

We will focus on `view` part of the program now. To understand the `Html` function and layout, feel free to use 
[Html to Elm convertor](http://mbylstra.github.io/html-to-elm/), which will create your Elm view code from HTML.

We will be using [Semantic UI framework](https://semantic-ui.com/introduction/getting-started.html) (the CSS part) for its expressiveness and because I like it. You can try to use another framework of your choice but then you are on your own.

### Task 1
Convert this HTML code to Elm and make it appear on screen. Use [Html to Elm convertor](http://mbylstra.github.io/html-to-elm/).

```
<div class="ui main text container">
  <h1 class="ui header">Friends List</h1>
    <div class="ui segment">
	    <div class="ui form">
  		  <div class="field">
      		<label>Name</label>
      		<input type="text" placeholder="Name">
  		  </div>
  		<div class="ui button">Add a friend</div>
	  </div>
  </div>
</div>
```

## Stage 2 - Model, View, Update

### Task 2
Add cards to view [Html to Elm convertor](http://mbylstra.github.io/html-to-elm/).
```
  <div class="ui two column cards">
  <div class="card">
    <div class="content">
      <i class="right floated remove red icon link"/>
      <div class="description">Tony Stark</div>
    </div>
  </div>
  </div>
```

### Task 3
Add static name to model after click on the button

```
import Html.Events exposing (onClick)
```

Also clear the input after adding the name

### Task 4
Remove the name from list
Use `List.filter`. Look at the documentation


### Task 5 - Refactoring
Refactor model to use `Dict` instead of `List`

## Stage 3 - Editing friends name
### Task 6

Show/hide buttons according to state of form
- add new state type
    - `type FormState = Adding | Editing`
- add it to model
- refactor buttons to separate view function
- create action for change of state and add it to new icon on card
    -`i [ class "right floated edit icon link"] []`
- make them visible according to state in model 

### Task 7 - Make the editing work
When user click Edit icon on card, you should 
- change the state to Editing
- copy that name to input box
- when user clicks Save than change the name to the one currently in input field and go to `Adding` state
- when user clicks Cancel, don't change the name and go to `Adding` state
- Always delete the input box from name
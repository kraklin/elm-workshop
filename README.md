# Friends List - Elm Workshop

## What to install

### NPM way
This project was initially bootstrapped with [Create Elm App](https://github.com/halfzebra/create-elm-app) and then ejected, so everything you need to do is run Yarn. (Note: it works with NPM too, I just stick with Yarn for this)

```
yarn install 
```
in root of this directory

Elm, Webpack and everything else will be set and downloaded to your computer and you can just delete the folder after workshop and act as nothing happened.

After running 
```
yarn start
```

you should see page with text "Your Elm App is working". Everything should be set to just open your editor of choice on `./src/Main.elm` and start writing Elm code.

### Ellie alternative
If you prefer not installing anything and stay lightweight, you can find the same code prepared in online tool called Elm Live Editor (a.k.a. Ellie). The workshop was done with Ellie in mind, so you don't have to worry that you'll miss something (except maybe the joy of compiling it to JS by yourself).

You can find the same starting code online in [Ellie App](https://ellie-app.com/96VJmBWw6a1/1)

## Stage One - Basics

You can take a look at basic syntax in the nutshell on [Learn Elm in Y minutes](https://learnxinyminutes.com/docs/elm/)

We will focus on `view` part of the program now. To understand the `Html` function and layout, feel free to use 
[Html to Elm convertor](http://mbylstra.github.io/html-to-elm/), which will create your Elm view code from HTML.

We will be using [Semantic UI framework](https://semantic-ui.com/introduction/getting-started.html) (the CSS part) for its expressivnes and because I like it. You can try to use another framework of your choice but then you are on your own.

### Task 1
Convert this HTML code to Elm and make it appear on screen.

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
Add cards for view
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

Also make the name input clear after adding the name

### Task 4
Try to annotate every function with types.
Change model type to `List String` and add static name to list after button click

### Task 5 - Refactoring
Change model to `Tuple` with first value for input value and the second for the list

### Task 6
Remove the name from list
Use `List.filter`. Look at the documentation

### Task 7 - Refactoring
Refactor model to `Record`
```
type alias Model =
    { nameValue : String
    , friendsList : List String
    }
```

### Task 8
Add `Save` and `Cancel` buttons to form to be able to edit and cancel editing

## Stage 3 - Editing friends name
### Task 9

Show/hide buttons according to state of form
- add new state type
    - `type FormState = Adding | Editing`
- add it to model
- refactor buttons to separate view function
- create action for change of state and add it to new icon on card
    -`i [ class "right floated edit icon link"] []`
- make them visible according to state in model 

### Task 10 - Make the editing work
When user click Edit icon on card, you should 
- change the state to Editing
- copy that name to input box
- when user clicks Save than change the name to the one currently in input field and go to `Adding` state
- when user clicks Cancel, don't change the name and go to `Adding` state
- Always delete the input box from name
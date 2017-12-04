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

You can find the code here [TODO: Add link to Ellie bootstraped code]


## Stage One - Basics

You can take a look at basic syntax in the nutshell on [Learn Elm in Y minutes](https://learnxinyminutes.com/docs/elm/)

Take a look at `Tuple`, `how to write function`... [TODO: Add more interesting points]

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
  		<div class="ui button">Submit</div>
	  </div>
  </div>
</div>
```



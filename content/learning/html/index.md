---
title: "HTML!"
description: "Our First Steps into the Web"
weight: 2
alwaysopen: true
---

# Highlights!

- [Make Your Code Playground Account Here](http://kgbv.local:3000/register)
- [Write Your First Page Here](http://kgbv.local:3000/vav/edit?html,output)
- [Later, add this List to your page](#activity-making-a-list-of-holiday-foods)

## Webpages and Computer Languages

When you go to Google's website, you see this:

![Google India home page](./images/google.png)

But what the computer sees is this:

![Source code for Google India](./images/google-code.png)

This language, called HTML or Hypertext Markup Language, is the language of web pages. Taken together with two other languages, CSS or Cascading Style Sheets, and JavaScript, it helps to power the Web.

If we want to make our own web pages, we have write out our instructions about what we want using the language that the computer can understand--and that is what we will be learning about this week!

# Building Blocks of HTML

## Activity: Creating your first Page 💻

Sometimes it helps to just start building!

1. On your computer, open the [**code playground**](http://kgbv.local:3000/register) and make an account: 
- choose a simple name that no one else will use
- write down your account and password in your notebook right away
- after class, come write them down in our book so that we have them too. 
You can do this by clicking the link, or clicking the "Code Playground" link on the top right of this web site

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: Code Playground</strong><br />
  A <strong>code playground</strong> is a live environment where you can type out your code and see the results in real time. The code playground always watches the changes you are making and then reloads just the section of the page that shows the "finished" result.
</div>

1. It's time to make an account! 
2. [Click on this link](http://kgbv.local:3000/vav/edit?html,output)

In the HTML tab of your code playground, paste the following:

```html

<!DOCTYPE html>
<html>
    <head>
        <link href="/offline/unpkg.com/chota.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8">
        <title>Title</title>
    </head>
  
    <body>
        <header class="site-header nav">
            <h1>My favourite foods</h1>
        </header>
      
        <main>
          
            <p>I like to eat...</p>
            
        </main>

        <footer class="site-footer">
          
        </footer>

    </body>
</html>
```

3. In your code playground, try making changes to the HTML where you see "...". Pay attention to what happens when you make changes to the code

<div class="alert alert-success">
  <h4>🎉🎊🎉 Congratulations, you just made your first web page! 🎉🎊🎉</h4>
</div>

Now, why does this work?

## Tags

HTML has **elements** which are made with **tags**!

**Tags** show where elements start and end. All tags start with a `<` left angle bracket and end with a `>` right angle bracket.

For example in the HTML code above `<!DOCTYPE>`, `<html>`, and `</html>` are some of the tags we can see.

### Activity: Locate the tags 💻

Try to find more tags **tags** in the HMTL code above with your fellow students.

Now that we can identify tags, let's describe the code above to understand what we did there:

* The `<!DOCTYPE html>` declares that this document is a html document
* `<html>` and `</html>` mark the beginning and the end of the **HTML element**. Everything else is nested underneath!

1. Try to find the rest of the **elements** with your fellow students.

You can review some of the most important html tags <a href="htmlcheatsheet.pdf">here </a>.

- `<head>` starts the *head element* and `</head>` ends it
- The title of the web page between `<title>` and `</title>` tags
- The main part of the page (the *body element*) goes between `<body>` and `</body>`
- `<h1>` and `</h1>` make a **header**
- `<p>` and `</p>` make a **paragraph**

### Activity: Changing the look of text 💻

If you have some special text, here are someways to make it stand out:

- `<strong></strong>` makes text **bold**
- `<em></em>` makes text *italic*
- `<mark></mark>` <mark>highlights</mark> text

**Your turn**:

- Can you <mark>highlight</mark> your favourite dish on the list?
- Can you make all the Holiday names **bold** and foods *italic*?

### Activity: Making a list of holiday foods 💻

Now we will add some more information to your site. If we want to list a lot of items, or list a series of steps to take in order, we can use another element for those! A **list**!

1. In the HTML tab of your code playground, paste or type the following in the `body` of your site under the `h1` and `p` elements
  ```html
  <ul>
    <li>Holiday Name
      <ul>
        <li>Dish 1</li>
        <li>Dish 2</li>
      </ul>
    </li>
    <li>Holiday Name
      <ul>
        <li>Dish 1</li>
        <li>Dish 2</li>
      </ul>
    </li>
    <li>Holiday Name</li>
  </ul>
  ```

1. Can you fill it in with your favourite holidays and some of the food you like to eat? Here is a Canadian example:
  ```html
  <ul>
    <li>Canadian Thanksgiving
      <ul>
        <li>Pumpkin Pie</li>
        <li>Mashed Potatoes</li>
        <li>Tossed Salad</li>
        <li>...</li>
      </ul>
    </li>
  </ul>
  ```
  - Canadian Thanksgiving
      - Pumpkin Pie
      - Mashed Potatoes
      - Tossed Salad
      - ...

You just made a **nested list** -- there are lists inside your list!

There are different types of lists!

- Pumpkin Pie
- Mashed Potatoes
- Tossed Salad

1. Put your jacket on
1. Put your shoes on
1. Tie your shoelaces

For **unordered lists** we use the `<ul></ul>` tags and each list item starts with `<li>`. **Ordered lists** we use the `<ol></ol>` tags, and each list item still starts with `<li>`.

**Your turn**:

- Can you make a new list with the order of your favourite foods from above?

## Parts of a Web Page

A web page often has many separate parts it can be logically seperated into. To help make web pages easier to build, people use elements to identify these seperate **sections** and create a broad outline, kind of like how you would a document on paper.

Some of the most frequently used sections, also in the image below, are:

`<article>`
`<aside>`
`<header>`
`<footer>`
`<h1>` through `<h6>`
`<nav>`
`<section>`

The image below identify some of the most important of these separate sections, can you guess what they do?

![](/images/semantics.jpg)

Each of these tags define an independent `element` in the HTML document.
These elements are *semantic* because the tag also defines the function of their content in the document.

Think about is this way:

- The content of the walls of your class room (stuff like pictures, graphs, etc.) are in the *semantic element* of `<wall>`
- What is on the ground of your classroom (stuff like your chairs, desks, etc.) are in the *semantic element* of `<ground>`
- What is on your desks (stuff like your monitor, mouse, keyboard, etc.) are in the *semantic element* of <desk>`

Let's do an activity to practice using these tags!

### Activity: Classroom Tags 🏃🏾‍♀️

<div class="alert alert-success">
  <h4>🎉🎊🎉 You finished the first class! 🎉🎊🎉</h4>
</div>

You now know about computers, programming languages and the Internet. You also have begun your journey into web development by taking your first steps into the realm of HTML.

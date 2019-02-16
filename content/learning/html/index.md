---
title: "HTML!"
description: "Our First Steps into the Web"
weight: 2
alwaysopen: true
---

# Building Blocks of HTML

## Activity: Creating your first Page 💻

Sometimes it helps to just start building!

1. On your computer, open the [**code playground**](http://). You can do this by clicking the link, or clicking the "Code Playground" link on the top right of the this web site

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: Code Playground</strong><br />
  A <strong>code playground</strong> is a live environment where you can type out your code and see the results in real time. The code playground always watches the changes you are making and then reloads just the section of the page that shows the "finished" result.
</div>

2. [Click on this link]($JSBIN_URL/pic/edit?html,output)In the HTML tab of your code playground, paste the following:

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

3. In your code playground, try making changes to the HTML where you see "...". Pay attention to what happens to the resulting web page when you make certain changes to the code

<div class="alert alert-success">
  <h4>🎉🎊🎉 Congratulations, you just made your first web page! 🎉🎊🎉</h4>
</div>

Now, to go back and talk through what made it possible to make that page.

## Tags

The two core parts of HTML are **elements** which are created using **tags** in order to describe and structure content!

**Tags** specify where elements start and where they end. All tags start with a `<` left angle bracket and end with a `>` right angle bracket.

For example in the HTML code above `<!DOCTYPE>`, `<html>`, and `</html>` are some of the tags we can see.

### Activity: Locate the tags 💻

Try to find more tags **tags** in the HMTL code above with your fellow students.

Now that we can identify tags, let's describe the code above to understand what we did there:

* The `<!DOCTYPE html>` declares that this document is a html document
* `<html>` and `</html>` mark the beginning and the end of the **HTML element**. Everything else is nested underneath!

## Elements

A html document consists of **elements**. The body that goes between a start tag and an end tag is called an **element** in html. For example, the **HTML element** in the code above consists of everything from the start tag `<html>` to the end tag `</html>`

### Activity: Locate the elements 💻

1. Try to find the rest of the **elements** with your fellow students.

You can review some of the most important html tags <a href="htmlcheatsheet.pdf">here </a>. The document is from the Stanford University.

- **Start tag** `<head>` starts the *head element* and `</head>` ends it
- The title of the web page between `<title>` and `</title>` tags
- The main part of the page (the *body element*) goes between `<body>` and `</body>`
- `<h1>` and `</h1>` indicate what goes between is a header
- `<p>` and `</p>` mark the beginning and end of a paragraph element

### Activity: Changing the look of text 💻

If you have some special text you want to add emphasis to there are a few common ways you can!

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

You just made an **list** that have a few lists **nested** inside it!

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

**[TODO: write some aspect of this here]**


<div class="alert alert-success">
  <h4>🎉🎊🎉 You finished the first class! 🎉🎊🎉</h4>
</div>

You now know about computers, programming languages and the Internet. You also have begun your journey into web development by taking your first steps into the realm of HTML.

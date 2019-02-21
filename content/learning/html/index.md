---
title: "HTML!"
description: "Our First Steps into the Web"
weight: 2
alwaysopen: true
---

<div class="alert alert-success">
  <h3>🔖 Using This Page</h3>
  <ul>
    <li><a href="http://kgbv.local:3000/register" target="_blank">Make your Code Playground account</a></li>
    <li><a href="http://kgbv.local:3000/vav/edit?html,output">Click here to write your first web page</a></li>
    <li>Later, <a href="#activity-making-a-list-of-holiday-foods">add this list to your web page</a></li>
    <li>Then, <a href="#activity-tag-cubes">play with the tag cubes</a></li>
  </ul>
</div>

## Webpages and Computer Languages

When you go to Google's website, you see this:

![Google India home page](/images/google.png)

But what the computer sees is this:

![Source code for Google India](/images/google-code.png)

This language, called HTML or Hypertext Markup Language, is the language of web pages. Taken together with two other languages, CSS or Cascading Style Sheets, and JavaScript, it helps to power the Web.

If we want to make our own web pages, we have write out our instructions about what we want using the language that the computer can understand--and that is what we will be learning about this week!

# Building Blocks of HTML

## Activity: Creating your first Page 💻

Sometimes it helps to just start building!

1. On your computer, open the <a  target="_blank" href="http://kgbv.local:3000/register">code playground</a> and make an account:
- choose a simple name that no one else will use
- for "email", write your username + `@example.com`
- write down your account and password in your notebook right away
- after class, come write them down in our book so that we have them too.

**Tip:** You can always find the code playground by clicking the "<a href="http://kgbv.local:3000">Go Write Code</a>" link on the top right of this web site

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: Code Playground</strong><br />
  A <strong>code playground</strong> is a live environment where you can type out your code and see the results in real time. The code playground always watches the changes you are making and then reloads just the section of the page that shows the "finished" result.
</div>


1. <a target="_blank" href="http://kgbv.local:3000/vav/edit?html,output">Click on this link</a>.  You will see the following code there:

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

3. In your code playground, please tell us what you like to eat by typing where you see the  "...". Pay attention to what happens when you make changes to the code

<div class="alert alert-success">
  <h4>🎉🎊🎉 Congratulations, you just made your first web page! 🎉🎊🎉</h4>
</div>

Now, why does this work?

## Tags and Elements

HTML has **elements** which are made with **tags**!

**Tags** show where elements start and end. All tags start with a `<` left angle bracket and end with a `>` right angle bracket.

For example in the HTML code above `<!DOCTYPE>`, `<html>`, and `</html>` are some of the tags we can see.

### Activity: Locate the tags 💻

Try to find more tags **tags** in the HMTL code above with your fellow students.

Now that we can identify tags, let's describe the code above to understand what we did there:

* The `<!DOCTYPE html>` tells the computer  that this document is a html document
* `<html>` and `</html>` mark the beginning and the end of the **HTML element**. Everything else is nested inside!

1. Try to find the rest of the **elements** with your fellow students.

You can review some of the most important html tags [here](htmlcheatsheet.pdf).

- `<head>` starts the *head element* and `</head>` ends it
- The title of the web page between `<title>` and `</title>` tags
- The main part of the page (the *body element*) goes between `<body>` and `</body>`
- `<h1>` and `</h1>` make a **header**
- `<p>` and `</p>` make a **paragraph**

### Activity: Tag Cubes
Now we're going to take a break from the computer!

- cut out the tag cubes
- make a model of a web page using the tag cubes

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

Like you, a web page has many parts: a `<head>` and a `<body>`, and all the pieces inside.  When we make a web page, we usually start by buiding a **skeleton**. We make the **shape** of the web page out of empty elements, and we fill in the **content** of the page afterwards.

We use special tags to build the skeleton. They tell the computer what part of the page is inside them. In these lessons, we will use these tags to help "structure" the web page:

- `<h1>`, `<h2>`, and `<h3>` : these tags make "headings" -- `h1` is the biggest, and `h3` is smaller
- `<header>`: We use this for content that goes at the top of the page, like the title, and sometimes also certain links.
- `<nav>`: the nav is usally inside or right after the `header` tag. It helps your users to "navigate" your page.
- `<main>` : we put most of the content in our pages inside the `main` tag
- `<article>`and `<section>`: we use these for parts of the main content
- `<aside>`: we use `aside` when we havewritten something that is not part of the main story we aretelling, but is somehow related. We use asides the way we sometimes use smaller boxes in a poster.
- `<footer>`: this is for content that you want to put at the bottom of your web page.

This picture shows how you might make a web page out of these "structural" tags

![web page structured by semantic tags](/images/semantics.jpg)

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: "Semantic" Tags</strong><br />
  We call these tags <strong>"semantic"</strong> because the name of the tag also defines the **function** of the content inside of the web page. "Semantic" is a compliated word, and you don't need to use it; but you might see other people use it when you are exploring the Internet.
</div>


Let's do an activity to practice using these tags!

### Activity: Classroom Tags 🏃🏾‍♀️

A web page has **structure**, just like a human body, or an automobile, or a house. It works best when the pieces of the structure are put together in the right order.  Your classroom has a "structure" too. Let's build a model of the classroom using tags! You can do ths however you want, but here are some ideas:

- The content of the walls of your class room (stuff like pictures, graphs, etc.) could be in the *element* of `<wall>`
- What is on the ground of your classroom (stuff like your chairs, desks, etc.) could be in the *semantic element* of `<ground>`
- What is on your desks (stuff like your monitor, mouse, keyboard, etc.) could be in the *semantic element* of <desk>`


<div class="alert alert-success">
  <h4>🎉🎊🎉 You finished the first class! 🎉🎊🎉</h4>
</div>

You now know about computers, programming languages and the Internet. You also have begun your journey into web development by taking your first steps into the realm of HTML.

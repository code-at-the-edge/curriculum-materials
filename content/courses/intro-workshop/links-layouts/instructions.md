# Instructions

## Introduction

Today we'll cover **two main concepts** through a mix of activities at the computer and moving around playing a game:

1. **Creating connections, or links, to different parts of a web site or even between sites** (40 minutes)
    - Pair programming
      - adding `a` HTML elements (`href` anchors with ids)
      - navigating to different pages?
    - Connecting Online Game
1. **Controlling how a web site is structures, or how elements are positioned** (30 minutes)
    - Pair programming
      - `border, padding, margin, display, position, float` CSS properties
1. **Project Time** (30 minutes)
    - Connecting and navigating between pages

You'll recall in over the last two day's we've talked about:

[Summary of key concepts]

We've also been working in teams (hopefully pairs!) at our computers to try out working on these activities, we'll start off doing that again today ⌨ 🖱.

## Creating connections, or linking web sites

Links are one of the most common features of web sites. In fact, they are what make web sites a "web". You can click on a link and "jump" or "follow" it to another page! The neat part about a link is that it doesn't have to be only text, it can be an image or other element.

Links are often "local", that means they take you to another page on the same site, however they can also be "extenal" and take you to another site, or image, file, document, email, or phone number that you don't really have control over.

```
**A link by another name**
Links used to be known as HTML links, hyperlinks (because the "H" stands for Hyper). When people are taking about _external_ links they often just refer to a link based on the _type of destination_ as a "URL" (Uniform Resource Locator) or "URI" (Uniform Resource Identifier), but those are actually the names of the thing being linked to, not the act of making a connection.
```

### Adding a Link

Let's try adding a link now --

First things, a link is defined using the `<a>`, or anchor, element. It often looks like:

```
<a href="https://mozillaindia.org/">Mozilla India</a>
<a href="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg" alt="Picture of Kangchenjunga taken by author from Goecha La pass, 4940m, Sikkim" /></a>

```

In the `<a>` element the `href` attribute specifies the _destination_, sometimes called an _address_. The element opening tag and closing tag go around the part of the web page that becomes the link: either text or an image!

`<a href="destination">link text or image</a>`

The destination can be either _local_, or a part of our own web sites, or _external_, a part of someone else's web site or some other thing that is theirs.

When we make local links we can point to a whole page, or just a part of a page we want to draw attention to. To mark a part of a page that we want to link directly we use the `id` or identifier attribute:

```
<a id="bookmark"></a>
<p id="introduction">This is the first paragraph of my page. Below, I have images of my favourite places</p>
```

Then we use the `#` or hash symbol plus the `id` as the destination!

`<a href="#introduction">Go to the introduction</a>`

### PAIR PROGRAMMING: Linking to another page

Now your turn!

Try:
- Adding a link to another part of the same page
- Adding a link to another page
- If you have time, try adding a link to the course website!

```
Hint: you can find the _address_ of a web site by looking in the top centre of the browser bar
```

## GAME: Connecting Online

We've started to practice using links and see how they can create paths, or routes, between different parts of our own pages and sites as well as maybe even _different_ sites.

Let's pause for a minute and talk about what that means-- creating links on the Web, that are visitable by everyone who comes to our web page:

[explain rules -- make up lessons!!]

## PAIR PROGRAMMING: Layout and Positioning

Now that we have added links and thought about what it means to have connections between websites, we should look at _how to organize our own web pages_ so they are meaningful to us and can be easier read by other people!

[topics `border, padding, margin, display, position, float` CSS properties]

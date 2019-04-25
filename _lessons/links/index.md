---
title: Links
description: ""
weight: 4
alwaysopen: true
---

Today we'll learn how to create connections, or **links** 🔗🌐. By the end of the class you will know how to:

- Add links to different parts of your web page or even between sites
- Add images to your web page

<div class="alert alert-success">
  <h3>🔖 Using This Page</h3>
  <ul>
    <li><a href="http://kgbv.local:3000/" target="_blank">Open your web page in the Code Playground</a></li>
    <li><a href="#activity-linking-to-another-page">Add a link to your page</a></li>
    <li><a href="#activity-connecting-online">Play a game to learn more about connecting online</a></li>
  </ul>
</div>

## Creating connections, or linking web sites

Links are one of the most common features of web sites. In fact, they are what make web sites a "web". You can click on a link and "jump" or "follow" it to another page! The neat part about a link is that it doesn't have to be only text, it can be an image or other element.

Links are often "local", that means they take you to another page on the same site, however they can also be "external" and take you to another site, or image, file, document, email, or phone number that you don't really have control over.

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: A link by another name</strong><br />
  Links used to be known as HTML links, hyperlinks (because the "H" stands for Hyper). When people are taking about <em>external</em> links they often just refer to a link based on the <em>type of destination</em> as a "URL" (Uniform Resource Locator) or "URI" (Uniform Resource Identifier), but those are actually the names of the thing being linked to, not the act of making a connection.
</div>

## Adding a Link

Let's try adding a link now --

First things, a link is defined using the `<a>`, or anchor, element. It often looks like:

```html
<a href="https://mozillaindia.org/">Mozilla India</a>

<a href="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg"
         alt="Picture of Kangchenjunga taken from Goecha La pass, 4940m,Sikkim" />
</a>
```

<a href="/images/800px-Kangch-Goechala.jpg"><img src="/images/800px-Kangch-Goechala.jpg"
alt="Picture of Kangchenjunga taken from Goecha La pass, 4940m,Sikkim" width="50%" /></a>

In the `<a>` element the `href` attribute specifies the _destination_, sometimes called an _address_. The element opening tag and closing tag go around the part of the web page that becomes the link: either text or an image!

```html
<a href="destination">link text or image</a>
```

The destination can be either _local_, or a part of our own web sites, or _external_, a part of someone else's web site or some other thing that is theirs.

When we make local links we can point to a whole page, or just a part of a page we want to draw attention to. To mark a part of a page that we want to link directly we use the `id` or identifier attribute:

```html
<a id="bookmark"></a>
<p id="introduction">This is the first paragraph of my page.
Below, I have images of my favourite places</p>
```

Then we use the `#` or hash symbol plus the `id` as the destination!

```html
<a href="#introduction">Go to the introduction</a>
```

### Activity: Linking to another page 💻

Now it's **your turn**! Try to:

- Add a link to another part of the same page
- Add an image from the <a href="http://kgbv.local/pictures/" target="_blank">Picture Gallery</a>
- If you have time, add a link to the course website!

<div class="alert alert-warning">
  <strong>🔎 Hint: Finding web addresses </strong><br />
  You can find the <em>address</em> of a web site by looking in the top centre of the browser bar
</div>

## Activity: Connecting Online 🏃🏾‍♀️

We've started to practice using links and see how they can create paths, or routes, between different parts of our own pages and sites as well as maybe even _different_ sites.

What does it mean for links on the Web to be visitable by everyone who comes to our web page. Let's try to understand by acting out sending messages to each other through the internet!

Setup:

1. Get into a circle, there are three types of positions the teacher will assign:
  - The Message Writer
  - The Internet (carries the message)
  - The Server
1. The Internet must rip the message into four "packets".
1. If the Internet drops a packet, they have to pick it up and go back to the start to deliver it again.
1. The server has to wait for all of the message pieces to arrive before it can begin to send the message along.

# Instructions

## Introduction

Today we'll cover **two main concepts** through a mix of activities at the computer and moving around playing a game:

1. **Creating connections, or links, to different parts of a web site or even between sites**
    - Pair programming
      - adding `a` HTML elements (`href` anchors with ids)
      - navigating to different pages?
    - Connecting Online Game
1. **Controlling how a web site is structured and how elements are positioned**
    - Pair programming
      - `border, padding, margin, display, position, float` CSS properties
1. **Project Time** (30 minutes)
    - Connecting and navigating between pages

Over the last two days we've talked about:

[Summary of key concepts]

We've been working in teams (hopefully pairs!) at our computers to work together on these activities, we'll start off doing that again today ⌨ 🖱.

## Creating connections, or linking web sites

Links are one of the most common features of web sites. In fact, they are what make web sites a "web". You can click on a link and "jump" or "follow" it to another page! The neat part about a link is that it doesn't have to be only text, it can be an image or other element.

Links are often "local", that means they take you to another page on the same site, however they can also be "extenal" and take you to another site, or image, file, document, email, or phone number that you don't really have control over.

**A link by another name**{:tip}
Links used to be known as HTML links, hyperlinks (because the "H" stands for Hyper). When people are taking about _external_ links they often just refer to a link based on the _type of destination_ as a "URL" (Uniform Resource Locator) or "URI" (Uniform Resource Identifier), but those are actually the names of the thing being linked to, not the act of making a connection.

## Adding a Link

Let's try adding a link now --

First things, a link is defined using the `<a>`, or anchor, element. It often looks like:

```html
<a href="https://mozillaindia.org/">Mozilla India</a>
<a href="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kangch-Goechala.jpg/800px-Kangch-Goechala.jpg" alt="Picture of Kangchenjunga taken by author from Goecha La pass, 4940m, Sikkim" /></a>
```

In the `<a>` element the `href` attribute specifies the _destination_, sometimes called an _address_. The element opening tag and closing tag go around the part of the web page that becomes the link: either text or an image!

```html
<a href="destination">link text or image</a>
```

The destination can be either _local_, or a part of our own web sites, or _external_, a part of someone else's web site or some other thing that is theirs.

When we make local links we can point to a whole page, or just a part of a page we want to draw attention to. To mark a part of a page that we want to link directly we use the `id` or identifier attribute:

```html
<a id="bookmark"></a>
<p id="introduction">This is the first paragraph of my page. Below, I have images of my favourite places</p>
```

Then we use the `#` or hash symbol plus the `id` as the destination!

```html
<a href="#introduction">Go to the introduction</a>
```

### Activity: Linking to another page

Now it's **your turn**! Try:

- Adding a link to another part of the same page
- Adding a link to another page
- If you have time, try adding a link to the course website!

```
Hint: you can find the _address_ of a web site by looking in the top centre of the browser bar
[Screenshot from our RPi?]
```

## Game: Connecting Online

We've started to practice using links and see how they can create paths, or routes, between different parts of our own pages and sites as well as maybe even _different_ sites.

Let's pause for a minute talk about what that means-- creating links on the Web, that are visitable by everyone who comes to our web page.
Okay, let's try to understand what is going on and pretend to send messages through the internet!

Rules and Setup:
- Divide into groups of 3 to 5.
- Each group has an IP address, and each person in the group gets a position:
    The Message Writer
    The Internet
    The Server (carries the IP address)
    The Return Internet (optional)
    The Message Receiver (optional)
- The Internet must rip the message into exactly four packets.
- If the Internet drops a packet, they have to pick it up and go back to the start to deliver it again.
- The server has to wait for all of the message pieces to arrive before it can begin to send the message along.

## Layouts for HTML

Now that we have added links and thought about what it means to have connections between websites, we should look at _how to organize our own web pages_ so they are meaningful to us and are easier read for other people!

With HTML and CSS organizing and structuring a page is called **layout** and we can think about HTML elements as a series of nested _boxes_, with the text and images we care about, or smallest box at the centre, often called _content_.

*Remember how we discussed CSS and changing the look of a website yesterday? The same rules of "inheretence" apply for how we lay out and control the size and spacing of elements*

When a page is laid out, each _element_ has a box put around it, and each box has 4 parts, or areas:

- Content
- Padding
- Border
- Margin

![Image of HTML Box model with content, padding, border, margin elements, courtesy of w3schools](images/box-model.png)

It is because of these parts we can add a border around elements and to control how much space is between elements. This helps text or images be easy to read, be emphasized if they are important, or just look exactly how you want it.

## Activity: Creating Borders

Okay, let's start from our template, you can work from you're existing page or from scratch:

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Title Goes Here</title>
</head>
<body>

<h1>My name is...</h1>
<p>I think computers are...</p>

</body>
</html>
```

Now, how about we add a `border` to all the biggest headers, so `h1` elements! We can specify the thickness or width of the border, the style, and the colour all at once:

```css
h1 {
  border: 2px solid black;
}
```

This ability that `border` has is because it is a `shorthand` property, which is a fancy way of saying it is a fast way of setting many values.

**Your turn**:

- Changing the color of the border to blue
- Making a thicker border
- Adding a border to somthing else on the page
- Adding a border to multiple things on the page at the same time

## Activity: Making Space

Now that we have a nice border around our header, let's also add a border around our first paragraph so we can see a bit better how much space we have between them:

```css
h1 {
  border: 2px solid blue;
}

p {
  border: 2px solid black;
}
```

We can change the width of an element using the `width` property, we can also use `height`, these are less useful for adjusting text specifically, but it can be important to set the size of the content we want to make space around.

Now, lets add some space for the concent _inside_ borders, for that we use `padding`.

Lets add some `padding` to our `p` element:

```css
p {
  border: 2px solid black;
  padding: 20px;
}
```

The property `padding` is also a quick way of setting padding around the whole area. It we want it to be the same we can use just one value, as we have done above, or we can set a value for each side seperately:

```css
padding: 20px 0 20px 0; /* This sets top and bottom padding at 20px and left and right at 0px */
```

Or, if we want to be really clear about what padding we are setting, we can define it for each side individually:

- `padding-top`
- `padding-right`
- `padding-bottom`
- `padding-left`

We use the property `margin` in the same way, either in it's shorthand or individual form, lets add a `margin-bottom` to our header:

```css
h1 {
  border: 2px solid blue;
  margin-bottom: 20px;
}
```

**Your turn:**

- Adding space outside the border on the top side of the paragraph
- Adding a margin on the left and right of the header, using only one property *hint: you can use shorthand!*
- Adding more space inside the border for the paragraph, however you want!

## Relative over absolute units

A note on **units**: in CSS there are lots of ways to specify the length of something, so far we've mostly used "px" or CSS pixels, which are a specific measurement that relates to the size of the screen you view a website on _and_ the real world at the same time. Originally, 96 pixels was supposed to be 1-inch.

However, there are so many different screens with different ways of displaying pixels and different resolutions in the world that this was never totally true in practice. Now that many more people are using phones or small tablets to view web sites, it is even more true!

As a result, people focus on using ways to specifying size that are _flexible_, _adaptive_ and are _scalable_, which means they can grow--or shrink!!-- with the size of the screen!

| Unit name | Unit  | Description    |
|-----------|-------|----------------|
| Pixel     | `px`  | Absolute unit, relative to the screen |
| Inch      | `in`  | Absolute unit 1`in` = 96px |
| Percent   | `%`   | Relative unit based on a percentage of the parent element |
| Em        | `em`  | Relative unit based on the `font-size` of the element, 1`em` = 1x the size of the font |
| Root Em   | `rem` | Relative unit based on the `font-size` of the "root" element on the page, this doesn't change depending on where it is in the page! |

**Your turn**:

- Change your use of pixels for margin and padding above to one of the _relative units_: `rem`, `em`, or `%`, how does that make it different?

## Positioning elements



`display, position, float` CSS properties



## Activity:

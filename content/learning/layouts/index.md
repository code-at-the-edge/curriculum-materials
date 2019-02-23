---
title: Layouts
description: ""
weight: 5
alwaysopen: true
---

Today we'll learn how to change the layout and shape using HTML elements and CSS on your web page. By the end of the class you will know how to:

- Extra HTML structure on your web page
- Control the structure of HTML with CSS
- Move where elements are positioned on the page

<div class="alert alert-success">
  <h3>🔖 Using This Page</h3>
  <ul>
    <li><a href="http://kgbv.local:3000/" target="_blank">Open your web page in the Code Playground</a></li>
    <li><a href="#activity-creating-borders">Learn how to make borders</a></li>
    <li><a href="#activity-making-space">Create space around text and elements on your page</a></li>
    <li><a href="#activity-putting-images-and-text-together">Put text and images together!</a></li>
  </ul>
</div>

## Layouts for HTML

Now that we have added links and thought about what it means to have connections between websites, we should look at _how to organize our own web pages_ so they are meaningful to us and are easier read for other people!

With HTML and CSS organizing and structuring a page is called **layout** and we can think about HTML elements as a series of nested _boxes_, with the text and images we care about, or smallest box at the centre, often called _content_.

*Remember how we discussed CSS and changing the look of a website yesterday? The same rules of "inheritance" apply for how we lay out and control the size and spacing of elements*

When a page is laid out, each _element_ has a box put around it, and each box has 4 parts, or areas:

- Content
- Padding
- Border
- Margin

![Image of HTML Box model with content, padding, border, margin elements, courtesy of w3schools](/images/box-model.png)

It is because of these parts we can add a border around elements and to control how much space is between elements. This helps text or images be easy to read, be emphasized if they are important, or just look exactly how you want it.

## Activity: Creating Borders 💻

Okay, let's start from our template, you can work from your existing page or from scratch:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link href="style.css" rel="stylesheet"/>
    <title>Site Title</title>
  </head>
  <body>
    <main>
      <header>
        <h1>Site Title</h1>
      </header>

      <nav>
      </nav>

      <section class="sidebar">
      </section>

      <article>
        <h2>My favourite foods</h2>
        <p>Some of my favourite foods are
        </p>
      </article>

      <aside>

      </aside>
    </main>
  </body>
</html>
```

Now, how about we add a `border` to all the biggest headers, so `h1` elements! We can specify the thickness or width of the border, the style, and the color all at once:

```css
h1 {
  border: 2px solid black;
}
```

This ability that `border` has is because it is a `shorthand` property, which is a fancy way of saying it is a fast way of setting many values.

**Your turn**:

- Change the color of the border to blue
- Make a thicker border
- Add a border to something else on the page
- Add a border to multiple things on the page at the same time

## Activity: Making Space 💻

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

Now, lets add some space for the content _inside_ borders, for that we use `padding`.

Lets add some `padding` to our `p` element:

```css
p {
  border: 2px solid black;
  padding: 20px;
}
```

The property `padding` is also a quick way of setting padding around the whole area. It we want it to be the same we can use just one value, as we have done above, or we can set a value for each side separately:

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

- Add space outside the border on the top side of the paragraph
- Add a margin on the left and right of the header, using only one property *hint: you can use shorthand!*
- Add more space inside the border for the paragraph, however you want!

## Activity: Making websites better for phones 💻

In CSS there are lots of ways to tell the computer the length of something, so far we've mostly used "px" or CSS pixels. These are **absolute** instructions, they identify a specific length and they do not always work on different types of devices.

Now that many more people are using phones or small tablets to view web sites, people focus on using **relative** ways to specify size, this means they can grow--or shrink!!-- with the size of the screen!

**Your turn**:

- Change your use of pixels for margin and padding above to one of the _relative units_: `rem`, `em`, or `%`, how does that make it different?

| Unit name | Unit  | Description    |
|-----------|-------|----------------|
| Pixel     | `px`  | Absolute unit, relative to the screen |
| Inch      | `in`  | Absolute unit 1`in` = 96px |
| Percent   | `%`   | Relative unit based on a percentage of the parent element |
| Em        | `em`  | Relative unit based on the `font-size` of the element, 1`em` = 1x the size of the font |
| Root Em   | `rem` | Relative unit based on the `font-size` of the "root" element on the page, this doesn't change depending on where it is in the page! |

<div class="alert alert-info">
  <strong>🔖 Terms and Tools: Absolute and Relative units</strong><br />
  In CSS there are lots of ways to tell the computer the length of something, so far we've mostly used "px" or CSS pixels, which are <strong>absolute units</strong> that relates to the size of the screen you view a website on <em>and</em> the real world at the same time. Originally, 96 pixels was supposed to be 1-inch. There are so many different screens with different ways of displaying pixels and different resolutions that this was never true in practice. As a result, people focus on using <strong>relative units</strong> to specify sizes that are <em>flexible</em>, <em>adaptive</em> and are <em>scalable</em>.
</div>

## Positioning elements

Now that we know how to make space around elements, lets put that together with what we learned before about adding images, changing colours, and different sections of a web page!

### Activity: Putting images and text together 💻

One our websites we have put in a lot of info about food but without images, lets put those together now by showing off the ingredients we might find in a recipe.

To start, let's make a class called "`ingredient`" with a header, image, and some text:

```html
<section id="ingredient-list">
  <div class="ingredient">
    <h3>Spice</h3>
    <img src="http://kgbv.local/pictures/images/anise-aroma-art-277253.jpg" />
    <p>Spices are an ingredient in many foods</p>
  </div>
</section>
```

```css
.ingredient {
  border: 1px solid black;
  padding: 0.5rem;
  margin: 0.25rem;
}

.ingredient > h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}
```

How about we have the image stay on the right side and the text on the left. We can use the CSS property `float` to do so! It has a few possible values:

- `left`
- `right`
- `none` - Will be displayed where it occurs in the text. This is what  **normally happens**!
- `inherit` - The element inherits the float value of its parent

Lets add a float to the image and see what it does! If we just want that to happen for ingredient images we need to specify that in the CSS:

```css
.ingredient > img {
  float: right;
}
```

Looks pretty good, but what happens if we use the other float values `right`, `none`, and `inherit`?

Also, the image seems like it overflows. In order to fix this we can use a "fix" or use another CSS property, `display` to help with this. **Display** is important, because it controls how and element is displayed, and can even hide it! It has a lot of values because it is used for all sorts of things! It can be used to set how things are displayed inside the element, outside the element, both together, or if it is a list!

We want to set how both the inside and outside look, we can use the value `inline-flex` for this:

```css
.ingredient-list {
  display: inline-flex;
}
```

Now lets add more ingredients and see what we get!

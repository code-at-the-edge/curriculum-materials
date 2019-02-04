# Lesson Plan for Links and Layouts

## Audience

12-16 year olds

## Time

2.0 hours

## Rationale and Learning Objectives

- Recognize links on a web page and create, remove, and update `a` HTML elements
- Navigate all pages in project using links
- Define html box model, css layout and positioning
- Change page layout using `border, padding, margin, display, position, float` CSS properties
- Understand difference between project web page and online web sites

## Preparation

### Materials Required

- [ ] Configured Raspberry Pi
  - Ensure [Raspberry Pi upload] is working for **Linking Websites** section
  - Ensure [Raspberry Pi "Link Page"] is working for **Linking Websites** section
- [ ] Yarn and connection cards (cut out)

### Room Setup

- Computer Lab, with 2-4 chairs at space near each computer
- Room to stand (could move outside for activity)

## Outline

1. **Introduction** (10 minutes)
1. ***Creating connections, or links** (40 minutes)
    - Pair programming (25 mimutes)
      - adding `a` HTML elements (`href` anchors with ids)
      - navigating to different pages?
    - Connecting Online Game (15 minutes)
      - Hand out cards with icons, ask folks to get/share that info without moving
      - Provide yarn and reask, above. Spend some time having them ask and throw around stuff
      - Flag privacy issue? Local / internet?
1. **Controlling how a web site is structured** (30 minutes)
    - Presentation (10 minutes)
    - Pair programming (20 minutes)
      - `border, padding, margin, display, position, float` CSS properties
1. **Project Time** (30 minutes)
    - Connecting and navigating between pages
1. **Conclusion** (10 minutes)

## Section Facilitation

### Introduction

- Present from the student instructions portion of the curriculum wesite

### Creating connections, or links

- Present from the student instructions portion of the curriculum wesite

### Connecting Online Game

- This is a modified version of the Code Course E, Lesson 27: The Internet activity, lesson plan available: https://curriculum.code.org/csf-18/coursee/27/

- Warm Up Questions:
  - Recall two days ago we talked about the Internet and the World Wide Web
    -"What is the internet?"
    - Is the internet a public place or a private place?
      - Code.org: it should be viewed as a public space no matter what settings you think you've mastered.)
    - How does information get from place to place?
  - We've talked about links and how for links to external websites they frequently use the name of the _destination_ as a "URL" (Uniform Resource Locator) or "URI" (Uniform Resource Identifier).
    - Say I want to look at the web site for <>
    - What is the process for me to send a message to request that page?
    - What do I do as a user?
    - What do you think happens inside the internet?

Sending a message over the internet is a like sending a message written by hand... but imagine having to split it into thousands of smaller parts!
Every message we send through the internet gets split up and each piece is wrapped in a sort of envelope we call a "packet." Packets are specially formed chunks of information that are able to easily flow through the internet. A few of those packets will get lost, because the internet is a big and complicated place. In that case, the packets need to be resent, and the whole message has to get put on hold until they arrive.

There are many ways to reach the internet (or other computers) from school or a house, in this class we can see that some computers are connected to each other with wires, and some don't look like they are connected but they are!

Even if you're sending messages to another person, they first have to go to at least one "server."
A server is a special computer that is supposed to be always on and ready to send and receive information.
Every website has a server.
Even email and whatsapp messages goes through servers.
Servers don't have names like you and I do, they're actually addressed using numbers. These numbers are called IP addresses.

So, if you're used to sending information to URLs (like www.code.org) and the servers actually have IP addresses for names (like 54.243.71.82) how does the Internet change from one to the other? That's what the DNS is for. The DNS (Domain Name Server) has tables that allow the system to go back and forth between URLs and IP addresses. If the Domain Name Servers ever stopped working, it would shut down the internet as we know it!

With that said, let's try to understand what the DNS does by making a little DNS table and pretend to send messages through the internet!

- Game Set up:

- Draw a "DNS Table"

| #   | URL       | IP Address    |
|-----|-----------|---------------|
| 1   | <>        |               |
| 2   |           |               |
| 3   |           |               |
| 4   |           |               |
| 5   |           |               |

- Fill in this table, take suggestions but also have prepared some (School Website, this Clase Website?)


- Create your own DNS table, similar to what is shown above.
- Divide into groups of 3 to 5.
- Assign each group an IP address from the newly created table, and assign each person in the group a position:
    The Message Writer
    The Internet
    The Server (carries the IP address)
    The Return Internet (optional)
    The Message Receiver (optional)
- Each group will draw an IP Address Cards and Delivery Type Cards - Manipulatives to find out where their message is going

- The Message Writer will craft a note to send to the server.
- The Internet will rip the message up into 4 small pieces called packets, then deliver each packet one at a time to the Server with the IP address that was drawn from the IP Address Card stack.
- The Server will make sure that the message arrives in order, then will send each packet off one at a time with the Return Internet (can be the same person or different person than the original Internet).
- The Return Internet will deliver each piece back to the Message Receiver (can be the same person or different person than the Message Writer) and put it back together.
- The Message Receiver will wait for all of the pieces to arrive, then read the message to be sure it arrived correctly!

Rules:

- The Internet must rip the message into exactly four packets.
- If the Internet drops a packet, they have to pick it up and go back to the start to deliver it again.
- The server has to wait for all of the message pieces to arrive before it can begin to send the message along.
- To play this game, you can have your groups cluster anywhere, but for the first time it can be less confusing to have groups play in a line.

### Controlling how a web site is structured

- Present from the student instructions portion of the curriculum wesite

## Resources

The following resources were used to plan this lesson:

- https://developer.mozilla.org/en-US/docs/Web/SVG/Element/a
- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a
- https://curriculum.code.org/csf-18/coursee/27/#the-internet3
- https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model
- https://www.w3schools.com/Css/css_boxmodel.asp
- https://webplatform.github.io/docs/tutorials/understanding-css-units/#On-CSS-pixels,-physical-units-and-scalability

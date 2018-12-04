# Curriculum Staging project for Code At the Edge

This repo generates a Hugo site that hosts curriculum materials built for [Code At the Edge](https://github.com/code-at-the-edge). At present we don't have much here. The initial purpose of the repo is to make it easier to view rendered lessons, but it may later be used as part of the classroom environment and/or as a platform for generation of JSON to be ingested by the coding environment.

## Installation

First, [install hugo](https://gohugo.io/getting-started/installing/). Then get the repo 

``` shell
git clone git@github.com:code-at-the-edge/curriculum-materials.git --recursive
```

## Usage

First, start the hugo server from  the root directory of your repo: 

``` shell
cd curriculum-materials
hugo server --navigate-to-changed
xdg-open http://localhost:1313/
```

Hugo will update as you work, though b ewarned that firefox is not 100% reliable when it comes to reloading iframes, so you want to use chrome. 

### Adding Materials

For now we have one course, which is found in `content/courses/intro-workshop/`. Each lesson plan gets its own subdirectory which contains several files. Since it's a bit finicky, you may want to use the hugo [archetypes](https://gohugo.io/content-management/archetypes/) system to generate the new curriculum:

``` shell
hugo new --kind lesson courses/intro-workshop/LESSON-TITLE
```
a new directory with the relevant content will be created as `courses/intro-workshop/LESSON-TITLE` and you can work there directly 

### viewing your work

Hugo should update automagically in your browser!

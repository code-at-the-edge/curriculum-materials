# Curriculum Staging project for Code At the Edge

This repo generates a Hugo site that hosts curriculum materials built for [Code At the Edge](https://github.com/code-at-the-edge). At present we don't have much here. The initial purpose of the repo is to make it easier to view rendered lessons, but it may later be used as part of the classroom environment and/or as a platform for generation of JSON to be ingested by the coding environment.

## Installation

First, [install Hugo](https://gohugo.io/getting-started/installing/) (you will require v0.48+). Then get the repo:

``` shell
git clone git@github.com:code-at-the-edge/curriculum-materials.git --recursive
```

## Usage

First, start the hugo server from the root directory of your repo:

``` shell
cd curriculum-materials
hugo server --navigateToChanged
xdg-open http://localhost:1313/curriculum-materials
```

Hugo will update as you work, though be warned that Firefox is not 100% reliable when it comes to reloading iframes, so you want to use Chrome.

### Adding Materials

For now we have one course, which is found in `content/courses/intro-workshop/`. Each lesson plan gets its own subdirectory which contains several files. Since it's a bit finicky, you may want to use the hugo [archetypes](https://gohugo.io/content-management/archetypes/) system to generate the new curriculum:

``` shell
hugo new --kind lesson courses/intro-workshop/LESSON-TITLE
```
a new directory with the relevant content will be created as `courses/intro-workshop/LESSON-TITLE` and you can work there directly

### Viewing Your Work

Hugo should update automagically in your browser!

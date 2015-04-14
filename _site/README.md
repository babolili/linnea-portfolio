# The SMaaS Project

The SMaaS Project is an open source project about designing for Techno-Inequality. It focuses on recreating useful online SaaS experiences as SMS products.

# Contributing

Anyone is free to contribute to the SMaaS Project.

### Reporting issues

Found errors in the data or changes you think should be made? Open up and issue with a description of the change or problem that you have found. If possible, please include a screenshot or example.

### Contributing technical knowledge

My technical knowledge is limited and so I would greatly appreciate any technical contributions, either in terms of suggested technologies that could make SMaaS projects possible, or even prototype versions that allow you to test out SMaaS projects. 

For suggested technologies, please fork this repo, add the relevant information in the `The Tech` section of `index.html`, and submit a pull request with your changes. If you have code to contribute add the link to your repo in index.html. 

### Contributing Design Ideas

The SMaaS project is quite a fun little challenge for testing how your UX design changes when there is no GUI, Google or online help docs. 

If you're comfortable with code, fork this repo and add your contribution in the `_posts` folder. It needs to be named YYYY-MM-DD-[article-title]. 

If you're unfamiliar with jekyll, please add this detail to the top your post:
```
---
layout: post
title: [post title here]
date: [date here]
author: linnea
---
```
You can also add yourself to the `authors` section of the `_config.yml` or leave a comment with your details so that I can credit you.

To create SMS mockups

```

<div class="sms-row">
<!-- small-preview creates 1/3 grid-->
  <div class="small-preview">
  <!-- title of whether it is a user or service -->
    <h5>User</h5>
    <div class="sms-window">
      [Message content here]
    </div>
  </div>

  <div class="small-preview">
    <h5>Service</h5>
    <!-- if it's a service, add class service to sms-window -->
    <div class="sms-window service">
      [Message content here]
    </div>
    <div class="caption">
      [character count here]
    </div>
  </div>
</div>
```
If you are not comfortable with coding, you can create your design in the `_drafts` folder, and it can be edited when there is time.

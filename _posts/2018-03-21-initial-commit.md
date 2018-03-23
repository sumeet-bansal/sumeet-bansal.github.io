---
layout: post
title:  "Initial Commit"
date:   2018-03-21
excerpt: "(obligatory first post)"
tag:
- internal
- technical
permalink: /post/initial-commit
---

<style>
table {
  width: 100%;
}
table, tr, td {
  border: none;
}
th, td {
  padding: 15px;
  padding-top: 7px;
  padding-bottom: 7px;
}
td:first-child {
  text-align: center;
}
td:last-child {
  text-align: left;
}
tr:hover {
  background-color: #f5f5f5;
}
</style>

## context
I'd been meaning to make my own personal website for a while now but hadn't gotten around to it for a couple reasons: for one, I didn't know how exactly I wanted to use it&mdash;what purpose would it serve besides that of any other ordinary personal website/blog (and I wasn't even sure if I wanted to use it as a blog)? And of course, those choices would inform my design decisions when I would finally get around to making my website. It eventually came down to if I wanted a static site that I made from scratch in pure HTML/CSS/JS or that was based on a Jekyll template and built with GitHub pages. And at some point, I decided to go with the Jekyll template because web "design" (as opposed to development) isn't my strongest area; it's easy enough to cobble together a basic Bootstrap website that isn't some aesthetic abomination, but a lot of people who are (frankly) better at making things look **good** have put a lot of time into, well, making things look good, so it just made sense to use an existing template and modify it to my unique (ish) needs/preferences. I think I stumbled across the Halve theme while browsing one of GitHub's collection of Jekyll themes, and decided to use that as my foundation. Since then, I've made some moderately heavy modifications to the internal structure of the project, so I'm just gonna go through some of those changes, commit-by-commit, and try to explain my thought process for anyone interested (but mostly for the sake of proper documentation and posterity).

## initial commit pt. 1
#### relevant commits

<table>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/06a69ab4b1bdd8ea98247ec848d0df9618d1b6ce">
        06a69ab
      </a>
    </td>
    <td class="message">
      basic Halve theme
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/78709324e62f572f2fd5155a26546e8384a35739">
        7870932
      </a>
    </td>
    <td class="message">
      updated _config.yml with personal info
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/e105a6b8ef76cb968b612be85912a56dea118658">
        e105a6b
      </a>
    </td>
    <td class="message">
      added placeholder index
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/9a3aac671ead06adb2b4d0ee9803d67cd5dbb91f">
        9a3aac6
      </a>
    </td>
    <td class="message">
      basic 404 Markdown
    </td>
  </tr>
</table>

This is Halve:

<a href="{{ site.url }}/images/halve-home-image.png"><img src="{{ site.url }}/images/halve-home-image.png" alt="Home Page of Halve"></a>  

Some more screenshots:
{% capture images %}
	{{ site.url }}/images/halve-home-image.png
	{{ site.url }}/images/post-image-halve-1.png
	{{ site.url }}/images/post-image-halve-2.png
{% endcapture %}
{% include gallery images=images cols=3 %}

And on mobile:

{% capture images %}
	{{ site.url }}/images/post-image-halve-3.png
	{{ site.url }}/images/post-image-halve-6.png
	{{ site.url }}/images/post-image-halve-4.png
{% endcapture %}
{% include gallery images=images cols=3 %}
      
You can find Halve [on GitHub](https://github.com/TaylanTatli/Halve) with [some solid documentation on how to get up and running](https://taylantatli.github.io/Halve/halve-theme/).

## overhauling the projects page
#### relevant commits
<table>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/8cf30eefe9d6538a9105903d3524eed859d3e1c3">
        8cf30ee
      </a>
    </td>
    <td class="message">
      transitioned projects overlay to its own page
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/d30773fe477afbaad54df6a571d73e895dfec0e3">
        d30773f
      </a>
    </td>
    <td class="message">
      fixed cross browser compatability issue with /projects
    </td>
  </tr>
</table>

The way Halve is originally set up has the projects page as an overlay on the other pages, which I personally really disliked, so I went ahead and made the projects overlay into a fully-fledged page. This involved updating the projects icon `href` on the rest of the layouts, making a separate `projects.html` (which was basically identical to the original `overlay.html`) layout and `projects.md` page, and then updating a bunch of CSS. It worked pretty well the first time around&mdash;the second commit's just fixing a CSS inheritance I forgot in the first commit and found while testing the new projects page on different browsers (probably something to do with Firefox's default CSS versus Chrome's and Edge's).

## a standard "navbar"
#### relevant commits
<table>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/028af1ba7cb7b642b79915faa8cfb77456392ec0">
        028af1b
      </a>
    </td>
    <td class="message">
      updated post-list layout to match right block in home
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/7e064b4317026d4103163e9dddb3c5a3f2e74686">
        7e064b4
      </a>
    </td>
    <td class="message">
      updated post layout to standardized right block navbar
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/b286671102525e367d1ad551fe504267e3417581">
        b286671
      </a>
    </td>
    <td class="message">
      removed /projects "navbar" and placed icons on top of menu
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/262c03b7a649c9ea71ddf1e4a65ce6493e8b1a58">
        262c03b
      </a>
    </td>
    <td class="message">
      updated icon CSS on /projects
    </td>
  </tr>
</table>

Pretty self-explanatory. The pages had different "navbars": the home page indicated what the icons stood for (i.e. had the "POSTS" and "PROJECTS" text under the icons) but the posts-list and post layouts didn't so I went ahead and changed that in the layouts' HTML. And since the projects page was originally an overlay, all it had was the projects icon, which closed the overlay, but that seemed a little restrictive and not very user-centered, so I added this standard navbar to the projects page as well, albeit color-inverted since that looked much cleaner.

## hiding scrollbars
#### relevant commits

<table>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/4b1b238654cad3b05aaad2a52ecc9dbdbc909542">
        4b1b238
      </a>
    </td>
    <td class="message">
      hid scrollbar across site
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/1e2d82f50e7b48e8efe355edc2096137440ee793">
        1e2d82f
      </a>
    </td>
    <td class="message">
      hid scrollbar for non-webkit browsers
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/0138b40455c439fd24101e9a9e6878e0919b3164">
        0138b40
      </a>
    </td>
    <td class="message">
      updated post layout with hidden scrollbar
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/79f4a017ec65077a04058601825efc3f4358072a">
        79f4a01
      </a>
    </td>
    <td class="message">
      hid horizontal scrollbars
    </td>
  </tr>
</table>

One thing I noticed with the original theme was that when going from the home page to the posts page or an individual post, the icons on the top right would shift slightly left. I realized that was because of the scrollbar throwing off the icons' offsets, so I decided to hide the scrollbars (while still maintaining the ability to scroll, of course). This was pretty easy via `::-webkit-scrollbar`, but the problem is that that only works on browsers that support `webkit` (e.g. Chrome and Safari) and browsers that didn't (e.g. Firefox and Edge) still had the scrollbars and the shifting icon issue. I found [this Stack Overflow post](https://stackoverflow.com/questions/16670931/hide-scroll-bar-but-while-still-being-able-to-scroll) pretty helpful; basically, it was just adding this snippet of JavaScript to each affected HTML file:
```javascript
var block = document.getElementById('affected-block');
block.style.marginRight = (block.clientWidth - block.offsetWidth) + "px";
```
What that does is add a `margin-right` style rule to the affected block, where `margin-right` equals the number of pixels the scrollbar takes up, essentially moving the entire block some `n` pixels right and hiding the scrollbar off-screen. Of course, this creates a horizontal scrollbar since the vertical scrollbar is now off-screen, but the horizontal scrollbar can be easily hidden with no issues via the `overflow-x: hidden` rule.

## pt. 2
#### relevant commits

<table>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/47c09a420c7182286b047c68e9bb5791c3d14220">
        47c09a4
      </a>
    </td>
    <td class="message">
      updated 404 page style
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/a8587d67b16ace9a608a4a55c5b214afb28cc632">
        a8587d6
      </a>
    </td>
    <td class="message">
      added border-radius to profile image
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/1c184b9668c0d8e32bf7ea6db890a52bb09b04b5">
        1c184b9
      </a>
    </td>
    <td class="message">
      cleaned out old images and updated post backgrounds
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/c78187c970ddafcb67eafb6f389ff36e220dbf1a">
        c78187c
      </a>
    </td>
    <td class="message">
      subbed out projects
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/0c65264a3d4194f9a4783daf04c1e311085cb814">
        0c65264
      </a>
    </td>
    <td class="message">
      cleaned out placeholder posts
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/3b9626c42a21be4eae50a4a379dcceb0bd4422f8">
        3b9626c
      </a>
    </td>
    <td class="message">
      cleaned up styling and updated color scheme
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/91a65685c0145f538d95343c5f1a433e1aeb3dfb">
        91a656
      </a>
    </td>
    <td class="message">
      updated layouts with profile-small for faster loading
    </td>
  </tr>
  <tr>
    <td class="sha">
      <a href="https://github.com/sumeet-bansal/sumeet-bansal.github.io/commit/ba61c3cfb549010b70628a2d562666abfb937ad7">
        ba61c3c
      </a>
    </td>
    <td class="message">
      cleaned up inline styling and scripting
    </td>
  </tr>
</table>

More housekeeping and just making the site mine. The commit messages seem pretty self-explanatory.

## conclusion
For anyone who bothered reading this far, I'm still not entirely sure what this website is for, but I'm sure I'll figure it out at some point. At the very least, I can put "portfolio" type stuff like my personal projects, and I applied for a slot at KSDT (UCSD's college radio), so it might be cool to post my weekly playlists as blog posts&mdash;assuming I do get a slot. We'll see, I guess?
# KaTeX #

This is a relatively fast method of rendering math on a website, MathJax supposedly can be pretty slow.

## Installation ##

None, but will require the CDNs:


```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js" integrity
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min
```

## Usage ##

Place formatted Mathematics between `$$`'s as shown below:

```html
$$
Q(t) - Q(0) = \int_{0}^t \frac{kA}{d}T(t)(dt)
$$
```

This can be anywhere the body (e.g. in any div as content), and it renders as centered TeX-like math.


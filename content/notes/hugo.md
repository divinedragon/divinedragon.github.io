---
title: "Hugo"
slug: "hugo"
description: "Hugo - Notes | References | Cheat-sheet"
---



## Check if you running a local Hugo Server

Since [v0.120.0][1], you use `hugo.IsServer`.

```hbs
{{ if not hugo.IsServer }}
    <!-- This is rendered only on Production Build  -->
{{ end }}
```

Older versions([v0.120.0][1] and older), use below.

```hbs
{{ if not .Site.IsServer }}
    <!-- This is rendered only on Production Build  -->
{{ end }}
```

## Run Hugo Server locally

This is the most straightforward [hugo command][2], but just in case.

```bash
hugo server --baseURL="http://localhost:1313"
```

## Good to Know Build Options for Local Environment

### buildDrafts

Renders the content that is marked as Draft. By default, it is skipped

```bash
hugo server --baseURL="http://localhost:1313" --buildDrafts
```

### buildFuture

Renders the content for which date is set in Future. By default, all content set for `TODAY` and in future is skipped from Rendering.

```bash
hugo server --baseURL="http://localhost:1313" --buildFuture
```

## Troubleshooting

At any point of time, if you want to dump all variables in the current scope, use below

```hbs
{{ debug.Dump . }}
```

## Using `.Kind`

Sometimes, you need to know what kind of page you are in. To get this, use [`.Kind`][3]. The page kind is one of `home, page, section, taxonomy, term`.

```
content/
├── books/
│   ├── book-1/
│   │   └── index.md    <-- kind = page
│   ├── book-2.md       <-- kind = page
│   └── _index.md       <-- kind = section
├── tags/
│   ├── fiction/
│   │   └── _index.md   <-- kind = term
│   └── _index.md       <-- kind = taxonomy
└── _index.md           <-- kind = home
```

A suitable use case is depicted in [this blog post][4].


   [1]: https://github.com/gohugoio/hugo/releases/tag/v0.120.0
   [2]: https://gohugo.io/commands/hugo/
   [3]: https://gohugo.io/methods/page/kind/
   [4]: /blog/render-hugo-list-page-based-on-page-type-kind/

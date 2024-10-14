---
title: "Hugo - Notes"
slug: hugo
description: "Hugo - Notes | References | Cheat-sheet"
---



## Check if you running a local Hugo Server

Since [v0.120.0][1], you use `hugo.IsServer`.

```hugo
{{ if not hugo.IsServer }}
    <!-- This is rendered only on Production Build  -->
{{ end }}
```

Older versions([v0.120.0][1] and older), use below.

```hugo
{{ if not .Site.IsServer }}
    <!-- This is rendered only on Production Build  -->
{{ end }}
```

## Run Hugo Server locally

This is the most straightforward, but just in case.

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



   [1]: https://github.com/gohugoio/hugo/releases/tag/v0.120.0
   [2]: https://gohugo.io/commands/hugo/

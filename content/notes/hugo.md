---
title: "Hugo"
slug: hugo
---



# Hugo Notes

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





   [1]: https://github.com/gohugoio/hugo/releases/tag/v0.120.0

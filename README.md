<div align="center">
  <h1><a href="https://divinedragon.github.io" target="_blank">🏡 divinedragon.github.io</a></h1>
  <img src="blog.png" />
</div>

## 📖 Overview

My personal website hosted as Github Site - [https://divinedragon.github.io](https://divinedragon.github.io). This site has my writing, projects, readings, experiences, and much more. It is built with [Hugo](https://gohugo.io/) using [Hugo-Poison Theme](https://github.com/lukeorth/poison).

## 🖥 Running it Locally

Run `hugo serve` and open [http://localhost:1313](http://localhost:1313). Couldn't be as simple as that

```bash
Watching for changes in /home/divinedragon/git/divinedragon.github.io/{archetypes,assets,content,layouts,static}
Watching for config changes in /home/divinedragon/git/divinedragon.github.io/hugo.yaml
Start building sites …
hugo v0.135.0-f30603c47f5205e30ef83c70419f57d7eb7175ab+extended linux/amd64 BuildDate=2024-09-27T13:17:08Z VendorInfo=snap:0.135.0


                   | EN
-------------------+------
  Pages            | 173
  Paginator pages  |  10
  Non-page files   |   1
  Static files     | 183
  Processed images |   0
  Aliases          |  73
  Cleaned          |   0

Built in 133 ms
Environment: "development"
Serving pages from disk
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at //localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
```

## Things that I use
* 📊 Analytics powered by [SimpleAnalytics](https://www.simpleanalytics.com/)
* 💬 Comments powered by [Gisqus](https://giscus.app/) using [Github Discussions](https://docs.github.com/en/discussions/quickstart)

## Content Structures

```bash
-> tree -d content/
content/
│
├── blog      # All blog articles go here
│
├── projects  # All projects/showcase related things go here
│
├── reads     # All articles that I read with my personal note on those go here
│
└── saves     # Bookmarks that I have collected over the years
```

## 📜 License

Site content is licensed under the [CC-BY-4.0 license](LICENSE), which means that you can copy, redistribute, remix, transform, and build upon the content for any purpose as long as you give appropriate credit.

All other code in this repository is licensed under the [MIT license](LICENSE-CODE).

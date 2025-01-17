# Haki

[![Showcase](https://i.ibb.co/wdGhw8X/Screenshot-2021-06-02-at-20-31-51.png)](https://github.com/grkek/haki)

**Notice:** This project is <ins>experimental</ins>.

**Keep in mind:**
- None of the components generated by Layout contain anything remotely related to a Web-Browser.

- Compiled binary reads the custom HTML and builds the GTK components. Since it is already a pre-built release version, it is pretty fast at generating the UI components.

- The compiler supports CSS and JavaScript compilation, which glues the components and makes the UI interactive.

# Installation

Before you clone the shard and build it, install the GTK libraries.

```bash
git clone git@github.com:grkek/haki.git
cd haki
shards install
```

# Usage

```
# The GTK_DEBUG environment constant spawns a separate window
# with which you can debug UI elements.
GTK_DEBUG=interactive crystal run example/application.cr
```

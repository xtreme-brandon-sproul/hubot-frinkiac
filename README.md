[![NPM version](http://img.shields.io/npm/v/hubot-morbotron.svg?style=flat)](https://www.npmjs.org/package/hubot-morbotron)
[![Build Status](http://img.shields.io/travis/okize/hubot-morbotron.svg?style=flat)](https://travis-ci.org/okize/hubot-morbotron)
[![Dependency Status](http://img.shields.io/david/okize/hubot-morbotron.svg?style=flat)](https://david-dm.org/okize/hubot-morbotron)
[![Downloads](http://img.shields.io/npm/dm/hubot-morbotron.svg?style=flat)](https://www.npmjs.org/package/hubot-morbotron)

# hubot-morbotron

Hubot plugin for searching for futurama screencaps on the amazing [morbotron](https://morbotron.com/) search engine (check it out!).

See [`src/morbotron.coffee`](src/morbotron.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-morbotron --save`

Then add **hubot-morbotron** to your `external-scripts.json`:

```json
[
  "hubot-morbotron"
]
```

## Sample Interaction

```
user> hubot futurama me You don't win friends with salad.
```

![Example 1](https://raw.github.com/okize/hubot-morbotron/gh-pages/example1.jpg)

Additionally, a second argument can be supplied (delineated by a pipe character) to override the image caption.

```
user> hubot futurama me You don't win friends with salad. | ♪ You don't win friends with salad! ♪
```

![Example 1](https://raw.github.com/okize/hubot-morbotron/gh-pages/example2.jpg)

There are also command aliases: `morbotron` & `futurama search`:

```
user> hubot morbotron Me fail English? That's unpossible.
```

![Example 1](https://raw.github.com/okize/hubot-morbotron/gh-pages/example3.jpg)

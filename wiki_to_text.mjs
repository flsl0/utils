/*
 * Download all text from a wikipedia article by providing its url as arguments.
 * The text can then be forwaded to a tts.
 *
 * It's recommended to create a /usr/local/bin/wiki2text
 * with the following content :
 *
 * #!/bin/sh
 * zx /home/void/dev/utils/wiki_to_text.mjs $@
 *
 */

const defaultQuote = $.quote

$.quote = a => a

$.verbose = false

const print = async str => console.log(str)

const exit = (code = 1) => process.exit(code)

if (argv["_"].length < 1) await print("You must provide an url").then(exit)

const body = await fetch(argv["_"][0]).then(r => r.text())

const dom = require("cheerio").load(body)

const title = dom("#firstHeading")
    .text()
    .replaceAll(" ", "_")

const text = dom("main p")
    .text()
    .replaceAll(/\[\d*\]/gm, "")
    .replaceAll("\n", "")
    .replaceAll(/(\.|:)\S+( |\n)/gm, "") // replace weird artifacts

await $({ quote: defaultQuote })`echo ${text} > /home/void/audio/${title}`

import { createProxy } from "node-fetch-native/proxy";

const proxy = createProxy({ url: "http://10.0.2.2:3128" });

const body = await fetch("https://time.is/", { ...proxy }).then(r => r.text())

const dom = require("cheerio").load(body)

const dd = dom("#dd").text()

const clock = dom("#clock").text()

echo(`${dd} ${clock}`)

const date = new Date(`${dd} ${clock}`)

await $`date --set ${date.toISOString()}`

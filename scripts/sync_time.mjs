/*
 * Automatically synchronize the date of a computer
 *
 * It's recommended to create a /usr/local/bin/syncdate
 * with the following content :
 *
 * #!/bin/sh
 * zx /home/void/dev/utils/sync_time.mjs $@
 *
 */

import { createProxy } from "node-fetch-native/proxy";

const useProxy = false

const _fetch = useProxy
                ? async url => fetch(url, { ...createProxy({ url: "http://10.0.2.2:3128" }) })
                : async url => fetch(url)

const body = await _fetch("https://time.is/").then(r => r.text())

const dom = require("cheerio").load(body)

const dd = dom("#dd").text()

const clock = dom("#clock").text()

echo(`${dd} ${clock}`)

const date = new Date(`${dd} ${clock}`)

await $`date --set ${date.toISOString()}`

/*
 * Create a default template with necessary options
 *
 * It's recommended to create a /usr/local/bin/zxtouch
 * with the following content :
 *
 * #!/bin/sh
 * zx /home/void/dev/utils/create_default_zx_script.mjs $@
 *
 */

$.verbose = false

const template = `const defaultQuote = $.quote

$.quote = a => a

$.verbose = false

const print = async str => console.log(str)

const exit = (code = 1) => process.exit(code)`

await $`echo ${template} > ${argv["_"][0]}`

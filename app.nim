import prologue

proc hello*(ctx: Context) {.async.} =
  resp "<h1>Hello, World!</h1>"

let app = newApp()
app.addRoute("/", hello)
app.run()

package main

import "core:fmt"
import "base:runtime"
import ui "webui"

main :: proc() {
	w := ui.new_window()

	// Bindings
	ui.bind(w, "backendCall", on_frontend_call)

	// Window
	ui.set_size(w, 400, 800)
	ui.set_root_folder(w, "./gui/dist")
	ui.show(w, "index.html")
	ui.wait()
}

on_frontend_call :: proc "c" (e: ^ui.Event) {
	context = runtime.default_context()

	msg := ui.get_arg(string, e, 0)
	fmt.printfln("Got a message from the gui: %s", msg)
}

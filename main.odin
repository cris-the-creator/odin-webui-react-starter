package main

import "core:fmt"
import ui "webui"

main :: proc() {
	w := ui.new_window()
	ui.set_root_folder(w, "./gui/dist")
	ui.show(w, "index.html")
	ui.wait()
}

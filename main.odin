package main

import "core:fmt"
import ui "webui"

main :: proc() {
	w := ui.new_window()
	ui.show(w, "<html>WebUI test</html>")
	ui.wait()
}

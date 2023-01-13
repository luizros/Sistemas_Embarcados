# https://python-gtk-3-tutorial.readthedocs.io/pt_BR/latest/introduction.html
import gi, sys
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

class MyWindow(Gtk.Window):
	def __init__(self):
		super().__init__(title=sys.argv[0])
		self.btn = Gtk.Button(label="Close window")
		self.btn.connect("clicked", Gtk.main_quit)
		self.lbl = Gtk.Label(label="My label")
		self.box = Gtk.VBox()
		self.box.add(self.lbl)
		self.box.add(self.btn)
		self.add(self.box)
		self.connect("destroy", Gtk.main_quit)
		self.show_all()
		Gtk.main()

win = MyWindow()
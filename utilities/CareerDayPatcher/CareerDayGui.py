from tkinter import *
from tkinter import filedialog
import tkinter.font as font
import random
import os

from CareerDayifier import *

class Window(Frame):
	def __init__(self, master=None):
		Frame.__init__(self, master)
		self.master = master
		self.rompath = StringVar()
		self.rompath.set("<path to rom>")
		self.xp = StringVar()
		self.xp.set("1")
		self.bossxp = BooleanVar()
		self.bossxp.set(False)
		self.seed = StringVar()
		self.seed.set("Enter a seed")
		self.pristineSeed = True
		self.randomizerButtonFont = font.Font(size=14, weight='bold')
		self.quitButtonFont = font.Font(size=13, weight='bold')
		self.success = None
		self.prevSeed = None

		self.statusLabel = Label(self.master, text="Select your rom", width=20, height=3, name="statuslabel", anchor="w", font=("courier new", 11), justify=LEFT)
		self.statusLabel.grid(row=0, column=0, padx=30, pady=10, sticky=W+E+N+S, columnspan=3, rowspan=3)

		l1 = Label(self.master, width=25, height=1, text="Path to your FF5 Rom")
		l1.grid(row=3, column=0, padx=30, sticky=W+E+N+S)
		l2 = Label(self.master, width=25, height=1, text="Seed")
		l2.grid(row=3, column=1, sticky=W+E+N+S)

		e1 = Entry(self.master, textvariable=self.rompath, name="rompath", width=30)
		e1.grid(row=4, column=0, padx=30, pady=10, sticky=W+E+N+S)

		e2 = Entry(self.master, textvariable=self.seed, name="seed", width=30)
		e2.grid(row=4, column=1, pady=10, sticky=W+E+N+S)

		'''
		l3 = Label(self.master, width=25, height=1, text="XP Scaling Settings")
		l3.grid(row=5, column=0, padx=30, sticky=W+E+N+S)
		l4 = Label(self.master, width=25, height=1, text="Other Settings")
		l4.grid(row=5, column=1, sticky=W+E+N+S)

		xpScalingFrame = Frame(self.master, borderwidth=3, relief=GROOVE, name="scaling")

		r1 = Radiobutton(xpScalingFrame, text="2x exp/abp", value="2", variable=self.xp, anchor="w", name="2x", state=DISABLED)
		r2 = Radiobutton(xpScalingFrame, text="4x exp/abp", value="4", variable=self.xp, anchor="w", name="4x" , state=DISABLED)
		r3 = Radiobutton(xpScalingFrame, text="no bonus exp/abp", value="1", variable=self.xp, anchor="w", name="1x" , state=DISABLED)

		r1.grid(row=0, column=0, sticky=W+E+N+S)
		r2.grid(row=1, column=0, sticky=W+E+N+S)
		r3.grid(row=2, column=0, sticky=W+E+N+S)

		xpScalingFrame.grid(row=6, column=0, padx=30, sticky=W+E+N+S)

		extraOptionsFrame = Frame(self.master, borderwidth=3, relief=GROOVE, name="extra")

		c1 = Checkbutton(extraOptionsFrame, text="Boss exp/abp scaling", variable=self.bossxp, anchor="w", name="bossscaling", state=DISABLED)
		c1.grid(row=0, column=0, sticky=W+E+N+S)

		extraOptionsFrame.grid(row=6, column=1, sticky=W+E+N+S)

		'''

		self.randomizeButton = Button(self.master, text="Randomize", name="randomize", state=DISABLED, height=2, font=self.randomizerButtonFont)
		self.randomizeButton.grid(row=8, column=0, padx=30, pady=10, sticky=W+E+N+S, rowspan=2)

		b1 = Button(self.master, text="Quit", name="quit", font=self.quitButtonFont)
		b1.grid(row=8, column=1, padx=30, pady=10, sticky=W+E+N+S)

		self.master.bind("<ButtonRelease-1>", self.onClick)
		self.master.bind("<Enter>", self.onEnter)
		self.master.bind("<Leave>", self.onLeave)
		self.master.bind("<FocusOut>", self.onUnfocus)
		self.master.bind("<Return>", self.performRandomizationProxy)

	def onClick(self, event):
		if str(event.widget) == ".rompath":
			self.rompath.set(filedialog.askopenfilename(initialdir = ".", title="Select your rom", filetypes=[("SNES Roms", "*.smc *.sfc"), ("All files", "*")]))
			if self.rompath.get() == "":
				self.rompath.set("<path to rom>")
			elif self.rompath.get() != "<path to rom>" and self.rompath.get() != "":
				self.randomizeButton['state'] = NORMAL
				self.updateLabel("")

		if str(event.widget) == ".seed" and self.pristineSeed == True:
			self.seed.set("")
			self.pristineSeed = False

		if str(event.widget) == ".randomize" and event.widget['state'] != DISABLED:
			self.performRandomization()
			
		if str(event.widget) == ".quit":
			sys.exit()

	def onEnter(self, event):
		if str(event.widget) == ".extra.bossscaling":
			self.updateLabel("Curves boss exp so you will naturally \nfinish around level 30")

		if str(event.widget) == ".scaling.2x":
			self.updateLabel("Doubles all experience and abp gained \nfrom enemies and bosses")

		if str(event.widget) == ".scaling.4x":
			self.updateLabel("Quadruples all experience and abp gained \nfrom enemies and bosses")

		if str(event.widget) == ".scaling.1x":
			self.updateLabel("No change to experience and abp gained \nfrom enemies and bosses")

		if str(event.widget) == ".randomize":
			if self.randomizeButton['state'] == DISABLED:
				self.updateLabel("Please select a rom")
			else:
				self.updateLabel("Create your randomized rom")

		if str(event.widget) == ".quit":
			self.updateLabel("Exit this program")

		if str(event.widget) == ".seed":
			self.updateLabel("Enter a value for the seed. Leave blank \nfor a random seed")

	def onLeave(self, event):
		self.updateLabel("")

	def onUnfocus(self, event):
		if str(event.widget) == ".seed":
			if self.seed.get() == "":
				self.seed.set("Enter a seed")

	def updateLabel(self, text):
		if text != "":
			self.statusLabel['text'] = text
		else:
			if self.success == True:
				self.statusLabel['text'] = "Rom patched sucessfully!\nPatched rom placed in new folder:\n" + self.filepath
			elif self.success == False:
				self.statusLabel['text'] = "Error patching rom"
			elif str(self.rompath.get()) == "<path to rom>" or str(self.rompath.get()) == "":
				self.statusLabel['text'] = "Select your rom"
			else:
				self.statusLabel['text'] = "Click randomize when ready"

	def performRandomizationProxy(self, event):
		self.performRandomization()

	def performRandomization(self):
		options = {}
		options['xp'] = self.xp
		options['bossxp'] = self.bossxp
 
		if self.seed.get() == "" or self.seed.get() == "Enter a seed":
			self.success, self.filepath = create_career_day_seed(self.rompath.get(), str(random.randint(1000000, 9999999)), options)
		else:
			self.success, self.filepath = create_career_day_seed(self.rompath.get(), self.seed.get(), options)

		os.startfile(self.filepath)

		self.updateLabel("")


root = Tk()

if getattr(sys, 'frozen', False):
    app_path = sys._MEIPASS
else:
    app_path = os.path.dirname(os.path.abspath(__file__))

WRITEDIRECTORY = os.getcwd()
os.chdir(app_path)

root.geometry("500x250")
root.title("Career Day v0.0.72.0")
root.iconbitmap("favicon.ico")

os.chdir(WRITEDIRECTORY)

app = Window(root)
root.mainloop()
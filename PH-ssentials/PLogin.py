import giimport timegi.require_version('Gtk', '3.0')from gi.repository import Gtk,GObject,Gdk,Pango,GLibfrom wta_module import *class Handler(object):	def __init__(self,*param):					initUI(self,param,w=400,h=400,title="WiredGTKV1.0",controlbox=True,startpos=(200,200),timeoutdestroy=-1)		self.GTKForms()		self.sch=Scheduler(500)#500 ms		self.sch.Start()	def unload(self,*args):		destroy=True		if destroy==True:			GLib.source_remove(self.timeout_id)			self._window.hide()			del self._window			#ExitApplication() #activate this if u want to destroy this window			return False		else:			self.window.Visible=False			return True			def loop(self, user_data):		if self.form_load==False:			self.form_load=True		if self.sch.Event():#timer routine			#code here			if self.timeoutdestroy!=-1:				self.timeoutdestroy-=1				if self.timeoutdestroy==0:					self.unload(None)			self.sch.Start()#restart scheduler		return True	#return true so that main_loop can call it again 	def create(self,prop,control,parent,event=[]):		createWidget(self,prop,control,parent,event)	def GTKForms(self):		self.Activity=forms		self.create("{'Var': '', 'Text': 'Layout1', 'ParentsType': '', 'Height': '645', 'Left': '0', 'Tag': '', 'BackColor': '(0, 0.15818675032557372, 0.9408383013784336, 0.5)', 'ForeColor': '(0,0,0,1)', 'Name': 'Activity', 'Events': '[]', 'Enable': 'True', 'Picture': '', 'Width': '405', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '0'}","Layout","usercontrol","[]")		self.mBase=forms		self.create("{'Var': '', 'Text': 'Layout1', 'ParentsType': 'Layout', 'Height': '645', 'Left': '0', 'Tag': '', 'BackColor': '(0, 0.9535890512821091, 0.7790916597141007, 0.5)', 'ForeColor': '(0,0,0,1)', 'Name': 'mBase', 'Events': '[]', 'Enable': 'True', 'Picture': '', 'Width': '405', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '0'}","Layout","Activity","[]")		self.Image1=forms		self.create("{'Var': '', 'Text': '', 'ParentsType': 'Layout', 'Height': '645', 'Left': '0', 'Tag': '', 'BackColor': '(1,1,1,1)', 'ForeColor': '(0,0,0,1)', 'Name': 'Image1', 'Events': '[]', 'Enable': 'True', 'Picture': 'LoginModule-bf106.png', 'Width': '405', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '0'}","Image","mBase","[]")		self.btnLogIn=forms		self.create("{'Var': '', 'Text': '', 'ParentsType': 'Layout', 'Height': '45', 'Left': '40', 'Tag': '', 'BackColor': '(0, 0.12157566880294246, 0.34919659131927605, 0.5)', 'ForeColor': '(0,0,0,1)', 'Name': 'btnLogIn', 'Events': '[]', 'Enable': 'True', 'Picture': '', 'Width': '325', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '510'}","Layout","mBase","[]")		self.txtID=forms		self.create("{'Var': '', 'Text': '', 'ParentsType': 'Layout', 'Height': '35', 'Left': '45', 'Tag': '', 'BackColor': '(1,1,1,1)', 'ForeColor': '(0,0,0,1)', 'Name': 'txtID', 'Events': '[]', 'Enable': 'True', 'Picture': '', 'Alignment': 'CENTER', 'Width': '315', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '400'}","Label","mBase","[]")		self.txtPassword=forms		self.create("{'Var': '', 'Text': '', 'ParentsType': 'Layout', 'Height': '35', 'Left': '45', 'Tag': '', 'BackColor': '(1,1,1,1)', 'ForeColor': '(0,0,0,1)', 'Name': 'txtPassword', 'Events': '[]', 'Enable': 'True', 'Picture': '', 'Alignment': 'CENTER', 'Width': '315', 'Help': '', 'Visible': 'True', 'Font': '', 'Top': '460'}","Label","mBase","[]")	def Widget(self):		if self._usercontrol in self._mainlayout.get_children():			self._mainlayout.remove(self._usercontrol)		return self._usercontrol	def Hide(self):		self._window.hide()	def Show(self,modal=False,x=None,y=None):		if x!=None:			self._window.move(x,y)		self._window.set_modal(modal)		self._window.show()		Gtk.main()		return ""#put ur return value here upon closing this formif __name__ == "__main__":	_m = Handler()	_m._window.show()	Gtk.main()
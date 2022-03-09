B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8
@EndOfDesignText@
'Custom View class 
'PH-ssentials
#Event: ExampleEvent (Value As Int)
#DesignerProperty: Key: BooleanExample, DisplayName: Boolean Example, FieldType: Boolean, DefaultValue: True, Description: Example of a boolean property.
#DesignerProperty: Key: IntExample, DisplayName: Int Example, FieldType: Int, DefaultValue: 10, MinRange: 0, MaxRange: 100, Description: Note that MinRange and MaxRange are optional.
#DesignerProperty: Key: StringWithListExample, DisplayName: String With List, FieldType: String, DefaultValue: Sunday, List: Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday
#DesignerProperty: Key: StringExample, DisplayName: String Example, FieldType: String, DefaultValue: Text
#DesignerProperty: Key: ColorExample, DisplayName: Color Example, FieldType: Color, DefaultValue: 0xFFCFDCDC, Description: You can use the built-in color picker to find the color values.
#DesignerProperty: Key: DefaultColorExample, DisplayName: Default Color Example, FieldType: Color, DefaultValue: Null, Description: Setting the default value to Null means that a nullable field will be displayed.
Sub Class_Globals
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mBase As Panel
	Private Const DefaultColorConstant As Int = -984833 'ignore
	Dim Image1 As ImageView
	Dim btnProfile As Panel
	Dim btnQr As Panel
	Dim btnSchedule As Panel
	Dim btnUpload As Panel
	Dim btnAppointments As Panel
	Dim btnHotline As Panel
	Dim btnUpdates As Panel
	Dim btnLogs As Panel
	Dim lblName As Label
	Dim lblProgress As Label
	Dim progressBar As Label
	Dim ProgressPercent As Label
	Dim btnMedications As Panel
	Dim dtbFrame As Panel
	Dim pDocList As Table

End Sub
'clsTest.Initialize(Me, "clsTest")
'clsTest.AddToParent(Activity,0,0,100%x,100%y)
Public Sub AddToParent(Parent As Activity, Left As Int, Top As Int, Width As Int,Height As Int)
	mBase.Initialize("mBase")
	Parent.AddView(mBase, Left, Top, Width, Height)
	GTKForms
End Sub
Public Sub Initialize (Callback As Object, EventName As String)
	mEventName = EventName
	mCallBack = Callback
	Image1.Initialize("Image1")
	btnProfile.Initialize("btnProfile")
	btnQr.Initialize("btnQr")
	btnSchedule.Initialize("btnSchedule")
	btnUpload.Initialize("btnUpload")
	btnMedications.Initialize("btnMedications")
	btnAppointments.Initialize("btnAppointments")
	btnHotline.Initialize("btnHotline")
	btnUpdates.Initialize("btnUpdates")
	btnLogs.Initialize("btnLogs")
	lblName.Initialize("lblName")
	lblProgress.Initialize("lblProgress")
	progressBar.Initialize("progressBar")
	ProgressPercent.Initialize("ProgressPercent")
	dtbFrame.Initialize("dtbFrame")
	pDocList.Initialize(Me,"pDocList",4)
	'pDocList.LoadTableFromCSV(Dir, Filename, HeadersExist)
	'vb6.SetDataGrid(Activity,Main.SQL,pDocList,"History")

End Sub

Public Sub DesignerCreateView (Base As Panel, Lbl As Label, Props As Map)
	mBase = Base
	GTKForms
End Sub

Sub initPHome
	btnProfile.Color =  0x00008125
	btnQr.Color =  0x00008125
	btnSchedule.Color =  0x00008125
	btnUpload.Color =  0x00008125
	btnMedications.Color =  0x00008125
	btnAppointments.Color =  0x00008125
	btnHotline.Color =  0x00008125
	btnUpdates.Color =  0x00008125
	btnLogs.Color =  0x00008125
	lblName.Color =  0x00ffffff
	lblName.TextColor = 0xff000000
	lblName.Gravity = Gravity.CENTER_HORIZONTAL+Gravity.CENTER_VERTICAL
	lblName.Text = ""
	lblProgress.Color =  0x00ffffff
	lblProgress.TextColor = 0xff000000
	lblProgress.Gravity = Gravity.CENTER_HORIZONTAL+Gravity.CENTER_VERTICAL
	lblProgress.Text = ""
	progressBar.Color =  0x00ffffff
	progressBar.TextColor = 0xff000000
	progressBar.Gravity = Gravity.CENTER_HORIZONTAL+Gravity.CENTER_VERTICAL
	progressBar.Text = ""
	ProgressPercent.Color =  0x00ffffff
	ProgressPercent.TextColor = 0xff000000
	ProgressPercent.Gravity = Gravity.CENTER_HORIZONTAL+Gravity.CENTER_VERTICAL
	ProgressPercent.Text = ""
	dtbFrame.Color =  0x0000904a
	
End Sub
Public Sub GTKForms
	mBase.Color=0x000000'transparent background
	mBase.Width=100%x
	mBase.height=100%y
	mBase.AddView(Image1,0.00 * mBase.Width,0.00 * mBase.Height,1.00 * mBase.Width,1.00 * mBase.Height)
	Image1.Bitmap = LoadBitmapResize(File.DirAssets,"HomeModule-809c8.png",Image1.Width,Image1.Height,False)
	mBase.AddView(btnProfile,0.05 * mBase.Width,0.01 * mBase.Height,0.14 * mBase.Width,0.07 * mBase.Height)
	mBase.AddView(btnQr,0.83 * mBase.Width,0.01 * mBase.Height,0.14 * mBase.Width,0.07 * mBase.Height)
	mBase.AddView(btnSchedule,0.52 * mBase.Width,0.19 * mBase.Height,0.42 * mBase.Width,0.05 * mBase.Height)
	mBase.AddView(btnUpload,0.80 * mBase.Width,0.30 * mBase.Height,0.11 * mBase.Width,0.06 * mBase.Height)
	mBase.AddView(btnMedications,0.07 * mBase.Width,0.42 * mBase.Height,0.25 * mBase.Width,0.11 * mBase.Height)
	mBase.AddView(btnAppointments,0.38 * mBase.Width,0.42 * mBase.Height,0.26 * mBase.Width,0.11 * mBase.Height)
	mBase.AddView(btnHotline,0.69 * mBase.Width,0.42 * mBase.Height,0.25 * mBase.Width,0.11 * mBase.Height)
	mBase.AddView(btnUpdates,0.41 * mBase.Width,0.93 * mBase.Height,0.22 * mBase.Width,0.07 * mBase.Height)
	mBase.AddView(btnLogs,0.78 * mBase.Width,0.93 * mBase.Height,0.22 * mBase.Width,0.07 * mBase.Height)
	mBase.AddView(lblName,0.05 * mBase.Width,0.10 * mBase.Height,0.90 * mBase.Width,0.09 * mBase.Height)
	mBase.AddView(lblProgress,0.09 * mBase.Width,0.30 * mBase.Height,0.68 * mBase.Width,0.04 * mBase.Height)
	mBase.AddView(progressBar,0.09 * mBase.Width,0.37 * mBase.Height,0.83 * mBase.Width,0.03 * mBase.Height)
	mBase.AddView(ProgressPercent,0.09 * mBase.Width,0.34 * mBase.Height,0.16 * mBase.Width,0.04 * mBase.Height)
	mBase.AddView(dtbFrame,0.06 * mBase.Width,0.59 * mBase.Height,0.89 * mBase.Width,0.31 * mBase.Height)
	pDocList.AddToParent(mBase,0.00 * dtbFrame.Width,0.00 * dtbFrame.Height,1.00 * dtbFrame.Width,1.00 * dtbFrame.Height)
	'pDocList.LoadTableFromCSV(File.DirAssets, "datus.csv", True)
	'pDocList.SetDatagrid(Array As String ("A","B","C"),Array(Array As String("1","2","3"),Array As String("4","5","6")))

	
	initPHome
	
End Sub

'If SubExists(mCallBack,mEventName & "_" & "ExampleEvent") Then
'	CallSub2(mCallBack,mEventName & "_" & "ExampleEvent",123)
'End If
Sub Image1_click()
End Sub
Sub btnProfile_click()
	Dim profile As PProfile
	profile=Starter.PProfile1
	profile.Visible=True
	setVisible(False)
	Dim j As HttpJob
	j.Initialize("", Me)
	j.PostString("http://"& Starter.serverURL &"/profile?id="&Starter.user.id,"")
	Wait For (j) JobDone(j As HttpJob)
	If j.Success Then
		'The result Is a json string. We parse it And Log the fields.
		Dim jp As JSONParser
		jp.Initialize(j.GetString)
		Dim quotes As List = jp.NextArray
		For Each quot As Map In quotes
			If quot.Get("Id")<> "" Then
				Starter.user.Id=quot.Get("Id") 'From patients.csv
				Starter.user.Prefix=quot.Get("PREFIX") 'From patients.csv
				Starter.user.First=quot.Get("FIRST") 'From patients.csv
				Starter.user.Last=quot.Get("LAST") 'From patients.csv
				Starter.user.Address=quot.Get("ADDRESS") 'From patients.csv
				Starter.user.City=quot.Get("CITY") 'From patients.csv
				Starter.user.State=quot.Get("STATE") 'From patients.csv
				Starter.user.County=quot.Get("COUNTY") 'From patients.csv
				Starter.user.Zip=quot.Get("ZIP") 'From patients.csv
				Log("Title: " & quot.GetValueAt(0))
				profile.lblName.Text= Starter.user.Prefix&" "&Starter.user.First&" "&Starter.user.Last
				profile.lbl_ID.Text= Starter.user.Id
				profile.lblAddress.Text = Starter.user.Address&" "&Starter.user.City
				profile.lblCounty.Text= Starter.user.County=quot.Get("COUNTY") '''To check if this works
				profile.lblState.Text = Starter.user.State
				profile.lblZip.Text = Starter.user.Zip
			Else
				ToastMessageShow("User Doesnt exist",False)
			End If
		Next
	End If
	j.Release
End Sub
Sub btnQr_click()
	Dim qrCode As PQr
	qrCode=Starter.PQr1
	qrCode.Visible=True
	setVisible(False)
End Sub
Sub btnSchedule_click()
	Dim p_Schedule As PSchedule
	p_Schedule=Starter.PSchedule1
	p_Schedule.Visible=True
	setVisible(False)
	Dim j As HttpJob
	j.Initialize("", Me)
	j.PostString("http://"& Starter.serverURL &"/schedule?id="&Starter.user.id,"")
	Wait For (j) JobDone(j As HttpJob)
	If j.Success Then
		'The result Is a json string. We parse it And Log the fields.
		Dim jp As JSONParser
		jp.Initialize(j.GetString)
		Dim quotes As List = jp.NextArray
		For Each quot As Map In quotes
			If quot.Get("Id")<> "" Then
				Starter.user.Id=quot.Get("Id") 'From patients.csv
				Log("Title: " & quot.GetValueAt(0))
				p_Schedule.lblTitlea.Text =Starter.user.DescriptionMed=quot.Get("DESCRIPTION") 'From medications.csv
				p_Schedule.lblTitlea.Text =Starter.user.DescriptionAppoint=quot.Get("DESCRIPTION") 'From encounters.csv
			Else
				ToastMessageShow("User Doesnt exist",False)
			End If
		Next
	End If
	j.Release
End Sub
Sub btnUpload_click()
	Dim j As HttpJob
	j.Initialize("", Me)
	j.PostString("http://"& Starter.serverURL &"/upload?id="&Starter.user.id,"")
	Wait For (j) JobDone(j As HttpJob)
	If j.Success Then
		'The result Is a json string. We parse it And Log the fields.
		Dim jp As JSONParser
		jp.Initialize(j.GetString)
		Dim quotes As List = jp.NextArray
		For Each quot As Map In quotes
			If quot.Get("Id")<> "" Then
				Starter.user.Percent = quot.Get("Percent") 'From Database
				Starter.user.progIncrement = quot.Get("progIncrement") 'From Database
				Log("Title: " & quot.GetValueAt(0))
				lblProgress.Text = "Drink your medication on time."
				'progressBar.Text =
				'ProgressPercent.Text =		
			Else
				ToastMessageShow("User Doesnt exist",False)
			End If
		Next
	End If
	j.Release
End Sub
Sub btnMedications_click()
	Dim p_Medication As PMedication
	p_Medication=Starter.PMedication1
	p_Medication.Visible=True
	setVisible(False)
	Dim j As HttpJob
	j.Initialize("", Me)
	j.PostString("http://"& Starter.serverURL &"/medication?id="&Starter.user.id,"")
	Wait For (j) JobDone(j As HttpJob)
	If j.Success Then
		'The result Is a json string. We parse it And Log the fields.
		Dim jp As JSONParser
		jp.Initialize(j.GetString)
		Dim quotes As List = jp.NextArray
		For Each quot As Map In quotes
			If quot.Get("Id")<> "" Then
				Log("Title: " & quot.GetValueAt(0))
				p_Medication.lblDesc1.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From medications.csv
				p_Medication.lblDispenses1.Text = Starter.user.Dispenses = quot.Get("DISPENSES") 'From medications.csv
				p_Medication.lblDesc2.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From medications.csv
				p_Medication.lblDispenses2.Text = Starter.user.Dispenses = quot.Get("DISPENSES") 'From medications.csv
				p_Medication.lblDesc3.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From medications.csv
				p_Medication.lblDispenses3.Text = Starter.user.Dispenses = quot.Get("DISPENSES") 'From medications.csv
			Else
				ToastMessageShow("User Doesnt exist",False)
			End If
		Next
	End If
	j.Release
End Sub
Sub btnAppointments_click()
	Dim p_Appointment As PAppointment
	p_Appointment=Starter.PAppointment1
	p_Appointment.Visible=True
	setVisible(False)
	Dim j As HttpJob
	j.Initialize("", Me)
	j.PostString("http://"& Starter.serverURL &"/appointment?id="&Starter.user.id,"")
	Wait For (j) JobDone(j As HttpJob)
	If j.Success Then
		'The result Is a json string. We parse it And Log the fields.
		Dim jp As JSONParser
		jp.Initialize(j.GetString)
		Dim quotes As List = jp.NextArray
		For Each quot As Map In quotes
			If quot.Get("Id")<> "" Then
				Log("Title: " & quot.GetValueAt(0))
				p_Appointment.lblDesc1.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From encounters.csv
				p_Appointment.lbl_startStop1.Text = Starter.user.provider = quot.Get("NAME") 'From providers.csv
				p_Appointment.lblDesc2.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From encounters.csv
				p_Appointment.lbl_startStop2.Text = Starter.user.provider = quot.Get("NAME") 'From providers.csv
				p_Appointment.lblDesc3.Text = Starter.user.DescriptionMed = quot.Get("DESCRIPTION") 'From encounters.csv
				p_Appointment.lbl_startStop2.Text = Starter.user.provider = quot.Get("NAME") 'From providers.csv
			Else
				ToastMessageShow("User Doesnt exist",False)
			End If
		Next
	End If
	j.Release
End Sub
Sub btnHotline_click()
	'DataGrid TREE View
End Sub
Sub btnUpdates_click()
	Dim p_Update As PUpdates
	p_Update=Starter.PUpdates1
	p_Update.Visible=True
	setVisible(False)
End Sub
Sub btnLogs_click()
	Dim p_Log As PLogs
	p_Log=Starter.PLogs1
	p_Log.Visible=True
	setVisible(False)
End Sub
Sub lblName_click()
	'Hello,
	'[Patient Name]
End Sub
Sub lblProgress_click()
	'Next Task: Drink [Medication Name]
End Sub
Sub pDocList_ItemClick (Position As Int, Value As Object)
	'Displays the Physicain Name, Specialty, and Address from providers.csv
End Sub
Sub progressBar_click()
	'[Progress Bar Increment]
	'[=10%        ]
	'[==20%]      ]
	'[===30%]     ]
	'[====40%]    ]
	'[=====50%]   ]
	'[========90% ]
End Sub

Sub ProgressPercent_click()
End Sub
Sub pHotline_ItemClick (Position As Int, Value As Object)
	
End Sub

Public Sub getVisible() As Boolean
	Return mBase.Visible
End Sub
Public Sub setVisible(flag As Boolean)
	mBase.Visible=flag
End Sub
Public Sub SetLayout(Left As Int,Top As Int,Width As Int,Height As Int)
	mBase.SetLayout(Left,Top,Width,Height )
End Sub

Public Sub GetBase As Panel
	Return mBase
End Sub

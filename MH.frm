VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1935
   LinkTopic       =   "Form2"
   ScaleHeight     =   495
   ScaleWidth      =   1935
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   720
      Top             =   360
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click HERE to end!"
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1935
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
 End
End Sub

Private Sub Form_Load()
 Me.Left = Screen.Width - Me.Width
 Me.Top = Screen.Height - 2000
End Sub

Private Sub Timer1_Timer()
 Dim pnt As POINTAPI
 GetCursorPos pnt
 X = pnt.X
 Y = pnt.Y
 hRgn& = CreateRoundRectRgn(X - 20 - Me.Left / 15, Y - 20 - Me.Top / 15, X + 20 - Me.Left / 15, Y + 20 - Me.Top / 15, 40, 40)
 SetWindowRgn Me.hwnd, hRgn, True
 DeleteObject hRgn
End Sub

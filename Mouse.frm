VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1575
   LinkTopic       =   "Form1"
   ScaleHeight     =   495
   ScaleWidth      =   1575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Click here to end!"
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1920
      Top             =   600
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
 End
End Sub

Private Sub Form_Load()
 App.TaskVisible = False
 Form2.Show
End Sub

Private Sub Timer1_Timer()
 Dim pnt As POINTAPI
 GetCursorPos pnt
 curx = pnt.X + 20 * Rnd - 10
 cury = pnt.Y + 20 * Rnd - 10
 SetCursorPos curx, cury
 hW& = WindowFromPoint(curx, cury)
 If hW = Command1.hwnd Then
  Me.Move Rnd * Screen.Width - Me.Width / 2, Rnd * (Screen.Height - 500) - Me.Height / 2
 Else
  ShowCursor True
 End If
End Sub

Attribute VB_Name = "Function"

'/****************����˵��******************/

'��ɫ����
Public Const RED = &HFF00FF
Public Const GREEN = &HFFFF00
Public Const YELLOW = &HFFFFFF

'����ֵ����
Public Const EQ_FALSE = 0
Public Const EQ_TRUE = 1

'/***************************************/
'1����Ŀ�༭������
'��ӽ�Ŀ
Public Declare Function User_AddProgram Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal bWaitToEnd As Boolean, ByVal iPlayTime As Long) As Long
'���ͼ��������ͼ�������ͼƬ
Public Declare Function User_AddBmpZone Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pBmp As User_Bmp, ByVal iProgramIndex As Long) As Long
Public Declare Function User_AddBmp Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal iBmpPartNum As Long, ByVal hBitmap As Long, ByRef pMoveSet As User_MoveSet, ByVal iProgramIndex As Long) As Boolean
'���ʱ����
Public Declare Function User_AddTime Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pDateTime As User_DateTime, ByVal iProgramIndex As Long) As Long
'��ӵ���ʱ��
Public Declare Function User_AddTimeCount Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pTimeCount As User_Timer, ByVal iProgramIndex As Long) As Long
'����¶���
Public Declare Function User_AddTemperature Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pTemperature As User_Temperature, ByVal iProgramIndex As Long) As Long
'����ı���
Public Declare Function User_AddText Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pText As User_Text, ByVal iProgramIndex As Long) As Long
'���RTF��
Public Declare Function User_AddRTF Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pRTF As User_RTF, ByVal iProgramIndex As Long) As Long
'��ӵ����ı���
Public Declare Function User_AddSingleText Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByRef pSingleText As User_SingleText, ByVal iProgramIndex As Long) As Long
'ɾ�����н�Ŀ
Public Declare Function User_DelAllProgram Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'��������
Public Declare Function User_SendToScreen Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean

'2��ʵʱ�������ݺ�����
'ʵʱ�������ݽ�������
Public Declare Function User_RealtimeConnect Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'ʵʱ����ͼƬ���
Public Declare Function User_RealtimeSendData Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal x As Long, ByVal y As Long, ByVal iWidth As Long, ByVal iHeight As Long, ByVal hBitmap As Long) As Boolean
'ʵʱ����ͼƬ�ļ�
Public Declare Function User_RealtimeSendBmpData Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal x As Long, ByVal y As Long, ByVal iWidth As Long, ByVal iHeight As Long, ByVal strFileName As String) As Boolean
'ʵʱ�����ı�
Public Declare Function User_RealtimeSendText Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal x As Long, ByVal y As Long, ByVal iWidth As Long, ByVal iHeight As Long, ByVal strText As String, ByRef pFontInfo As User_FontSet) As Boolean
'ʵʱ���ͶϿ�����
Public Declare Function User_RealtimeDisConnect Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'ʵʱ��������
Public Declare Function User_RealtimeScreenClear Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean

'3����ʾ�����ƺ�����
'����
Public Declare Function User_OpenScreen Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'����
Public Declare Function User_CloseScreen Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'У��ʱ��
Public Declare Function User_AdjustTime Lib "EQ2008_Dll.dll" (ByVal CardNum As Long) As Boolean
'���ȵ���
Public Declare Function User_SetScreenLight Lib "EQ2008_Dll.dll" (ByVal CardNum As Long, ByVal iLightDegreen As Long) As Boolean
'���¼��������ļ�INI
Public Declare Function User_ReloadIniFile Lib "EQ2008_Dll.dll" (ByVal strEQ2008_Dll_Set_Path As String) As Boolean


'
Public Declare Function GetCurrentDirectory Lib "kernel32" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long

 

unit EQ2008DLL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,EQ2008_Function, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    AddProgram: TButton;
    DelProgram: TButton;
    AddText: TButton;
    AddRTF: TButton;
    AddSingleLineText: TButton;
    AddTime: TButton;
    AddTimeCount: TButton;
    AddTemperature: TButton;
    AddBmp: TButton;
    Send: TButton;
    OpenScreen: TButton;
    CloseScreen: TButton;
    AjustTime: TButton;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    ComboBox1: TComboBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure AddProgramClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddTextClick(Sender: TObject);
    procedure AddRTFClick(Sender: TObject);
    procedure AddSingleLineTextClick(Sender: TObject);
    procedure AddTimeClick(Sender: TObject);
    procedure AddTimeCountClick(Sender: TObject);
    procedure AddTemperatureClick(Sender: TObject);
    procedure AddBmpClick(Sender: TObject);
    procedure SendClick(Sender: TObject);
    procedure OpenScreenClick(Sender: TObject);
    procedure CloseScreenClick(Sender: TObject);
    procedure AjustTimeClick(Sender: TObject);
    procedure DelProgramClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m_iProgramIndex:Integer;
  m_iCardNum:Integer;
  m_iProgramCount:Integer;

implementation

{$R *.dfm}

//��ʼ������
procedure TForm1.FormCreate(Sender: TObject);
begin
  m_iProgramIndex:=-1;
  m_iCardNum:=1;
  m_iProgramCount:=0;
end;

//��ӽ�Ŀ����
procedure TForm1.AddProgramClick(Sender: TObject);
begin
	m_iProgramIndex:=User_AddProgram(m_iCardNum,FALSE,10);
  m_iProgramCount:=m_iProgramCount+1;
  label1.Caption :='��ǰ��Ŀ��Ϊ��' +  IntToStr(m_iProgramCount) ;
end;

//����ı���
procedure TForm1.AddTextClick(Sender: TObject);
var
  Text : User_Text ;
begin

	Text.BkColor := 0;
	Text.chContent := '��ӭʹ��EQ2008�Ϳ��ƿ���̬��!';

	Text.PartInfo.FrameColor := 0;
	Text.PartInfo.iFrameMode := 0;
	Text.PartInfo.iHeight := 32;
	Text.PartInfo.iWidth := 64;
	Text.PartInfo.iX := 0;
	Text.PartInfo.iY := 0;

	Text.FontInfo.bFontBold := 0;
	Text.FontInfo.bFontItaic:= 0;
	Text.FontInfo.bFontUnderline := 0;
	Text.FontInfo.colorFont := Yellow;
	Text.FontInfo.iFontSize := 16;
	Text.FontInfo.strFontName := '����';
	Text.FontInfo.iAlignStyle := 1;
	Text.FontInfo.iVAlignerStyle := 0;
	Text.FontInfo.iRowSpace := 0;

	Text.MoveSet.bClear := 0;
	Text.MoveSet.iActionSpeed := 4;
	Text.MoveSet.iActionType := 0;
	Text.MoveSet.iHoldTime := 10;
	Text.MoveSet.iClearActionType	:= 0;
	Text.MoveSet.iClearSpeed		:= 4;
	Text.MoveSet.iFrameTime			:= 10;

	User_AddText(m_iCardNum,@Text,m_iProgramIndex);
end;

//���RTF�ļ���
procedure TForm1.AddRTFClick(Sender: TObject);
var
  RTF : User_RTF;
  nBufferLength:DWORD;
  pBuffer:PChar;
begin
  nBufferLength:=MAX_PATH+1;
  GetMem(pBuffer, nBufferLength);
  Windows.GetCurrentDirectory(nBufferLength, pBuffer);

	RTF.strFileName := pBuffer + '\EQ2008_RTF.rtf';
  FreeMem(pBuffer);

	RTF.PartInfo.FrameColor		:= 0;
	RTF.PartInfo.iFrameMode		:= 0;
	RTF.PartInfo.iHeight		  := 32;
	RTF.PartInfo.iWidth			  := 64;
	RTF.PartInfo.iX				    := 0;
	RTF.PartInfo.iY				    := 0;

	RTF.MoveSet.bClear			  := 0;
	RTF.MoveSet.iActionSpeed	:= 4;
	RTF.MoveSet.iActionType		:= 0;
	RTF.MoveSet.iHoldTime		  := 10;
	RTF.MoveSet.iClearActionType:= 0;
	RTF.MoveSet.iClearSpeed		:= 4;
	RTF.MoveSet.iFrameTime		:= 10;

	User_AddRTF(m_iCardNum,@RTF,m_iProgramIndex);
end;

//��ӵ����ı���
procedure TForm1.AddSingleLineTextClick(Sender: TObject);
var
  SingleText : User_SingleText;
begin

	SingleText.BkColor		:= 0;
	SingleText.chContent	:= '��ӭʹ�ã�';
	SingleText.PartInfo.iFrameMode	:= 0;
	SingleText.PartInfo.iHeight		:= 32;
	SingleText.PartInfo.iWidth		:= 64;
	SingleText.PartInfo.iX := 0;
	SingleText.PartInfo.iY := 0;
	SingleText.FontInfo.bFontBold		  := 0;
	SingleText.FontInfo.bFontItaic		:= 0;
	SingleText.FontInfo.bFontUnderline:= 0;
	SingleText.FontInfo.colorFont		  := RED;
	SingleText.FontInfo.iFontSize		  := 16;
	SingleText.PartInfo.FrameColor		:= 0;
	SingleText.FontInfo.strFontName		:= '����';
	SingleText.MoveSet.bClear			    := 0;
	SingleText.MoveSet.iActionSpeed		:= 1;
	SingleText.MoveSet.iActionType		:= 20;
	SingleText.MoveSet.iHoldTime		  := 0;
	SingleText.MoveSet.iClearActionType	:= 0;
	SingleText.MoveSet.iClearSpeed		:= 4;
	SingleText.MoveSet.iFrameTime		  := 50;
	User_AddSingleText(m_iCardNum,@SingleText,m_iProgramIndex);
end;

//���ʱ�䴰
procedure TForm1.AddTimeClick(Sender: TObject);
var
  	DateTime:User_DateTime ;
begin

  	DateTime.bDay     := 0;
  	DateTime.bHour    := 1;
  	DateTime.BkColor  := 0;
  	DateTime.bMin     := 1;
  	DateTime.bMouth   := 0;
  	DateTime.bMulOrSingleLine := 0;
  	DateTime.bSec   :=0;
  	DateTime.bWeek  := 0;
  	DateTime.bYear  := 0;
  	DateTime.bYearDisType := 0;
  	DateTime.chTitle      := '����ʱ��';
  
  	DateTime.PartInfo.iFrameMode  := 1;
  	DateTime.iDisplayType         := 1;
  	DateTime.PartInfo.FrameColor  :=YELLOW;
  	DateTime.PartInfo.iHeight     := 32;
  	DateTime.PartInfo.iWidth      := 64;
  	DateTime.PartInfo.iX:=0;
  	DateTime.PartInfo.iY:=0;
  	DateTime.FontInfo.bFontBold   :=0;
  	DateTime.FontInfo.bFontItaic  :=0;
  	DateTime.FontInfo.bFontUnderline:=0;
  	DateTime.FontInfo.colorFont   := RED;
  	DateTime.FontInfo.iAlignStyle :=1;
  	DateTime.FontInfo.iFontSize   := 12;
  	DateTime.FontInfo.strFontName := '����';
  
  	User_AddTime(m_iCardNum,@DateTime,m_iProgramIndex);
end;

//��Ӽ�ʱ��
procedure TForm1.AddTimeCountClick(Sender: TObject);
var
  TimeCount : User_Timer;
begin
	TimeCount.bDay := 1;
	TimeCount.bHour := 0;
	TimeCount.BkColor :=0;
	TimeCount.bMin := 0;
	TimeCount.bMulOrSingleLine :=1;
	TimeCount.bSec :=0;
	TimeCount.chTitle := '������һ';
	TimeCount.FontInfo.bFontBold:=0;
	TimeCount.FontInfo.bFontItaic:=0;
	TimeCount.FontInfo.bFontUnderline:=0;
	TimeCount.FontInfo.colorFont:=YELLOW;
	TimeCount.FontInfo.iAlignStyle:=2;
	TimeCount.FontInfo.iFontSize:=16;
	TimeCount.FontInfo.strFontName:='����';
	TimeCount.PartInfo.FrameColor := GREEN;
	TimeCount.PartInfo.iFrameMode :=0;
	TimeCount.PartInfo.iHeight := 32;
	TimeCount.PartInfo.iWidth := 64;
	TimeCount.PartInfo.iX :=0;
	TimeCount.PartInfo.iY:=0;
	TimeCount.ReachTimeYear:=2008;
	TimeCount.ReachTimeMonth:=5;
	TimeCount.ReachTimeDay:= 1;
	TimeCount.ReachTimeHour:=10;
	TimeCount.ReachTimeMinute:=0;
	TimeCount.ReachTimeSecond:=0;

	User_AddTimeCount(m_iCardNum,@TimeCount,m_iProgramIndex);
end;

//����¶ȴ�
procedure TForm1.AddTemperatureClick(Sender: TObject);
var
 	Temperature:User_Temperature;
begin
	Temperature.BkColor:=0;
	Temperature.chTitle:='';
	Temperature.iDisplayType:=0;
	Temperature.PartInfo.FrameColor:=GREEN;
	Temperature.PartInfo.iFrameMode:=1;
	Temperature.PartInfo.iHeight:=32;
	Temperature.PartInfo.iWidth:=64;
	Temperature.PartInfo.iX:=0;
	Temperature.PartInfo.iY:=0;
	Temperature.FontInfo.bFontBold:=0;
	Temperature.FontInfo.bFontItaic:=0;
	Temperature.FontInfo.bFontUnderline:=0;
	Temperature.FontInfo.colorFont:=YELLOW;
	Temperature.FontInfo.iAlignStyle:=0;
	Temperature.FontInfo.iFontSize:=12;
	Temperature.FontInfo.strFontName:='����';

	User_AddTemperature(m_iCardNum,@Temperature,m_iProgramIndex);
end;

//���ͼƬ��
procedure TForm1.AddBmpClick(Sender: TObject);
var
  BmpZone:User_Bmp;
  iBMPZoneNum:integer;
  MoveSet:User_MoveSet;
begin

	BmpZone.PartInfo.iX		      := 0;
	BmpZone.PartInfo.iY		      := 0;
	BmpZone.PartInfo.iHeight    := 32;
	BmpZone.PartInfo.iWidth     := 64;
	BmpZone.PartInfo.FrameColor := GREEN;
	BmpZone.PartInfo.iFrameMode := 1;

	MoveSet.bClear			  := 1;
	MoveSet.iActionSpeed	:= 4;
	MoveSet.iActionType		:= 0;
	MoveSet.iHoldTime		  := 50;
	MoveSet.iClearActionType:= 0;
	MoveSet.iClearSpeed		:= 4;
	MoveSet.iFrameTime		:= 10;

	iBMPZoneNum := User_AddBmpZone(m_iCardNum,@BmpZone,m_iProgramIndex);

	User_AddBmp(m_iCardNum,iBMPZoneNum,image1.Picture.Bitmap.Handle,@MoveSet,m_iProgramIndex);
	User_AddBmp(m_iCardNum,iBMPZoneNum,image2.Picture.Bitmap.Handle,@MoveSet,m_iProgramIndex);
end;

//ɾ����Ŀ
procedure TForm1.DelProgramClick(Sender: TObject);
begin
 	if(User_DelAllProgram(m_iCardNum)=FALSE) then
     MessageBox(Handle,'ɾ����Ŀʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
  begin
 		//��ʾ��Ϣ
		m_iProgramCount:=0;
		label1.Caption :='������ӽ�Ŀ��';
  end;
end;

//����ƿ���������
procedure TForm1.SendClick(Sender: TObject);
begin

	if(User_SendToScreen(m_iCardNum)=FALSE) then
     MessageBox(Handle,'���ݷ���ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'���ݷ��ͳɹ���','��ʾ��Ϣ',MB_OK);
end;

//����ʾ��
procedure TForm1.OpenScreenClick(Sender: TObject);
begin
 	if(User_OpenScreen(m_iCardNum)=FALSE) then
     MessageBox(Handle,'����ʾ��ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
  else
     MessageBox(Handle,'����ʾ���ɹ���','��ʾ��Ϣ',MB_OK);
end;

//�ر���ʾ��
procedure TForm1.CloseScreenClick(Sender: TObject);
begin
  if(User_CloseScreen(m_iCardNum)=FALSE) then
     MessageBox(Handle,'�ر���ʾ��ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
  else
     MessageBox(Handle,'�ر���ʾ���ɹ���','��ʾ��Ϣ',MB_OK);
end;

//У��ʱ��
procedure TForm1.AjustTimeClick(Sender: TObject);
begin
 	if(User_AdjustTime(m_iCardNum)=FALSE)  then
     MessageBox(Handle,'У׼ʱ��ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
  else
     MessageBox(Handle,'У׼ʱ��ɹ���','��ʾ��Ϣ',MB_OK);
end;

//ʵʱ���ͽ�������
procedure TForm1.Button1Click(Sender: TObject);
begin
	if(User_RealtimeConnect(m_iCardNum)=FALSE) then
     MessageBox(Handle,'ʵʱ���ͽ�������ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'ʵʱ���ͽ������ӳɹ���','��ʾ��Ϣ',MB_OK);
end;

//ʵʱ����ͼƬ���
procedure TForm1.Button2Click(Sender: TObject);
var
  iZoneX:integer;
  iZoneY:integer;
  iZoneW:integer;
  iZoneH:integer;
begin
  iZoneX := StrToInt(edit1.Text);
  iZoneY := StrToInt(edit2.Text);
  iZoneW := StrToInt(edit3.Text);
  iZoneH := StrToInt(edit4.Text);
 if(User_RealtimeSendData(m_iCardNum,iZoneX,iZoneY,iZoneW,iZoneH,image2.Picture.Bitmap.Handle)=FALSE) then
     MessageBox(Handle,'ʵʱ����ͼƬ���ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'ʵʱ����ͼƬ����ɹ���','��ʾ��Ϣ',MB_OK);
end;

//ʵʱ����ͼƬ�ļ�
procedure TForm1.Button3Click(Sender: TObject);
var
  iZoneX:integer;
  iZoneY:integer;
  iZoneW:integer;
  iZoneH:integer;
begin
  iZoneX := StrToInt(edit1.Text);
  iZoneY := StrToInt(edit2.Text);
  iZoneW := StrToInt(edit3.Text);
  iZoneH := StrToInt(edit4.Text);
 if(User_RealtimeSendBmpData(m_iCardNum,iZoneX,iZoneY,iZoneW,iZoneH,'BMP2.bmp')=FALSE) then
     MessageBox(Handle,'ʵʱ����ͼƬ�ļ�ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'ʵʱ����ͼƬ�ļ��ɹ���','��ʾ��Ϣ',MB_OK);

end;

//ʵʱ�����ı�����
procedure TForm1.Button4Click(Sender: TObject);
var
  iZoneX:integer;
  iZoneY:integer;
  iZoneW:integer;
  iZoneH:integer;
  strText:String;
  FontInfo:User_FontSet;
begin
  iZoneX := StrToInt(edit1.Text);
  iZoneY := StrToInt(edit2.Text);
  iZoneW := StrToInt(edit3.Text);
  iZoneH := StrToInt(edit4.Text);

    strText := 'ʵʱ�����ı�����!' ;
    FontInfo.bFontBold := 0 ;
    FontInfo.bFontItaic := 0;
    FontInfo.bFontUnderline := 0;
    FontInfo.colorFont := YELLOW;
    FontInfo.iFontSize := 12;
    FontInfo.strFontName := '����';
    FontInfo.iAlignStyle := 0;
    FontInfo.iVAlignerStyle := 0;
    FontInfo.iRowSpace := 0;

 if(User_RealtimeSendText(m_iCardNum,iZoneX,iZoneY,iZoneW,iZoneH,strText,@FontInfo)=FALSE) then
     MessageBox(Handle,'ʵʱ�����ı�ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'ʵʱ�����ı��ɹ���','��ʾ��Ϣ',MB_OK);
end;

//ʵʱ���ͶϿ�����
procedure TForm1.Button5Click(Sender: TObject);
begin
	if(User_RealtimeDisConnect(m_iCardNum)=FALSE) then
     MessageBox(Handle,'ʵʱ���ͶϿ�����ʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'ʵʱ���ͶϿ����ӳɹ���','��ʾ��Ϣ',MB_OK);
end;

//��տ��ƿ���Ŀ
procedure TForm1.Button6Click(Sender: TObject);
begin
	if(User_RealtimeScreenClear(m_iCardNum)=FALSE) then
     MessageBox(Handle,'��տ��ƿ���Ŀʧ�ܣ�','��ʾ��Ϣ',MB_OK)
	else
     MessageBox(Handle,'��տ��ƿ���Ŀ�ɹ���','��ʾ��Ϣ',MB_OK);
end;

//���ƿ���ַѡ��
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
   m_iCardNum := ComboBox1.ItemIndex+1;
end;
end.

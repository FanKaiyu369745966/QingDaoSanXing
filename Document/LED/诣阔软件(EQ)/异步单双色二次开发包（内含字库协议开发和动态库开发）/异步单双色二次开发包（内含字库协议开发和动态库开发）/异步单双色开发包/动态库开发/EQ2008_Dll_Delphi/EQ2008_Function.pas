unit EQ2008_Function;

interface
  Const
  EQ2008_Dll = 'EQ2008_Dll.dll';


//��ɫ����
   RED				=		$0000FF;
   GREEN			=		$00FF00;
   YELLOW			=		$00FFFF;

//����ֵ����
   EQ_FALSE		=		0;
   EQ_TRUE		=	  1;

Type
  	User_FontSet  = Packed Record   //��������
    strFontName: String;            //���������
    iFontSize: Longword	;           //����Ĵ�С
    bFontBold: Longword;            //�����Ƿ�Ӵ�
    bFontItaic: Longword;           //�����Ƿ���б��
    bFontUnderline: Longword;       //�����Ƿ���»���
    colorFont: Longword;            //�������ɫ
    iAlignStyle: Longword;          //���뷽ʽ
                                    //0�� �����
                                    //1������
                                    //2���Ҷ���
    iVAlignerStyle: Longword;       //���¶��뷽ʽ
                                    //0-������
                                    //1-���¾���
                                    //2-�׶���
    iRowSpace: Longword;            //�м��
		End;
		PUser_FontSet = ^User_FontSet;

		User_PartInfo  = Packed Record     //��������
    iX: Longword;                      //���ڵ����X
    iY: Longword;                      //���ڵ����Y
    iWidth: Longword;                  //����Ŀ��
    iHeight: Longword;                 //����ĸ߶�
    iFrameMode: Longword;              //�߿����ʽ
    FrameColor: Longword;              //�߿���ɫ
		End ;
		PUser_PartInfo = ^User_PartInfo;

		User_MoveSet = Packed Record
    iActionType: Longword;             //��Ŀ�任��ʽ
    iActionSpeed: Longword;            //��Ŀ�Ĳ����ٶ�
    bClear: Longword;                  //�Ƿ���Ҫ�������
    iHoldTime: Longword;               //����Ļ��ͣ����ʱ��
    iClearSpeed: Longword;		         //�����ʾ�����ٶ�
	  iClearActionType: Longword;	       //��Ŀ����ı任��ʽ
	  iFrameTime: Longword;
		End ;
		PUser_MoveSet = ^User_MoveSet;

		//����ʱ���ڡ�
		User_Timer = Packed Record
    PartInfo: User_PartInfo;           //������Ϣ
    BkColor: Longword;                 //������ɫ
    FontInfo: User_FontSet;            //��������
    ReachTimeYear: Longword;           //������
    ReachTimeMonth: Longword;          //������
    ReachTimeDay: Longword;            //������
    ReachTimeHour: Longword;           //����ʱ
    ReachTimeMinute: Longword;         //�����
    ReachTimeSecond: Longword;         //������
    bDay: Longword;                    //�Ƿ���ʾ�� 0������ʾ 1����ʾ
    bHour: Longword;                   //�Ƿ���ʾСʱ
    bMin: Longword;                    //�Ƿ���ʾ����
    bSec: Longword;                    //�Ƿ���ʾ��
    bMulOrSingleLine: Longword;        //���л��Ƕ���
    chTitle: String;                   //�����ʾ����
		End;
		PUser_Timer = ^User_Timer;

		//���¶ȴ��ڡ�
		User_Temperature = Packed Record
    PartInfo: User_PartInfo;       //������Ϣ
    BkColor: Longword;             //������ɫ
    FontInfo: User_FontSet;        //��������
    chTitle: String;               //����
    iDisplayType: Longword;        //��ʾ��ʽ��0���� 1��C
		End ;
		PUser_Temperature = ^User_Temperature;
		
		//������ʱ�䴰�ڡ�
		User_DateTime = Packed Record
    PartInfo: User_PartInfo;           //������Ϣ
    BkColor: Longword;                 //������ɫ
    FontInfo: User_FontSet;            //��������
    iDisplayType: Longword;            //��ʾ���
    chTitle: String;                   //�����ʾ����
    bYearDisType: Longword;            //���λ��0 ��4��1��2λ
    bMulOrSingleLine: Longword;        //���л��Ƕ���
    bYear: Longword;
    bMouth: Longword;
    bDay: Longword;
    bWeek: Longword;
    bHour: Longword;
    bMin: Longword;
    bSec: Longword;
		End;
		PUser_DateTime = ^User_DateTime;

		//��ͼ�Ŀ�
		User_Bmp = Packed Record
     	PartInfo: User_PartInfo;       //������Ϣ
		End;
		PUser_Bmp = ^User_Bmp;
		
		//�������ı���
		User_SingleText = Packed Record
     chContent: String;            //��ʾ����
    PartInfo: User_PartInfo;       //������Ϣ
    BkColor: Longword;             //������ɫ
    FontInfo: User_FontSet ;       //��������
    MoveSet: User_MoveSet;         //������ʽ����
		End;
		PUser_SingleText = ^User_SingleText;

		//���ı���
		User_Text = Packed Record
    chContent: String;                 //��ʾ����
    PartInfo: User_PartInfo ;          //������Ϣ
    BkColor: Longword;                 //������ɫ
    FontInfo: User_FontSet ;           //��������
    MoveSet: User_MoveSet;             //������ʽ����
		End;
		PUser_Text = ^User_Text;

   	//��RTF�ļ���
		User_RTF = Packed Record
    strFileName: String;                //��ʾ����
    PartInfo: User_PartInfo ;          //������Ϣ
    MoveSet: User_MoveSet;             //������ʽ����
		End;
		PUser_RTF = ^User_RTF;

//1����Ŀ�༭������
//��ӽ�Ŀ
Function User_AddProgram (CardNum: Longword;bWaitToEnd: Boolean;iPlayTime: Longword): Longword; Stdcall; External EQ2008_Dll;

//���ͼ����
Function User_AddBmpZone (CardNum: Longword;pBmp: PUser_Bmp; iProgramIndex: Longword): Longword ; Stdcall; External EQ2008_Dll;
Function User_AddBmp (CardNum: Longword;iBmpPartNum: Longword; hBitmap: Longword;pMoveSet: PUser_MoveSet; iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;

//���ʱ����
Function User_AddTime (CardNum: Longword; pDateTime: PUser_DateTime;iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;

//��ӵ���ʱ��
Function User_AddTimeCount (CardNum: Longword;pTimeCount: PUser_Timer; iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;

//����¶���
Function User_AddTemperature (CardNum: Longword;pTemperature: PUser_Temperature;iProgramIndex: Longword): Longword ; Stdcall; External EQ2008_Dll;

//����ı���
Function User_AddText (CardNum: Longword;pText: PUser_Text; iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;

//����ı���
Function User_AddRTF (CardNum: Longword;pRTF: PUser_RTF; iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;

//��ӵ����ı���
Function User_AddSingleText (CardNum: Longword; pSingleText: PUser_SingleText; iProgramIndex: Longword): Longword; Stdcall; External EQ2008_Dll;
                                            
//ɾ�����н�Ŀ
Function User_DelAllProgram (CardNum: Longword): Boolean; Stdcall; External EQ2008_Dll;

//���ͽ�Ŀ
Function User_SendToScreen (CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;

//2��ʵʱ�������ݺ�����
//ʵʱ�������ݽ�������
Function User_RealtimeConnect(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//ʵʱ����ͼƬ���
Function User_RealtimeSendData(CardNum: Longword; x: Longword; y: Longword; iWidth: Longword; iHeight: Longword; hBitmap: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//ʵʱ����ͼƬ�ļ�
Function User_RealtimeSendBmpData(CardNum: Longword; x: Longword; y: Longword; iWidth: Longword; iHeight: Longword; strFileName:String): Boolean ; Stdcall; External EQ2008_Dll;
//ʵʱ�����ı�
Function User_RealtimeSendText(CardNum: Longword;x: Longword; y: Longword; iWidth: Longword; iHeight: Longword; strText: String; pFontInfo:PUser_FontSet): Boolean ; Stdcall; External EQ2008_Dll;
//ʵʱ���ͶϿ�����
Function User_RealtimeDisConnect(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//ʵʱ��������
Function User_RealtimeScreenClear(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;

//3����ʾ�����ƺ�����
//����
Function User_OpenScreen(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//����
Function User_CloseScreen(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//У��ʱ��
Function User_AdjustTime(CardNum: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//���ȵ���
Function User_SetScreenLight(CardNum: Longword; iLightDegreen: Longword): Boolean ; Stdcall; External EQ2008_Dll;
//���¼��������ļ�INI
Function User_ReloadIniFile(strEQ2008_Dll_Set_Path: string): Boolean ; Stdcall; External EQ2008_Dll;

implementation

end.

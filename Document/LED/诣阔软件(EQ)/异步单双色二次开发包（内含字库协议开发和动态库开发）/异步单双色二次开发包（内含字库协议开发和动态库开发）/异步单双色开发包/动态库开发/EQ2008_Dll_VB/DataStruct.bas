Attribute VB_Name = "DataStruct"
  '��Ŀ����ṹ
  Type User_PartInfo
        iX As Long               '���ڵ����X
        iY As Long               '���ڵ����Y
        iWidth As Long           '����Ŀ��
        iHeight As Long          '����ĸ߶�
        iFrameMode As Long       '�߿����ʽ
        FrameColor As Long       '�߿���ɫ
  End Type
  
  '��������
  Type User_FontSet
        strFontName As String    '���������
        iFontSize As Long        '����Ĵ�С
        bFontBold As Long        '�����Ƿ�Ӵ�
        bFontItaic As Long       '�����Ƿ���б��
        bFontUnderline As Long   '�����Ƿ���»���
        colorFont As Long        '�������ɫ
        iAlignStyle As Long      '���뷽ʽ
                                 '0�� �����
                                 '1������
                                 '2���Ҷ���
        iVAlignerStyle As Long   '���¶��뷽ʽ
                                 '0-������
                                 '1-���¾���
                                 '2-�׶���
        iRowSpace As Long        '�м��
    End Type

    '������ʽ����
    Type User_MoveSet
        iActionType As Long      '��Ŀ�任��ʽ
        iActionSpeed As Long     '��Ŀ�Ĳ����ٶ�
        bClear As Long           '�Ƿ���Ҫ�������
        iHoldTime As Long        '����Ļ��ͣ����ʱ��
        iClearSpeed As Long      '�����ʾ�����ٶ�
        iClearActionType As Long '��Ŀ����ı任��ʽ
        iFrameTime As Long
    End Type


    '��ͼ�Ŀ�
    Type User_Bmp
        PartInfo As User_PartInfo   '������Ϣ
    End Type

    '�������ı���
    Type User_SingleText
        chContent As String         '��ʾ����
        PartInfo As User_PartInfo   '������Ϣ
        BkColor As Long          '������ɫ
        FontInfo As User_FontSet    '��������
        MoveSet As User_MoveSet     '������ʽ����
    End Type

    '���ı���
    Type User_Text
        chContent As String         '��ʾ����
        PartInfo As User_PartInfo   '������Ϣ
        BkColor As Long          '������ɫ
        FontInfo As User_FontSet    '��������
        MoveSet As User_MoveSet     '������ʽ����
    End Type

    '��RTF�ļ���
    Type User_RTF
        strFileName As String        'RTF�ļ���
        PartInfo As User_PartInfo    '������Ϣ
        MoveSet As User_MoveSet      '������ʽ����
    End Type
    
     '����ʱ���ڡ�
    Type User_Timer
        PartInfo As User_PartInfo   '������Ϣ
        BkColor As Long          '������ɫ
        FontInfo As User_FontSet    '��������
        ReachTimeYear As Long    '������
        ReachTimeMonth As Long   '������
        ReachTimeDay As Long     '������
        ReachTimeHour As Long    '����ʱ
        ReachTimeMinute As Long  '�����
        ReachTimeSecond As Long  '������
        bDay As Long             '�Ƿ���ʾ�� 0������ʾ 1����ʾ
        bHour As Long            '�Ƿ���ʾСʱ
        bMin As Long             '�Ƿ���ʾ����
        bSec As Long             '�Ƿ���ʾ��
        bMulOrSingleLine As Long '���л��Ƕ���
        chTitle As String           '�����ʾ����
    End Type


    '���¶ȴ��ڡ�
    Type User_Temperature
        PartInfo As User_PartInfo   '������Ϣ
        BkColor As Long          '������ɫ
        FontInfo As User_FontSet    '��������
        chTitle As String           '����
        iDisplayType As Long     '��ʾ��ʽ��0���� 1��C
    End Type

    '������ʱ�䴰�ڡ�
    Type User_DateTime
        PartInfo As User_PartInfo   '������Ϣ
        BkColor As Long          '������ɫ
        FontInfo As User_FontSet    '��������
        iDisplayType As Long     '��ʾ���
        chTitle As String           '�����ʾ����
        bYearDisType As Long     '���λ��0 ��4��1��2λ
        bMulOrSingleLine As Long '���л��Ƕ���
        bYear As Long
        bMouth As Long
        bDay As Long
        bWeek As Long
        bHour As Long
        bMin As Long
        bSec As Long
    End Type

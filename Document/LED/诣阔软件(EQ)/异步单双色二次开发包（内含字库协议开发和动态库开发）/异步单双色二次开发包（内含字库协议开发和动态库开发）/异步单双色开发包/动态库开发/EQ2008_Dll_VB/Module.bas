Attribute VB_Name = "DataStruct"

  Structure User_FontSet              '��������
        Dim strFontName As String       '���������
        Dim iFontSize As Integer        '����Ĵ�С
        Dim bFontBold As Integer        '�����Ƿ�Ӵ�
        Dim bFontItaic As Integer       '�����Ƿ���б��
        Dim bFontUnderline As Integer   '�����Ƿ���»���
        Dim colorFont As Integer        '�������ɫ
        Dim iAlignStyle As Integer      '���뷽ʽ
        '0�� �����
        '1������
        '2���Ҷ���
        Dim iVAlignerStyle As Integer   '���¶��뷽ʽ
        '0-������
        '1-���¾���
        '2-�׶���
        Dim iRowSpace As Integer        '�м��
    End Structure

    Structure User_PartInfo             '��������
        Dim iX As Integer               '���ڵ����X
        Dim iY As Integer               '���ڵ����Y
        Dim iWidth As Integer           '����Ŀ��
        Dim iHeight As Integer          '����ĸ߶�
        Dim iFrameMode As Integer       '�߿����ʽ
        Dim FrameColor As Integer       '�߿���ɫ
    End Structure


    Structure User_MoveSet
        Dim iActionType As Integer      '��Ŀ�任��ʽ
        Dim iActionSpeed As Integer     '��Ŀ�Ĳ����ٶ�
        Dim bClear As Integer           '�Ƿ���Ҫ�������
        Dim iHoldTime As Integer        '����Ļ��ͣ����ʱ��
        Dim iClearSpeed As Integer      '�����ʾ�����ٶ�
        Dim iClearActionType As Integer '��Ŀ����ı任��ʽ
        Dim iFrameTime As Integer
    End Structure

    '����ʱ���ڡ�
    Structure User_Timer
        Dim PartInfo As User_PartInfo   '������Ϣ
        Dim BkColor As Integer          '������ɫ
        Dim FontInfo As User_FontSet    '��������
        Dim ReachTimeYear As Integer    '������
        Dim ReachTimeMonth As Integer   '������
        Dim ReachTimeDay As Integer     '������
        Dim ReachTimeHour As Integer    '����ʱ
        Dim ReachTimeMinute As Integer  '�����
        Dim ReachTimeSecond As Integer  '������
        Dim bDay As Integer             '�Ƿ���ʾ�� 0������ʾ 1����ʾ
        Dim bHour As Integer            '�Ƿ���ʾСʱ
        Dim bMin As Integer             '�Ƿ���ʾ����
        Dim bSec As Integer             '�Ƿ���ʾ��
        Dim bMulOrSingleLine As Integer '���л��Ƕ���
        Dim chTitle As String           '�����ʾ����
    End Structure


    '���¶ȴ��ڡ�
    Structure User_Temperature
        Dim PartInfo As User_PartInfo   '������Ϣ
        Dim BkColor As Integer          '������ɫ
        Dim FontInfo As User_FontSet    '��������
        Dim chTitle As String           '����
        Dim iDisplayType As Integer     '��ʾ��ʽ��0���� 1��C
    End Structure

    '������ʱ�䴰�ڡ�
    Structure User_DateTime
        Dim PartInfo As User_PartInfo   '������Ϣ
        Dim BkColor As Integer          '������ɫ
        Dim FontInfo As User_FontSet    '��������
        Dim iDisplayType As Integer     '��ʾ���
        Dim chTitle As String           '�����ʾ����
        Dim bYearDisType As Integer     '���λ��0 ��4��1��2λ
        Dim bMulOrSingleLine As Integer '���л��Ƕ���
        Dim bYear As Integer
        Dim bMouth As Integer
        Dim bDay As Integer
        Dim bWeek As Integer
        Dim bHour As Integer
        Dim bMin As Integer
        Dim bSec As Integer
    End Structure

    '��ͼ�Ŀ�
    Structure User_Bmp
        Dim PartInfo As User_PartInfo   '������Ϣ
    End Structure

    '�������ı���
    Structure User_SingleText
        Dim chContent As String         '��ʾ����
        Dim PartInfo As User_PartInfo   '������Ϣ
        Dim BkColor As Integer          '������ɫ
        Dim FontInfo As User_FontSet    '��������
        Dim MoveSet As User_MoveSet     '������ʽ����
    End Structure

    '���ı���
    Structure User_Text
        Dim chContent As String         '��ʾ����
        Dim PartInfo As User_PartInfo   '������Ϣ
        Dim BkColor As Integer          '������ɫ
        Dim FontInfo As User_FontSet    '��������
        Dim MoveSet As User_MoveSet     '������ʽ����
    End Structure

    '��RTF�ļ���
    Structure User_RTF
        Dim strFileName As String        'RTF�ļ���
        Dim PartInfo As User_PartInfo    '������Ϣ
        Dim MoveSet As User_MoveSet      '������ʽ����
    End Structure

object FrmEstudoDelphi: TFrmEstudoDelphi
  Left = 0
  Top = 0
  Caption = 'Estudos Delphi'
  ClientHeight = 346
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 493
    Height = 346
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 477
    ExplicitHeight = 281
    object BtnTeste: TBitBtn
      Left = 255
      Top = 27
      Width = 98
      Height = 25
      Caption = 'Abrir Com Helper'
      TabOrder = 0
      OnClick = BtnTesteClick
    end
    object BtnCarregaDados: TBitBtn
      Left = 159
      Top = 27
      Width = 90
      Height = 25
      Caption = 'Carregar dados'
      TabOrder = 1
      OnClick = BtnCarregaDadosClick
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 112
      Width = 489
      Height = 232
      Align = alBottom
      DataSource = DsDados
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Connect: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=123;Persist Security Info=True;Us' +
      'er ID=sa;Initial Catalog=ServidorSQL;Data Source=DESKTOP-U0AA7VV' +
      '\SQLEXPRESS;Initial File Name="";Server SPN="";Authentication=""' +
      ';Access Token=""'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 32
    Top = 8
  end
  object QryDados: TADOQuery
    Connection = Connect
    Parameters = <>
    SQL.Strings = (
      'Select* from Clientes'
      'order by 2')
    Left = 82
    Top = 7
  end
  object DsDados: TDataSource
    DataSet = QryDados
    Left = 33
    Top = 58
  end
end

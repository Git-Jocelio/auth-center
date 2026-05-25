object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Principal'
  ClientHeight = 554
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 906
    Height = 504
    ActivePage = tbs_logs
    Align = alClient
    TabOrder = 0
    object tbs_users: TTabSheet
      Caption = 'Usu'#225'rio'
      object pnl_user_topo: TPanel
        Left = 0
        Top = 0
        Width = 898
        Height = 57
        Align = alTop
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 16
          Top = 13
          Width = 265
          Height = 25
          Caption = 'Listar Usu'#225'rios no Active Directory'
          TabOrder = 0
        end
      end
      object pnl_users_main: TPanel
        Left = 0
        Top = 57
        Width = 898
        Height = 417
        Align = alClient
        TabOrder = 1
        object StringGrid1: TStringGrid
          Left = 1
          Top = 1
          Width = 896
          Height = 415
          Align = alClient
          ColCount = 2
          RowCount = 2
          TabOrder = 0
          ColWidths = (
            64
            779)
        end
      end
    end
    object tbs_config: TTabSheet
      Caption = 'Configura'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'tbs_config'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object pnl_conf_main: TPanel
        Left = 0
        Top = 0
        Width = 898
        Height = 474
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 40
          Top = 64
          Width = 393
          Height = 89
          Caption = ' SERVER '
          TabOrder = 0
          object Label2: TLabel
            Left = 32
            Top = 40
            Width = 22
            Height = 15
            Caption = 'Port'
          end
          object Edit1: TEdit
            Left = 72
            Top = 37
            Width = 273
            Height = 23
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 40
          Top = 160
          Width = 393
          Height = 185
          Caption = ' LDAP '
          TabOrder = 1
          object Label4: TLabel
            Left = 32
            Top = 40
            Width = 26
            Height = 15
            Caption = 'Host'
          end
          object Label5: TLabel
            Left = 32
            Top = 85
            Width = 22
            Height = 15
            Caption = 'Port'
          end
          object Label3: TLabel
            Left = 32
            Top = 133
            Width = 45
            Height = 15
            Caption = 'Timeout'
          end
          object Edit3: TEdit
            Left = 72
            Top = 37
            Width = 273
            Height = 23
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 72
            Top = 82
            Width = 273
            Height = 23
            TabOrder = 1
          end
          object Edit2: TEdit
            Left = 83
            Top = 129
            Width = 94
            Height = 23
            TabOrder = 2
          end
        end
        object BitBtn2: TBitBtn
          Left = 40
          Top = 33
          Width = 191
          Height = 25
          Caption = 'Ver configura'#231#227'o atual'
          TabOrder = 2
        end
        object BitBtn3: TBitBtn
          Left = 40
          Top = 361
          Width = 167
          Height = 25
          Caption = 'Salvar Altera'#231#245'es'
          TabOrder = 3
        end
        object GroupBox3: TGroupBox
          Left = 463
          Top = 64
          Width = 393
          Height = 129
          Caption = ' TOKEN '
          TabOrder = 4
          object Label7: TLabel
            Left = 32
            Top = 40
            Width = 34
            Height = 15
            Caption = 'Expira'
          end
          object Label8: TLabel
            Left = 32
            Top = 88
            Width = 70
            Height = 15
            Caption = ' Secret Word'
          end
          object Edit5: TEdit
            Left = 72
            Top = 37
            Width = 273
            Height = 23
            TabOrder = 0
          end
          object Edit6: TEdit
            Left = 111
            Top = 81
            Width = 234
            Height = 23
            TabOrder = 1
          end
        end
      end
    end
    object tbs_logs: TTabSheet
      Caption = 'Logs'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 898
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 24
          Top = 16
          Width = 24
          Height = 15
          Caption = 'Data'
        end
        object btn_buscar: TSpeedButton
          Left = 201
          Top = 12
          Width = 86
          Height = 24
          Caption = 'Buscar'
          OnClick = btn_buscarClick
        end
        object dtp_data: TDateTimePicker
          Left = 58
          Top = 13
          Width = 137
          Height = 23
          Date = 46162.000000000000000000
          Time = 0.603955300925008500
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 898
        Height = 417
        Align = alClient
        DataSource = DataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object pnNavBar: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 15458266
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 652
      Height = 50
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alClient
      Alignment = taCenter
      Caption = 'AuthCenter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5127481
      Font.Height = -35
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 177
      ExplicitHeight = 47
    end
    object pnUsuario: TPanel
      Left = 728
      Top = 0
      Width = 178
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      Color = 15458266
      ParentBackground = False
      TabOrder = 0
      object lbl_nome: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 5
        Width = 168
        Height = 17
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 0
        Align = alTop
        Caption = 'Joc'#233'lio Gomes da Silva'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6579300
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 136
      end
    end
    object pnl_img: TPanel
      Left = 672
      Top = 0
      Width = 56
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object imgUsuario: TImage
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 56
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
          000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000003
          A94944415478DAD5967D68535714C0CF7DCFA42D05BF8A5398A05694D10F51B3
          244B9A6A5010D40D9CED6BFD04857DB88F0E0445D13FD2E2FEE806FB67E256A1
          0A8A14ED4BB5D68A8A6C746B9357F31A2DD23AF6E1A6A30E3A95B5529A362FB9
          C7F3F28A54169BB47D7E5D78B9F7E49E7BEEEF9C7BCFBD97C14B2EEC75056036
          5B792ECBE4B910034051F8331C3C73FB850038DCD27A64B807902D7EAA03E137
          06F84D48F1373F270064CEA2B24A8EF0410A8BB56A40AE4C2099096077977D48
          362B47C418226F6208AD0022A0001EF27E03E8826E94A12F14F0D79A06B0D4BB
          63BA353A104260D9244668D0F650505646EB2C734B2E0BE029D2C9247140B36A
          CECE96C63E53009CEEB26D1CF0AB11F14B35287F9F4CEF6D4FC9678C0B07F436
          2DD5DEB022D79902E070495F2383AD7A3B121F5EDE75ADA937999EDD2BCD8128
          84F53652343A82FE7D6645E00837D618B2ADF7E7B5B4B4C492E9D96C368B9091
          7BC7B08CE7D480FF737322E02EF5D1DA7E648CE06BD4404377323DB7BBBC4003
          7E252120AB5195FA43A600D85D9B56038B9F34247E5E0D367C9A14B4A8B40691
          BDA7B7E3B451AF07E51F4D01902449BC7B0F7EA0C45E3412DE637C68A83A1C6E
          1ED445976B7796C67A0E92B19D86F7F8FBBA35F9ABAAAAAAB829007AB115972F
          1739F72342466220833E44BC2EE8F3D1C94C70D38CC96118819774280D37D2B1
          3BAEA3D8E9943C5C84EFA899F30C9587A2C03E696FAB0FA46B73DC7741A167CB
          8C2CAEEDA448AC65022C4C388DF00719BA1C1DD48E7776A63E7C2605607679F5
          01F2F2F2AC9933F30B2DC8672367423A460501E25A9CF7461E895DB76EC9D109
          01B85C52569CE117B4BB7790DAD4097AD74FBF27FEF91BBFEDE991236903381C
          1B7250B49CA6DEBC494477F42CDD4CD33687428D0F5302F87C3EE1D2D5EE06CA
          6D872E53AE3F10985047F9FD2B9D82B1B4E663A2881CDF4281D305C68C9445B8
          A606EB4BF4C7C29800F677CA3782C00F8F0CBA99210E6E696BBBF8DF441CF750
          CA4651ABA3345D62CC16AB5003E7CE8E0DE0964E53554C5F4CE3DACACEF6C63B
          9389BE6385B40063F013E8AF250E3FABEDF2E65400BF503595421FEA50FCEF4F
          66F2271045522345C14E5F7F87223FB5AFFE0740AFDE1E34FE6FA697CFC76600
          905347A97A978C223DE5E6A68AC0BD4407B20B21A57E97391128A36B1A13D734
          39F5E6AB0E504A37199B4F19705855E46A3300EC45D27EB257417BE02FDA039E
          310196154BB3AC9C156459FE6D7DD6DB6FBCC5EBF54E89686F144705ECBAD12A
          DF1F13E04597970EF018BFCB8530FBFD43280000000049454E44AE426082}
        ExplicitLeft = 694
        ExplicitTop = 5
        ExplicitWidth = 50
        ExplicitHeight = 44
      end
    end
  end
  object DataSource: TDataSource
    DataSet = Dm.MemTable
    Left = 292
    Top = 308
  end
end

object ftsListaDependencias: TftsListaDependencias
  Left = 0
  Top = 143
  Width = 768
  Height = 570
  Caption = 'Lista Dependencias de Componentes'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    000001002000000000004004000000000000000000000000000000000000FF00
    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
    FF00FF00FF0092867CFF9C613BFF9C613BFF9C613BFF9C613BFF9C613BFF9C61
    3BFF9C613BFF9C613BFF9C613BFF9C613BFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFF8F6F4FFF4F0EDFFF4F0EDFFF4F0EDFFF4F0EDFFF4F0
    EDFFF4F0EDFFF4F0EDFFF4F0EDFFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFF8F6F4FFF4F0ECFFEEE8E4FFE9E1DAFFE3DAD1FFDED3
    C9FFD8CCC1FFD5C7BAFFD2C3B6FFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFCFBFAFF6B625BFF6B625BFF6B625BFFE8E1DBFF6B62
    5BFF6B625BFF6B625BFFD5C7BBFFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFFFCFBFAFFF8F6F4FFF4F0ECFFEEE8E3FFE9E1
    DAFFE3DAD1FFDED2C9FFD9CCC1FFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFF6B625BFF6B625BFF6B625BFFF3F0ECFF6B62
    5BFF6B625BFF6B625BFFDDD3C9FFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFBFFF9F6F4FFF3F0
    ECFFEEE8E4FFE9E1DBFFE3D9D2FFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFF6B625BFF6B625BFF6B625BFFFCFBFBFF6B62
    5BFF6B625BFF6B625BFFE8E1DAFFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
    FAFFF8F6F3FFF4F0ECFFEEE9E4FFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF0092867CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFDFBFAFFF9F6F4FFF3F0ECFFF4F0EDFF9C613BFFFF00FF00FF00FF00FF00
    FF00FF00FF00228F58FF28B77EFF28B77EFF28B77EFF28B77EFF28B77EFF28B7
    7EFF28B77EFF28B77EFF28B77EFF28B77EFF228F58FFFF00FF00FF00FF00FF00
    FF00FF00FF00228F58FF73D6B3FF73D7B3FF73D6B3FF73D6B3FF73D6B3FF73D6
    B3FF73D6B3FF73D7B3FF73D7B3FF73D6B3FF228F58FFFF00FF00FF00FF00FF00
    FF00FF00FF00228F58FFBEF6E8FFBEF6E8FFBEF6E8FFBEF6E8FFBEF6E8FFBEF6
    E8FFBEF6E8FFBEF6E8FFBEF6E8FFBEF6E8FF228F58FFFF00FF00FF00FF00FF00
    FF00FF00FF00228F58FF228F58FF228F58FF228F58FF228F58FF228F58FF228F
    58FF228F58FF228F58FF228F58FF228F58FF228F58FFFF00FF00FF00FF00FF00
    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
    0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
    0000C0030000C0030000C0030000C0030000C0030000C0030000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 752
    Height = 506
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabHeight = 1
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = ' '
      object Splitter1: TSplitter
        Left = 170
        Top = 0
        Width = 5
        Height = 470
        Beveled = True
        Color = cl3DDkShadow
        ParentColor = False
      end
      object dg: TDrawGrid
        Left = 176
        Top = 0
        Width = 427
        Height = 217
        Color = 14856119
        DefaultRowHeight = 20
        FixedColor = 13405336
        FixedCols = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        TabOrder = 1
        Visible = False
        ColWidths = (
          63
          64
          64
          64
          64)
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 170
        Height = 470
        Align = alLeft
        Caption = 'Seleccionar'
        Color = clMenuBar
        ParentColor = False
        TabOrder = 0
        object Shape1: TShape
          Left = 112
          Top = 272
          Width = 65
          Height = 57
        end
        object cmbnom: TComboBox
          Left = 24
          Top = 88
          Width = 65
          Height = 21
          Style = csDropDownList
          Enabled = False
          ItemHeight = 13
          TabOrder = 0
          Visible = False
        end
        object Panel5: TPanel
          Left = 2
          Top = 15
          Width = 166
          Height = 170
          Align = alTop
          Caption = ' '
          Color = cl3DLight
          TabOrder = 1
          object Label3: TLabel
            Left = 10
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Clase'
          end
          object Label1: TLabel
            Left = 10
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Biblioteca'
          end
          object Label2: TLabel
            Left = 10
            Top = 104
            Width = 41
            Height = 13
            Caption = 'M'#225'scara'
          end
          object lbltotal: TLabel
            Left = 8
            Top = 149
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object cmbclase: TComboBox
            Left = 10
            Top = 24
            Width = 155
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 0
            OnChange = cmbclaseChange
          end
          object cmblibreria: TComboBox
            Left = 10
            Top = 72
            Width = 155
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
            OnChange = cmblibreriaChange
          end
          object cmbmascara: TComboBox
            Left = 10
            Top = 120
            Width = 155
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 2
            OnChange = cmbmascaraChange
          end
        end
        object lstcomponente: TListBox
          Left = 2
          Top = 185
          Width = 166
          Height = 283
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Color = clMenu
          Ctl3D = False
          ItemHeight = 13
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 2
          OnClick = lstcomponenteClick
        end
        object ColorBox1: TColorBox
          Left = 24
          Top = 264
          Width = 145
          Height = 22
          ItemHeight = 16
          TabOrder = 3
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 470
        Width = 743
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        Caption = ' '
        Color = clMenuBar
        TabOrder = 2
        Visible = False
        object SpeedButton1: TSpeedButton
          Left = 1072
          Top = 3
          Width = 41
          Height = 33
          Hint = 'SALIR'
          Glyph.Data = {
            361B0000424D361B000000000000360000002800000030000000300000000100
            180000000000001B000000000000000000000000000000000000FFF4FFFFF7FF
            FFFEFFFFFFF5FFFFEBFFFFE7FFFFE9FFFFF0F9FCF3FFFDFFFFF9FFF5ECFFFFF7
            FFFFFBFFFCF7F9FFFFFEEAF5F2F4FFFEF5FCF9FDFEFCF8F3F2FFFEFEFFF2F5FF
            FCFFFFFCFFFFFCFFFFFEFEFAF5F4FFFFFEEFF6F3F4FFFEF4FFFFFBFEFFFDFDFF
            FAF9FFFDFCFFF3F6FBF7FAFEFBFFFEF0F7F0FDFFF7FDFFF5FFFFF5FFFFF7FFFF
            FBFFFFFEFFFDFFFFFCFFFFF5FFFFF8FFFFFEFFFFFFF8FFFFF0FFFFEBFFFFEEFF
            FFF2FFFFFCF3F1F7FBF4FFFFF9FFFFFBFFFFFDFFFFFFFCFFFFFBFAFFFEE9F1F0
            F6FBFAFFFFFFFFFEFFFFFAFBFFF8FAFAEDEFFFF4F6FFFDFFF7EFF0FFFEFFFFFF
            FFFBFFFFE6EEEDF8FFFFFAFFFEFDFFFFFDFFFFFDFFFFFBFFFFF3F7F8F5FAF8FB
            FFFCFDFFFBFDFFF9FFFFF9FFFFFBFFFFFCFFFFFEFFFDFFFFFDFFFFF9FFFFFAFF
            FFFEFFFFFFFCFFFFF8FFFFF7FFFFF7FFFFFBFFFFFFF7F3F9FFFBFFFFFDFFF9F4
            F5F5F2EDFFFFF4FFFFF3FDFBFAFFFEFFFFFEFFEEEDEFFBFDFEF8FAFAFBFFFFFB
            FFFFFBFFFFFBFFFFF6F8F8F4F6F7F0EFF1FFFEFFFDFCFFFBFBFBFBFDF7F9FDF2
            F1F6EDF2F7EEFDFFFBFDFFFCF3F5F5FDFFFFFDFEFFFDFDFFFFFEFFFFFEFFFFFE
            FFFFFFFFFFFFFCFFFFFCFFFCFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFEFFFF
            FEFFF6F2F7FFFCFFFFFFFFFFFFFCFFFFF9FFFFF7FFFFF2FFFFF5FFFAF9FFFDFF
            FAF6FCFDFCFFF8FDFFF2FCFFD5E3EFEDFDFFE8F8FFD3E1EDF3FDFFF8FDFFFBFA
            FFF9F5FBFFFDFFFFFFFEFFFFF8FFFFF5FDFFF4FCFFF4FDFFF7FDFFF9F8FBF9F9
            FAFEFDFBFFFDFAFFFFF9FFFFFBFFFFFDFFFFFFFFFFFFF9FFFFF7FFFFFCFFFFFE
            FFFEFFFFFDFFFFFAFFFFFAFFFFFAFFFFFBFFFDF9FEFFFFFEF1F3EDFAFEF2FFFF
            F5FFFFF4F9FCECF5F5E9FFFFFBFEF6F7FFFCFFE5E8F7EFF9FFE3F4FFE1F6FFDB
            F3FFDDF5FFE1F6FFE4F5FFECF6FFE7EAF9FFFCFFFBF3F4FFFFFAF8F9EFEEF5E6
            FDFFF2FDFFF1F8FEEBFAFFF0FFFFFCFFFDFFFFF9FFFFF6FFFFF6FFFFF7FFFFFB
            FFFFFFFFFFFFF7FFFFF2FFFFF8FFFFFBFFFEFFFFFBFFFFF9FFFFF8FFFFF9FFFF
            FBFFFFFFFFFFFFFBF0F4E8FAFFF2FDFFF8E7EBE5FAFCFCFDFCFFFFF8FFFFF6FF
            FAF4FFF1F2FF00053B00104F000B5200004A00024D0000450B1C5B00073DF1F2
            FFFAF4FFF7EEFFFFF8FFFDFCFFF5F9FAE9F1E7FDFFF5F8FFEDF3F9E8FFFFF9FF
            FEFFFFF9FFFFF6FFFFF5FFFFF6FFFFFBFFFFFFFEFFFFF4FFFFF0FFFFF4FFFFF8
            FFFFFFFFFCFFFFF9FFFFF8FFFFFAFFFFFDFFF9FBF5FFFFF7FAFFF2FBFFF8F7FC
            FDFAFAFFF8F6FFE5DFFFF2E7FF20126404005212106A12187900004F19288F00
            0D76000E7707167D00006112187900005300004C140658F4E9FFE4DBFFF8F6FF
            F8F9FFF7FDFCFBFFF7F5FEEAFFFFF5F6F8F2FFFCFFFFF9FFFFF6FFFFF8FFFDFC
            FFFDFFFEFDFFF4FDFFF0FFFFF4FFFFF7FFFFFEFFFDFFFFFAFFFFFAFFFFFDFFFF
            FFFEFFFFF7FDFFF4FAFFF7F8FFFFE8EAFFF3F2FFE1DBFF180F65050067080174
            1612892A28A43334B43D40C6383EC52B33BC3B41CA1C22A9373AC02122A21513
            8F201C9303006F03006311065CE8DEFFF4F1FFE8EBFFF8FFFFF2FBEEFDFFF4FC
            FFF4FFFFFEFFFDFFFFFAFFFFFBFFFDFDFFFDFFFEFDFFF5FDFFF2FFFFF5FDFFF6
            FFFFFCFDFBFBF2EFF1FFFFFFFBFDF7F8FCF0ECF7E3FAFFF5F5FFFDE3EAFDEFF0
            FF100A5B1205710D047D2A2FAA3B44C34E55DA5052E04241D73631D02C25CA25
            1DC4281EC52922C72722C12524BA2E30BE3138BD2029A80E108C06007310006C
            130A5BECEAFFF1F6FFF0F8F7FBFFF7F9FFEEFFFFF7FFFFF9FCFDFBFFFFFFF5F7
            F7F9FDF8FBFFF9F0F9ECFFFFF8F1F4EBFFFFFBFFFFFCFFFFFCFFFFF9FFFFF7FD
            FFF4FAFFF5EBF9F3F1FCFFECF3FF0403530E06781A0C9A4941DB444DDD3C4CDB
            2C36CA1519B4140FB22217C12513C41A05B81E09BC1D0BBC190EB8110CAF060A
            A50711A51525B42E36C6291CB406008008006E00004AEFF1FFF4FAFFE6EFECFB
            FFF5FCFFF1FFFFF2FFFFF7FFFFF8FDFFFBF5F9F4F5FBF6FBFFFCFFFFF9FFFFF9
            FFFFFBFBFCF3F8FCF1F5F9EDECF3E4FAFFF8E1ECE9F1FDFFE6F1FF00074C0E0E
            783934BF5A50F6544FFE2B33DA212DD1171DC20E0EB41008AF1B0CB42711BD2B
            13BF3119C5220CB81809B11911B81212B8040AAF010DB11117BE2F25D33827CC
            1A0E9C00005E080554E8EBFFF4FBFFE2EBE8F7FFF1F7FFEAF3FAE5F4FAE7FDFF
            F8FDFFFCF1F5F6FBFEFFF8F7F3FFFFFBFFFFF9FDFEF5FFFFF8FDFFF8FBFFFBF8
            FFFFF3FBFFE6EFFF01094C181E7D484BCB4D4DE75F5CFF1A1ACC1419BB000498
            0208973B3EC87F7EFEAAA5FFC4BCFFD5CCFFDBD2FFC9C1FFAAA5FF7F7EFE4447
            D11117A60000930000980300AD392EDE1D14B12019A00D097305034FEDF0FFF4
            FBFFF8FFFCFBFFF4FDFFF0FEFFF0FDFFF7FDFFFCF6F9FEF7F8FFFEFAF9FFFCF8
            FAF7F2FFFFF9FFFFFBFDFFFEF6F8FFEBECFFE6E8FF16185F070A6C4247C1575D
            EC4C55F30E18C30914B2181E9D4C51B7929BF2CEDBFFE1F3FFDBF0FFCCE5F5C6
            E2E9C8E4EBD2EBFBDDF2FFE1F3FFD4E1FFA5AEFF585DC31216930507A200009B
            1D19BE312CC32D26AC03006A130F5BDEDEFFEDF2FFEBF2EDFDFFF4FDFFF1F6FD
            F0F8FCF7FDFCFFFDFAFFFFFFFEFFFDF9FBF8F3FFFFFBFCFAF9E9E8F1FAF7FFF3
            F0FF27236F09056A4040BC5A5EEC4550E82334D1071DBD000D96686CC5B3B3EF
            E4E8FFDEE9FFCADBF5CCE3F2D7F4F9D9F8F9D8F7F8D4F1F6CDE4F3CFE0FADFEA
            FFE0E5FFBABAF68384DC111DA1010CAA0002A51D1ABD261EB82218A00000581B
            145FF4F3FFF4F6FFE9F1E6FDFFF4F8FFF2F1F4F2FDFCFFFDFAFFFFFFFEFFFFFB
            FFFFFBFFFFFEFBF7FCFDF8FFF8F1FFE0D8FF0C01671E16937774FF6D71FF2130
            CC0014AC0124B43550BEE0E1FFF9EFFFF4EDFFE6E2FFD8D5FFC3C3FFA2A5FA85
            88E38184DF9DA0F5BFBFFFD6D3FFE0DCFFECE5FFFBF0FFF1F1FF596CD50C25B1
            00008F0001A62118C24233D104007A090060E0D8FFF8F7FFF9FEFDFAFFF4FFFF
            F8F7F8F6FDFBFFF4F0FFF9FBFBFFFFFFFFFDFFFFFBFFFCF6FBFFF7FFDAD1FF2B
            22790C077A6767F15658FA464BF40C17B91529B72540B2D0E9FFE9F0FFEDE7F2
            E1DAFFC7C0FF7C79DC2625990B078F1E18AB1913A60B078F1E1D916764C7BBB4
            FFEBE2FFF4ECF6DDE0EFD8ECFF2B42B0131DAA0104A30300A82114BC4B3BD608
            007611065CEAE4FFFBFCFFEFF3EDFFFFFCF6F5F7FDFCFFF8F9FFF4FFFFF8FEFF
            F8F0FFFFF9FFFFFEFEF7EDFEEDDFFF1B157A2A34A9697AFF4E5AFF1D22DB1614
            C20A068DC4CAFFE6F2FFD8E9DEEDFBFF8F94F72A30B90A1BA0081BA40F1BB507
            0EB10B12B50B15AF01139C08179B0E109A9493F5F3FCFFDCEBE3DAE8FFCAD5FF
            20209408089803029E1D1ABD2419C310039B0A0071F3E8FFF6F4FFFFFFFFFCFA
            FFFDFDFFFBFFFEF2FBF1F1FFFFDCE6EDFFF8FFF2E6F8FFF7F7FFF8FF271A680F
            0E7C5064DB6681FF2738EC151DDC1C16C3665BD7EBE5FFECEEEEECFBFE98A6DA
            242AB9040BBE0D24C6021CBC000DBA030CC10910C50715C2021BB90218B80000
            AA1F1FAF8C97CBE9F5FFE0E7F6ECEFFF7673D61D1A9F030599080AAC2822D323
            19BF000075090054F6F3FFE3E2EBFFFBFFF9F9FFF5FEF4F8FFF5F3FFFEF6FFFF
            F2EEF9FFFBFFFFFDFFF1EAFF231D6F15198A7088FF5876FF0116CB0F18D31412
            B2B3ADFFF7F2FFE6E3F2E4E4FF5251C50702B90A0AD81221DB0112C7050ACA1C
            1EE10B0AD00108C9000CC1000DC80808D80000AE433FB6DAD9FFDCDEFDF3F4FF
            C2BFFF2826A20002960000A12421D12B26C918109200004EF6F3FFFBFBFFFAF9
            FFF4F5F9FBFFFBF4FEF2F1FFF9F4FDFAF1F0F2F9F5FBF7F3FEF6F2FF211E7A32
            3AB17390FF395BEA0013C9111DD51619AAD2D1FFF3F1FFEDE9FFABA0FF2C21BD
            150ED30B0DDD000EC9000ABE080CC31211CB0B0AC4060BC4000DC40005C50F13
            E80000C7150CB07D74E2E5E1FFF7F5FFE2DFFF3A3AAC05069C0003AC1212C223
            22C51D1C9C090761DFDCFFEEECFFFDFCFFFFFFFFFDFFFCFDFFFBF8FFFBFAFFF9
            FDFFF9F3F5F6FAF8FFD6D5FF01026A5D6AEA6F90FF1940D20921D91524D8323B
            BBDCDFFFF0F2FDF8F3FF6355CB0700A7100FC9030DC50618BF0C1EB9131DB103
            079B03099E0812AC0316B90011C2000ACE0000C40600BA3C31B7EEE7FFF6F2FF
            EBE9FF5E60C60C0DA30C0FBE0002B42227C911179620228003033FF6F6FFF9F8
            FFFCFDF9FFFFFFFCFCFCF4FBF4F9FFF7EEF5E6FBFFFFF1F3FF3130780D118756
            66EF678DFF062EC20A23DD0A1BC84E5CCDDEE7FFEDF0F8F3EFFF4438B0180EB4
            373CDF3746E24357E52F42C14D5AC85C65CC5D68D04352C60F24AF2039D71125
            D10E19CF1411CB2B22AEE9DFFFF6F0FBEEEFFF7C7FDA070AA2070BBE0000A925
            2FD0424BCA00004F131359ECEBFFFBFEFFFFFFFBFBF8FAFFFBFFFDFFFCEBF0E7
            FDFFF4F8FFFFDDDDFF0A0B63191EA27587FF5D82FF0830C50D25DD000BB55665
            CBDEEBFFEBEFF4EEEAFF4840A55553DB7987FF7388FF788CFF4255B68899D8D2
            E1FFDFF0FFAEBFFF2138A6415CE23450DD283DD4181DBF1D1A95E6DDFEF6EFF4
            EFF1FF7D82D70507A10002B90000AB192AC72130AF020C71040452F3F1FFEDF0
            F5FFFFF9FFFDFFFFFBFFF7F4F6FFFFFCFBFFF4E6EFF2EDEFFF17177B00008E75
            84FF5578FF193ED4172EE20008AA5163BEE0ECFFEEF0FAF4F0FF4E499E7C7DED
            8F9EFF788BF2818EFA434DA59CA8D2EFFAFFE8F5FFCCDBFF1B2A914156D7405B
            DB3F57D92E38C53B3BA5F0E6FFF9F2F7EEF0FF747ACD090DA80005C00006B70E
            21BE2D3EBD0C187D030454E7E4FFFBFEFFFFFFF8F0E9F0FFFAFFFCF4FEFAFAFA
            FBFFF7F6FEFFECEDFF12127C0004997582FF5573FF1A3CCC263AE5000AA04F5F
            B2DFEAFFEDEDFDFBF6FF6C67AC5958B49BA4FF868FF78988FF4D4AADBEBDE5ED
            EEFCE9ECFBCDCEFF3131A55056E54857DB495BD84A52CD42429CF0E7FFFFFBFF
            E9EBFF6269BE070AA80003BE0004B51C32CE3243C20D197E040555ECE9FFFBFE
            FFFFFFF8EFE8EFFFFAFFFFFBFFFBF7FCF6FEF4F2FBFFE9EBFF0E0D750B0AA07E
            88FF6C86FF2744CB1628C32E3AC2152270CFD7FFE8E8FFE8E3FEBCB8EC48488E
            9DA2F7989BFF9186FF40329BBDB3DDFBF3FEEEE7F6D8D1FF2A1F995D57EC6A72
            F55761D6171E858788D2FDF6FFE2DCEFE5E8FF29308D0004A30007C20008BC0C
            1FBC2938B7040F71050551F3F2FFF1F4F9FFFFF9FFFDFFFFFAFFF6EDFAFEFAFF
            F6FCF7F6FDFFDFE3FF1B1B79110C9D7074FF7F92FF3048C02433B78C96FF5059
            A2ACB3DEF8F5FFEAE6FFE5E4FF5657896369B29C9AFEBCACFF5D49B4C3B4E0FE
            F1FFF3E7F9E4D6FF3927A27366F86B6DEA3B42A9343889ECEDFFFBF5FFE7E2FF
            C9CBFF252B961C21C40811CC0311C52230D04B57D5000051141657EEEEFFFDFD
            FFFFFFFBFCF6FBFFF9FFFFFBFFF3EFF5FBFFFEEFF7FEEFF5FFD9DBFF18119767
            64F5909EFF5668CD707DE7CDD8FFB1BAFA484C7CE7E4FFF3EEFFF8F9FFC2C7E8
            4F54916869C1A599FF5746A7B9ABD5FFF8FFFEF2FFDDCEFF4735A67D70F44B4C
            BC3E429B9C9EDEF1F1FFE2DEFFF3F0FF6163B73136B12E34D91018D0000ABF37
            40E31E25A424298403043CF8F6FFF9F9FFFCFAF9FFFEFFFFFCFFEAE6ECFFFEFF
            FDFFFFF0F7FAEFF7FFE6E9FF180F835A52D49CA3FF96A3F1C4D1FFE1ECFFD6DD
            FF494B7B908EB8F8F6FFE5EAF9F1FAFFA5B2E04B54988684DD504895B7B0D3FF
            F9FFFFF8FFCDC3EE4138926C68D23235909EA4EBE7E8FFE1E2FFF3F2FFC2C2FF
            16177F3B3EC92E35DE2A32E91A20D74247EA282BAB0D0E66DDDEFFEEEEFFFFFC
            FFFFFEFFFFFFFFFFFFFEFFFEFFFFFFFFE6E9E7FAFFFFF4FFFFEFF5FF22167A17
            0A7EA3A7F6CFDBFFE4F2FFE8F2FFD8DDFFC9CBFB504D7ABFC0E2EBEFFFEAF5FF
            E4F4FF414F8A858CD56062A2C3BFE2F6EFFFF8EFFFD4CDF845438F6163BB2930
            7FE6ECFFF1F1FFF4F2FFCDD0FF5155A42F30AA4F51EB2A31DC3C43F8383CF342
            42E8201F9D010051F4F5FFFBFCFFFCF8FFF7F3F8FFFFFEF9FDF7FFFFFCDBDCD8
            FDFFFCF4FBF4DDECDEF3FBFF30257B13056B8E8DCFEAF4FFE6F5FFE7F3FFDADD
            FFF1F1FF6C6B975D5E84E0E1FFDBE3FFAFBEEF364883909FDE555D98B1B0DCF5
            EEFFF2EAFFD9D4FF43488D747CC9444C99A2A7ECDBD5FFE0D9FF585A9A232883
            5656E05151F72C33E0353CEF3335ED2D2BD103007D070453F3F4FFE4E6E7FFFB
            FFFDF8FFF8FCF7FBFFF8FFFFFCFFFFFBEBEFE4FAFFF4F8FFF4F3FDFFE7E0FF23
            187547468AE6EDFFEBF9FFEAF9FFF1F8FFE9ECFFF6F5FF9090B436355FA1A5D5
            3F4A7E6C7BB3D9E6FF5E67999B9CC8F6F2FFF4EFFFC8C6FA303677929BE4747C
            C9212573A09BE64C49912B347D6571D16166F14D4DF34E52FF4D4DFD3D39EC2D
            26C30D0679EDEAFFF3F5FFFDFFFCFEFCFFFFFDFFFDFFFEF6FDF6FFF8FCFFFFFC
            FFFFF0FBFFEEEFFEF0EFFCFFCECEFF24217D1011699096D9E0EDFFEDFEFFF1FF
            FEEEF6F5F5F6FFF1EEFFA6A3D17976AE8F91C7CDD1FFCACDFA72749C9FA1C4F4
            F4FFF2F2FFC9CBFB3639769197E0979BEE6467C2403F9F4D54B17D94E45A73CF
            6976F65B5DF75C56FF4A40EE5646EB0700831C1570E4E6FFF6FDFFEAF3E9FBFF
            FBFAFDFBFCFCFFFBFAFFFFFCFFFFFEFBFFFFF2FDFFF1F0FEF3EFFCFFEAF1FFD5
            D8FF1A1B71171B6AD1D8FFE1EAFFF4FDFFF6FEFDEEF0F0F6F6FFF2EEFFDDDAFF
            D5D2FFDFDEFFDAD9FB6A6B87AEAFCBECEFFFEBEDFFD2D5FF2B2D679D9FE6999A
            F0888AE98484EE858EF65D76D2627CE05260DE6264F8665DFF695AFC2414A20D
            0171D8D5FFF3F6FFF6FFFFF7FFF4FBFFF7FAFFFAFDFCFFFAF7FFFFFEFCFFFDF8
            FBF8F3FDFFFBF3FDF7DFEBEFEDFBFFEAF5FF2A2E6F0E0C5E4D449FDCD2FFE3DD
            FFF6F5FFF8FFFFF8FFFEE8EBFFF2F4FFE8E9FFE6E8FFE6E7FB5E6072B2B4C6F1
            F4FFF4F7FFDFE1FF34366CB0B1F59E9FF09B9BF99D9CFF7C81EE6B7AE87B8BFF
            646DF36969F95C53EA3E32C0080072221A71EFF1FFF1F8FFE5F0E8FAFFF2FAFF
            F4EEF2ECFFFBFFFFF9FFFFFCF3FFFCF7FAF5F7FFFEFFFAFFFFF6FFFEEFFDFBE4
            F2FEE0E5FF251F6C1908778974E8D3C3FFE8E2FFF3FCFFECFBF3F2FBFFF2F8FF
            E3E6F4E7EAF8E5E5F56E6D81ADACC6F6F5FFF6F2FFC1BEF03E3B799E9BE39694
            E69D9BF4A6A6FF8588F18188FF686EF57779FF6D6AF54E48CB0E077A130F68DA
            DAFFE8ECFFF1FBFBFAFFF5FBFFF1F9FFF1EFF0ECFFFCFFF5F0FFFAFAECFFFFF9
            FFFCFFFBF7FFFDFEFFFBFFFCFAFFF5F6FFFCF2F5FFF3EAFF0F006A250B8D806B
            DFDBD1FFD3DCFDEFFFFFF4FFF9F2FEF2ECF2F1F3F5FFE1DEF78D86AB635A8DA5
            9AD9BCAEF6887BCB796CC0B9B0FFB9B5FFA4A2F49B9CEC888AE99390FF807DFF
            6F6AF56662DF070471000054ECEEFFF1F6FFF4FFFFF8FFF8FBFFF2FEFFF0FFFF
            F7FFFFFCFFFCFFFCF5FFFFFFF7FFFFFBFFFDFFFBF5FFFAF6FBF5F6F2EEF3E4FD
            FFFBF7F7FFE9E0FFF4E0FF13006E2211805F56B1D0D7FFDBE8FFF2FFFFF6FFFC
            F8FFFFF6F9FFE8E7FFCAC5EC625B8E5D55924C41873F3581877ECFB5ADFFC1BD
            FFA9A7F9A3A4F5A5A4FF8B84FF9189FF4D46C500006218196AE9EBFFE6EBFFF1
            FAFFF5FFF8F9FFF3EEF4E1F4F7E7FFFFF9FFFEFDFBF4FBFFFBFFFDFFFCEFF2F0
            FFFFFFFFFFFFFFFEFFFFFFFEFFFFFEFFFDFFFDF7FFFBF5FFE3D9FFF3EAFF2923
            701917692125749194D8DCDFFFF0F2FFF3F6FFE9EDFFEEF3FFF4F9FFD4DBEFC8
            CFE8D6DBFCCDD3FED7DAFFCACBFFB8B6FFA5A2FEA09AFF928BFA7368E609007B
            28218A131262E7EAFFF1F6FFF4FDFFF8FFFEFBFFF9FFFFF7FFFFF8FFFFFBFFFF
            FEFBF6F7F5EFF4FFFDFFFBFDFFF9FCFFFFFFFCFDFDF7F5F1ECFFFEFEFFF8FEFF
            F3FFFFF9FFFBF5FFFAFAFFEFF2FFEDF2FF1F236413146A1B1874574FA28F86CF
            C4BDFFDFDCFFECECFFD3D9FEE9F1FFE3EDFFC6CFF4DAE2FFBDC2FFBEBEFFAEAA
            FFA29BFF7E73ED3E33AD160D7C1A13741C1864DCDEFFF1F6FFF4FCFFF4FCFBFB
            FFFBFDFFF9F6F5F1FFFEFFFFFDFFFBF5FAFFFEFFFFFEFFFFFBFAFAF7FFFBFBFF
            FFFFFCFFFFF5FFFFF5FFFFF9FFFBFFFFF9FFFFF6FFFFFDFFFCFFFAF4FFFAE8F6
            FFEAF5FFCACDFF241D8526128D1800802612896554C37E73D49F96F0C5C2FFAF
            AFFDADACFCBAB9FF8D8BEB6E68D55A4ECC1C0D9709008B18078C28227BD1D1FF
            EFF2FFECF0FFF2FBFFF7FFFFFBFFFEFBFCFAFFFDFFFFFBFFFFFAFFFFFAFFFFFB
            FFFFFDFFFFFFFCFFFFF9FAF4FFFBF8FFFDFFFFFFFFF5FFFFF1FFFFF4FFFEFEFF
            FBFFFFFCFFFFFEFDFFFFF5FAFFF5EDFBF9EDFBFFEAF1FFD9D6FFEDDDFF1B077E
            2411851B0B7A2F238D0F046A271F831C18781B17761F1D7D030063242087120C
            791C148611087CE8E1FFDCDEFFF3F7FFF4FBFFF0F8FFF8FFFEFBFFFCFEFFFDFF
            FEFFFFFBFFFFF9FFFFF7FFFFF8FFFFFAFFFFFDFFFFFFFBFFFFF8FBF3FFFBF6FF
            FDFDFFFFFFF8FFFFF1FFFFF0FFFFF4FFFFF9FFFEFEFFFCFBF7F8F4FBFFFCF1FC
            FADFEBEFEFFCFFEFF9FFE5EBFFE9ECFFEFF0FFE0E0FFDDDBFF1A17661C196E19
            186E18186C191B69151B5ED7E0FFDAE7FFE6F7FFE3F4FFE2F2FFF3FEFFF6FFFF
            E4EDEAF5FDF6FBFFF9F7F9F3FEFCFCFFFBFFFFF9FFFFF7FFFFF6FFFFF7FFFFFA
            FFFFFDFFFFFFFBFFFFF8FDF5FFFDF7FFFFFCFFFFFFFBFFFFF4FFFFF1FFFFF1FF
            FFF5FFFBF6FFFAFBF8F4F9FDFEFFFAFFFFF8FFFCF2FFF5E9F8F0F4FFFFE8F3F7
            F3FCFFF1F8FFEFF4FFEDF1FFECEEFFE5E9FFE3E7FFEAF1FFEAF6FFECFAFFECFF
            FFEDFFFCE2FCEAF1FFF2EBF9EDF6FFF5FAFFF8FBFFF9FFFFF9F8F7F3FFFAFCFE
            F6FFFFF9FFFFF9FFFFF9FFFFFAFFFFFCFFFFFEFFFFFFFCFDFFF9FFFBFFFFFCFF
            FFFDFFFFFEFFFFFFFCFFFFF8FFFFF5FFFFF5F8F8F2FFFFFFFFFBFFFBF7FFFFFE
            FFFDFFFBFDFFF1FDFFF1FBFFFBF6FBFAF8FDFFF8FEFFE5EBF6F4FCFFE5EDFEF1
            FBFFF1FCFFE2EEF8F1FFFFE2F0EFF4FFFCF3FFF5F1FFF0F8FFF5FAFFF8FBFFF9
            FBFFFBFDFFFCFBFCFAFFFFFFFFFEFFFAF4F9FFFDFFFFFDFFFFFDFFFFFEFFFFFE
            FFFDFFFFFBFFFFFBFFFEFFFFF8FFFFFBFFFEFFFFFDFFFFFCFFFDFEFFFDFFFFFD
            FFFCFFFFFCFFFFFFFFFDFFFBF7FDFCF7F9F9F6F1F2F4E1FFFFF1F5F4EAFFFFFC
            EEEDE9F6FAF5FBFFFCF0F7F2F0FAF4F8FFFCF5FFFBECF8F2ECF7EFFAFFFBF3FB
            F1EAEFE6FFFFF8F1F4EBFDFFFCEAEFEDF3F5F6F8F7FBFBF7FDFFFDFFFFFEFFFF
            FFFEFFFFFBFFFFF8FFFFF8FFFFF8FDFFFBFBFFFEFAFFFFFAFFFFFFFFE9FFFFEE
            FFFFFBFFFCFFFDF7FFFBF6FFFBF8FFFBFBFFFDFEFFEFF2F0FFFFFBFFFFF9FFFF
            FBFFFFFBFFFFFCFFFFFBFFFFF8EAE3DAFFFFF8FFFEF6EFEDE5FFFFFBFFFFFCF9
            FDF8F9FCFAFDFFFEFFFFFFEAE8E8FFFCFDFFFEFFE9E1E2FFFDFFFFFDFFFDFCFF
            FFFAFFFFFAFFFFFAFFFFFBFFF5F0F1FFFFF9FFFFF2FFFFEEFFFFEEFFFFF1FBFF
            F7FAFFFCFAFEFFF8FDFFFFFFE0FFFFE7FFFFF8FDFCFFFDF5FFFBF3FFFAF4FFFA
            F7FFFBFDFFFBFFFAFFFFF7FFFFF1F7F2E9FFFFFCFFF8FCFFF6F8FFFEF8FFFFF5
            FDF3E9FFFFF5FFFFF9FFFFF9FFFFFCFAF9F5FDFBFBFFFEFEFEF9FBFFFDFFFFFC
            FFFFF3F9FFFBFFFFF7FFFAF3FFF9F6FFFFF9FFF0EAFDFFF4FFFFFBFFFFFCFDFF
            FFF7FFFFEEFFFFEAFFFFE9FDFFEDFBFFF4FAFFFCF8FEFFF8FBFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = bClick
        end
        object chkref: TCheckBox
          Left = 22
          Top = 11
          Width = 129
          Height = 17
          Caption = 'Detalle Ref. cruzadas'
          TabOrder = 0
          Visible = False
        end
        object btodas: TBitBtn
          Left = 412
          Top = 2
          Width = 99
          Height = 25
          Caption = 'Todas Listas Unix'
          TabOrder = 1
          Visible = False
        end
        object bunix: TBitBtn
          Left = 519
          Top = 2
          Width = 99
          Height = 25
          Caption = 'Listas Unix'
          TabOrder = 2
          Visible = False
        end
        object bexportatodo: TBitBtn
          Left = 297
          Top = 2
          Width = 99
          Height = 25
          Caption = 'Exportar Todo'
          TabOrder = 3
          Visible = False
        end
        object bexportar: TBitBtn
          Left = 193
          Top = 3
          Width = 80
          Height = 25
          Caption = 'Exportar '
          TabOrder = 4
          Visible = False
          OnClick = bexportarClick
        end
      end
      object Panel3: TPanel
        Left = 615
        Top = 0
        Width = 128
        Height = 470
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object dgt: TDrawGrid
          Left = 0
          Top = 0
          Width = 128
          Height = 470
          Align = alClient
          Color = 16579836
          ColCount = 3
          Ctl3D = False
          DefaultColWidth = 40
          DefaultRowHeight = 20
          DefaultDrawing = False
          FixedColor = 16765864
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          ParentCtl3D = False
          TabOrder = 0
          OnDrawCell = dgtDrawCell
        end
      end
      object web: TWebBrowser
        Left = 175
        Top = 0
        Width = 440
        Height = 470
        Align = alClient
        TabOrder = 4
        OnProgressChange = webProgressChange
        OnBeforeNavigate2 = webBeforeNavigate2
        OnDocumentComplete = webDocumentComplete
        ControlData = {
          4C0000007A2D0000933000000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E12620C000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 420
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Left = 372
    Top = 72
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 328
    Top = 72
  end
  object mnuPrincipal: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Men'#250' Principal'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 751
        FloatTop = 304
        FloatClientWidth = 91
        FloatClientHeight = 174
        ItemLinks = <
          item
            Item = mnuImprime
            Visible = True
          end
          item
            BeginGroup = True
            Item = mnuExporta
            Visible = True
          end>
        Name = 'Menu'
        OneOnRow = True
        Row = 0
        ShowMark = False
        SizeGrip = False
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.Strings = (
      'Conexion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Images = dm.ImageList1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 376
    Top = 120
    DockControlHeights = (
      0
      0
      0
      26)
    object mnuExporta: TdxBarButton
      Caption = 'Exportar a Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 24
      PaintStyle = psCaptionGlyph
      ShortCut = 16453
      OnClick = mnuExportaClick
    end
    object mnuImprime: TdxBarButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 27
      PaintStyle = psCaptionGlyph
      ShortCut = 16464
      OnClick = mnuImprimeClick
    end
  end
end
object frm_Mandala: Tfrm_Mandala
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1072#1085#1076#1072#1083#1072
  ClientHeight = 269
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p_l: TPanel
    Left = 0
    Top = 10
    Width = 5
    Height = 254
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 210
  end
  object p_r: TPanel
    Left = 457
    Top = 10
    Width = 5
    Height = 254
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 210
  end
  object p_b: TPanel
    Left = 0
    Top = 264
    Width = 462
    Height = 5
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 220
  end
  object p_t: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 10
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
  end
  object p_c: TPanel
    Left = 5
    Top = 10
    Width = 452
    Height = 254
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitLeft = -15
    ExplicitTop = 4
    object GroupBox1: TGroupBox
      Left = 0
      Top = 26
      Width = 452
      Height = 119
      Align = alTop
      Caption = '  '#1052#1072#1085#1076#1072#1083#1072' '#1083#1080#1095#1085#1086#1089#1090#1080'  '
      TabOrder = 0
      object p_ll: TPanel
        Left = 2
        Top = 18
        Width = 5
        Height = 94
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 448
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 445
        Top = 18
        Width = 5
        Height = 94
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 2
        Top = 112
        Width = 448
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
      end
      object Panel5: TPanel
        Left = 7
        Top = 18
        Width = 438
        Height = 94
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
        inline fr_I: Tfr_MyEdit
          Left = 0
          Top = 0
          Width = 438
          Height = 18
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 438
          inherited Panel35: TPanel
            Width = 438
            ExplicitWidth = 438
            inherited p_comment: TPanel
              Width = 211
              ExplicitWidth = 211
              inherited p_text: TPanel
                Width = 206
                ExplicitWidth = 206
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 41
          Width = 438
          Height = 5
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
        end
        object Panel7: TPanel
          Left = 0
          Top = 18
          Width = 438
          Height = 5
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
        end
        inline fr_O: Tfr_MyEdit
          Left = 0
          Top = 23
          Width = 438
          Height = 18
          Align = alTop
          TabOrder = 3
          ExplicitTop = 23
          ExplicitWidth = 438
          inherited Panel35: TPanel
            Width = 438
            ExplicitWidth = 438
            inherited p_comment: TPanel
              Width = 211
              ExplicitWidth = 211
              inherited p_text: TPanel
                Width = 206
                ExplicitWidth = 206
              end
            end
          end
        end
        inline fr_F: Tfr_MyEdit
          Left = 0
          Top = 46
          Width = 438
          Height = 18
          Align = alTop
          TabOrder = 4
          ExplicitTop = 46
          ExplicitWidth = 438
          inherited Panel35: TPanel
            Width = 438
            ExplicitWidth = 438
            inherited p_comment: TPanel
              Width = 211
              ExplicitWidth = 211
              inherited p_text: TPanel
                Width = 206
                ExplicitWidth = 206
              end
            end
          end
        end
        object p_person: TPanel
          Left = 0
          Top = 78
          Width = 438
          Height = 16
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 5
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 89
            Height = 16
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            Caption = #1063#1080#1089#1083#1086' '#1083#1080#1095#1085#1086#1089#1090#1080': '
            TabOrder = 0
          end
          object p_NumPerson: TPanel
            Left = 89
            Top = 0
            Width = 349
            Height = 16
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
            TabOrder = 1
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 233
      Width = 452
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 189
      object btn_Cancel: TButton
        Left = 377
        Top = 0
        Width = 75
        Height = 21
        Align = alRight
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 0
        OnClick = btn_CancelClick
      end
      object Panel9: TPanel
        Left = 372
        Top = 0
        Width = 5
        Height = 21
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 0
      Width = 452
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object btn_name: TSpeedButton
        Left = 431
        Top = 0
        Width = 21
        Height = 21
        Hint = #1042#1085#1077#1089#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        Align = alRight
        Flat = True
        Glyph.Data = {
          C20D0000424DC20D000000000000360000002800000044000000110000000100
          1800000000008C0D0000120B0000120B00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0ACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACC0C0C0C0C0C0C0C0C0CD8A63C264
          41C26340C26240C1613FC05F3FBF5D3DBF5C3CBE5A3BBE593ABD583AC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0CD8A63C26441C26340C26240C1613FC05F3F
          BF5D3DBF5C3CBE5A3BBE593ABD583AC0C0C0C0C0C0C0C0C0ACACACACACACACAC
          ACC38059B85A37B85936B85836B75735B65535B55333B55232B45031B44F30B3
          4E30ACACACACACACACACACACACACACACACACACACC38059B85A37B85936B85836
          B75735B65535B55333B55232B45031B44F30B34E30ACACACACACACACACACC0C0
          C0C0C0C0CE895DD69A6FE5A570E4A16AFDF0E5EED0A1ECC08EF8E2CEE1925FE1
          925FDE8754DE8754BD5739C0C0C0C0C0C0C0C0C0C0C0C0CE895DD69A6FE5A570
          E4A16AFDF0E5EED0A1ECC08EF8E2CEE1925FE1925FDE8754DE8754BD5739C0C0
          C0C0C0C0ACACACACACACC47F53CC9065DB9B66DA9760F3E6DBE4C697E2B684EE
          D8C4D78855D78855D47D4AD47D4AB34D2FACACACACACACACACACACACACC47F53
          CC9065DB9B66DA9760F3E6DBE4C697E2B684EED8C4D78855D78855D47D4AD47D
          4AB34D2FACACACACACACC0C0C0C0C0C0DAA070F1CA99EAB987E8B482FDF0E5E5
          A672ECC08EF6DCC8DE8754DE8754E1925FE18F5CBE593BC0C0C0C0C0C0C0C0C0
          C0C0C0DAA070F1CA99EAB987E8B482FDF0E5E5A672ECC08EF6DCC8DE8754DE87
          54E1925FE18F5CBE593BC0C0C0C0C0C0ACACACACACACD09666E7C08FE0AF7DDE
          AA78F3E6DBDB9C68E2B684ECD2BED47D4AD47D4AD78855D78552B44F31ACACAC
          ACACACACACACACACACD09666E7C08FE0AF7DDEAA78F3E6DBDB9C68E2B684ECD2
          BED47D4AD47D4AD78855D78552B44F31ACACACACACACC0C0C0C0C0C0DAA070EE
          CEA1EBBD8CEAB887F4E0B8FDF0E5FDF0E5FDF0E5DA7C4ADA7C4AE29661E1915F
          BE5A3CC0C0C0C0C0C0C0C0C0C0C0C0DAA070EECEA1EBBD8CEAB887F4E0B8FDF0
          E5FDF0E5FDF0E5DA7C4ADA7C4AE29661E1915FBE5A3CC0C0C0C0C0C0ACACACAC
          ACACD09666E4C497E1B382E0AE7DEAD6AEF3E6DBF3E6DBF3E6DBD07240D07240
          D88C57D78755B45032ACACACACACACACACACACACACD09666E4C497E1B382E0AE
          7DEAD6AEF3E6DBF3E6DBF3E6DBD07240D07240D88C57D78755B45032ACACACAC
          ACACC0C0C0C0C0C0DBA070F2D5A8ECC08EEBBC8BEAB886E8B381E7AE7CE5A472
          E5A06DE49C69E49864E19460BF5C3DC0C0C0C0C0C0C0C0C0C0C0C0DBA070F2D5
          A8ECC08EEBBC8BEAB886E8B381E7AE7CE5A472E5A06DE49C69E49864E19460BF
          5C3DC0C0C0C0C0C0ACACACACACACD19666E8CB9EE2B684E1B281E0AE7CDEA977
          DDA472DB9A68DB9663DA925FDA8E5AD78A56B55233ACACACACACACACACACACAC
          ACD19666E8CB9EE2B684E1B281E0AE7CDEA977DDA472DB9A68DB9663DA925FDA
          8E5AD78A56B55233ACACACACACACC0C0C0C0C0C0DBA070F1D6ABEBBC8BE8B580
          E6B07BE6AB77E5A571E29B67E19762E0915FE0945FE29863C05E3EC0C0C0C0C0
          C0C0C0C0C0C0C0DBA070F1D6ABEBBC8BE8B580E6B07BE6AB77E5A571E29B67E1
          9762E0915FE0945FE29863C05E3EC0C0C0C0C0C0ACACACACACACD19666E7CCA1
          E1B281DEAB76DCA671DCA16DDB9B67D8915DD78D58D68755D68A55D88E59B654
          34ACACACACACACACACACACACACD19666E7CCA1E1B281DEAB76DCA671DCA16DDB
          9B67D8915DD78D58D68755D68A55D88E59B65434ACACACACACACC0C0C0C0C0C0
          DBA070F4D9B0E7B880F4E1B8FCF7F4FCF6F1FAF3EEFAF1E8F9EEE6EBCCA6E190
          5DE49B67C0603FC0C0C0C0C0C0C0C0C0C0C0C0DBA070F4D9B0E7B880F4E1B8FC
          F7F4FCF6F1FAF3EEFAF1E8F9EEE6EBCCA6E1905DE49B67C0603FC0C0C0C0C0C0
          ACACACACACACD19666EACFA6DDAE76EAD7AEF2EDEAF2ECE7F0E9E4F0E7DEEFE4
          DCE1C29CD78653DA915DB65635ACACACACACACACACACACACACD19666EACFA6DD
          AE76EAD7AEF2EDEAF2ECE7F0E9E4F0E7DEEFE4DCE1C29CD78653DA915DB65635
          ACACACACACACC0C0C0C0C0C0DBA070F2DFB3E8BC82FDFDFEFCF8F6FCF7F4FAF6
          F1F9F2EAFAF0E7F9EEE5E19560E59E6AC16140C0C0C0C0C0C0C0C0C0C0C0C0DB
          A070F2DFB3E8BC82FDFDFEFCF8F6FCF7F4FAF6F1F9F2EAFAF0E7F9EEE5E19560
          E59E6AC16140C0C0C0C0C0C0ACACACACACACD19666E8D5A9DEB278F3F3F4F2EE
          ECF2EDEAF0ECE7EFE8E0F0E6DDEFE4DBD78B56DB9460B75736ACACACACACACAC
          ACACACACACD19666E8D5A9DEB278F3F3F4F2EEECF2EDEAF0ECE7EFE8E0F0E6DD
          EFE4DBD78B56DB9460B75736ACACACACACACC0C0C0C0C0C0DBA070F2DFB3E9BF
          86FDFDFEFDF9F8FCF8F6FCF7F2FAF2ECFAF1E9FAEEE7E29864E6A26FC26340C0
          C0C0C0C0C0C0C0C0C0C0C0DBA070F2DFB3E9BF86FDFDFEFDF9F8FCF8F6FCF7F2
          FAF2ECFAF1E9FAEEE7E29864E6A26FC26340C0C0C0C0C0C0ACACACACACACD196
          66E8D5A9DFB57CF3F3F4F3EFEEF2EEECF2EDE8F0E8E2F0E7DFF0E4DDD88E5ADC
          9865B85936ACACACACACACACACACACACACD19666E8D5A9DFB57CF3F3F4F3EFEE
          F2EEECF2EDE8F0E8E2F0E7DFF0E4DDD88E5ADC9865B85936ACACACACACACC0C0
          C0C0C0C0DBA070F2DFB7EBC088FDFDFEFCFAFAFDF9F8FCF7F4FAF4F0FAF2ECF9
          F1E9E59C68E7A573C36442C0C0C0C0C0C0C0C0C0C0C0C0DBA070F2DFB7EBC088
          FDFDFEFCFAFAFDF9F8FCF7F4FAF4F0FAF2ECF9F1E9E59C68E7A573C36442C0C0
          C0C0C0C0ACACACACACACD19666E8D5ADE1B67EF3F3F4F2F0F0F3EFEEF2EDEAF0
          EAE6F0E8E2EFE7DFDB925EDD9B69B95A38ACACACACACACACACACACACACD19666
          E8D5ADE1B67EF3F3F4F2F0F0F3EFEEF2EDEAF0EAE6F0E8E2EFE7DFDB925EDD9B
          69B95A38ACACACACACACC0C0C0C0C0C0DBA070F4E1B8EBC38BFDFDFEFCFCFCFC
          FAF8FCF9F7FCF6F1FAF3EEFAF2ECE5A16CE7A976C36542C0C0C0C0C0C0C0C0C0
          C0C0C0DBA070F4E1B8EBC38BFDFDFEFCFCFCFCFAF8FCF9F7FCF6F1FAF3EEFAF2
          ECE5A16CE7A976C36542C0C0C0C0C0C0ACACACACACACD19666EAD7AEE1B981F3
          F3F4F2F2F2F2F0EEF2EFEDF2ECE7F0E9E4F0E8E2DB9762DD9F6CB95B38ACACAC
          ACACACACACACACACACD19666EAD7AEE1B981F3F3F4F2F2F2F2F0EEF2EFEDF2EC
          E7F0E9E4F0E8E2DB9762DD9F6CB95B38ACACACACACACC0C0C0C0C0C0DBA070E9
          C6A1F4D9B0FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEEBB887EBB887
          C36542C0C0C0C0C0C0C0C0C0C0C0C0DBA070E9C6A1F4D9B0FDFDFEFDFDFEFDFD
          FEFDFDFEFDFDFEFDFDFEFDFDFEEBB887EBB887C36542C0C0C0C0C0C0ACACACAC
          ACACD19666DFBC97EACFA6F3F3F4F3F3F4F3F3F4F3F3F4F3F3F4F3F3F4F3F3F4
          E1AE7DE1AE7DB95B38ACACACACACACACACACACACACD19666DFBC97EACFA6F3F3
          F4F3F3F4F3F3F4F3F3F4F3F3F4F3F3F4F3F3F4E1AE7DE1AE7DB95B38ACACACAC
          ACACC0C0C0C0C0C0C0C0C0DBA070DBA070E1B185E1B185E1B185E1B185E1B185
          E1B185E1B185DBA070DCA475C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DBA0
          70DBA070E1B185E1B185E1B185E1B185E1B185E1B185E1B185DBA070DCA475C0
          C0C0C0C0C0C0C0C0ACACACACACACACACACD19666D19666D7A77BD7A77BD7A77B
          D7A77BD7A77BD7A77BD7A77BD19666D29A6BACACACACACACACACACACACACACAC
          ACACACACD19666D19666D7A77BD7A77BD7A77BD7A77BD7A77BD7A77BD7A77BD1
          9666D29A6BACACACACACACACACACC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0ACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACC0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC
          ACACACACACAC}
        NumGlyphs = 4
        ParentShowHint = False
        ShowHint = True
        OnClick = btn_nameClick
        ExplicitLeft = 234
        ExplicitTop = -1
      end
      object cb_ListUser: TComboBox
        Left = 54
        Top = 0
        Width = 377
        Height = 21
        Align = alClient
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
        OnChange = cb_ListUserChange
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 54
        Height = 21
        Align = alLeft
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = #1042#1099#1073#1088#1072#1090#1100': '
        TabOrder = 1
      end
    end
    object Panel12: TPanel
      Left = 0
      Top = 21
      Width = 452
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel13: TPanel
      Left = 0
      Top = 228
      Width = 452
      Height = 5
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 2
      ExplicitTop = 112
      ExplicitWidth = 448
    end
    object Panel14: TPanel
      Left = 0
      Top = 145
      Width = 452
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 2
      ExplicitTop = 112
      ExplicitWidth = 448
    end
    inline fr_Descr: Tfr_MyMemo
      Left = 0
      Top = 150
      Width = 452
      Height = 78
      Align = alClient
      TabOrder = 6
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 452
      ExplicitHeight = 78
      inherited Panel11: TPanel
        Width = 452
        Height = 78
        ExplicitWidth = 452
        ExplicitHeight = 78
        inherited Panel12: TPanel
          Left = 440
          Height = 64
          ExplicitLeft = 440
          ExplicitHeight = 64
        end
        inherited Panel13: TPanel
          Height = 64
          ExplicitHeight = 64
        end
        inherited Panel1: TPanel
          Top = 66
          Width = 448
          ExplicitTop = 66
          ExplicitWidth = 448
        end
        inherited p_memo: TPanel
          Width = 428
          Height = 64
          ExplicitWidth = 428
          ExplicitHeight = 64
          inherited memo: TMemo
            Width = 428
            Height = 44
            ExplicitWidth = 428
            ExplicitHeight = 44
          end
          inherited p_top: TPanel
            Width = 428
            ExplicitWidth = 428
            inherited p_title: TPanel
              Width = 428
              ExplicitWidth = 297
            end
          end
        end
      end
    end
  end
  object XMLDoc: TXMLDocument
    NodeIndentStr = ' '
    Options = [doNodeAutoCreate, doAttrNull, doNamespaceDecl, doAutoSave]
    Left = 420
    Top = 48
    DOMVendorDesc = 'MSXML'
  end
end

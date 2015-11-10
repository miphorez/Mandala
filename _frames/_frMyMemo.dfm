object fr_MyMemo: Tfr_MyMemo
  Left = 0
  Top = 0
  Width = 321
  Height = 68
  TabOrder = 0
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 68
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel12: TPanel
      Left = 309
      Top = 2
      Width = 10
      Height = 54
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel13: TPanel
      Left = 2
      Top = 2
      Width = 10
      Height = 54
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 2
      Top = 56
      Width = 317
      Height = 10
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      TabOrder = 2
    end
    object p_memo: TPanel
      Left = 12
      Top = 2
      Width = 297
      Height = 54
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object memo: TMemo
        Left = 0
        Top = 20
        Width = 297
        Height = 34
        Align = alClient
        TabOrder = 0
        OnClick = memoClick
        OnKeyDown = memoKeyDown
      end
      object p_top: TPanel
        Left = 0
        Top = 0
        Width = 297
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 1
        object p_title: TPanel
          Left = 0
          Top = 0
          Width = 297
          Height = 20
          Align = alClient
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Title:'
          TabOrder = 0
          ExplicitWidth = 277
        end
      end
    end
  end
end

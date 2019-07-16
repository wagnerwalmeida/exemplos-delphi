object DataModulo: TDataModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 232
  Top = 116
  Height = 111
  Width = 250
  object IBDatabase: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AllowStreamedConnected = False
    Left = 24
    Top = 8
  end
  object IBTransaction: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    AutoStopAction = saNone
    Left = 96
    Top = 8
  end
  object IBTable: TIBTable
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'ESTOQUE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_PRODUTOS'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUTOS'
    Left = 160
    Top = 8
    object IBTableCODIGO: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      DisplayFormat = '00'
    end
    object IBTableDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object IBTableVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 9
      Size = 2
    end
    object IBTableESTOQUE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
    end
  end
end

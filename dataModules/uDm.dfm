object Dm: TDm
  Height = 480
  Width = 640
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 200
    Top = 176
    object MemTabletype: TStringField
      FieldName = 'type'
    end
    object MemTablestatus: TStringField
      FieldName = 'status'
    end
    object MemTableuser: TStringField
      FieldName = 'user'
      Size = 0
    end
    object MemTableip: TStringField
      FieldName = 'ip'
    end
    object MemTableldap_code: TStringField
      FieldName = 'ldap_code'
    end
    object MemTableldap_message: TStringField
      FieldName = 'ldap_message'
    end
    object MemTabledate: TStringField
      FieldName = 'date'
    end
  end
end

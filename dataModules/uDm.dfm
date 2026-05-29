object Dm: TDm
  Height = 480
  Width = 640
  object mtb_logs: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'username'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ip'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ldap_code'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ldap_message'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'date'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 64
    Top = 48
    object mtb_logstype: TStringField
      DisplayWidth = 20
      FieldName = 'type'
    end
    object mtb_logsstatus: TStringField
      DisplayWidth = 20
      FieldName = 'status'
    end
    object mtb_logsusername: TStringField
      FieldName = 'username'
    end
    object mtb_logsip: TStringField
      DisplayWidth = 20
      FieldName = 'ip'
    end
    object mtb_logsldap_code: TStringField
      DisplayWidth = 20
      FieldName = 'ldap_code'
    end
    object mtb_logsldap_message: TStringField
      DisplayWidth = 20
      FieldName = 'ldap_message'
    end
    object mtb_logsdate: TStringField
      DisplayWidth = 20
      FieldName = 'date'
    end
  end
  object mtb_usuarios: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 172
    Top = 45
    object mtb_usuariosname: TStringField
      DisplayWidth = 28
      FieldName = 'name'
    end
    object mtb_usuarioslogin: TStringField
      DisplayWidth = 24
      FieldName = 'login'
    end
    object mtb_usuariosemail: TStringField
      DisplayWidth = 71
      FieldName = 'email'
    end
  end
end

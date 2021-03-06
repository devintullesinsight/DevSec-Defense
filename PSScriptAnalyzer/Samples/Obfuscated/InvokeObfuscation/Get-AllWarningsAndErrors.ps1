Param([parameter(Mandatory=${t`RUe})]${S`sA})
#Map Error Levels to Strings
${ERr`Orl`E`VeL}=@{0="Success";1="Warning";2="Error"}

#Get Warnings and Errors
${lOg`VieW`ER} = New-Object Microsoft.Office.Server.Search.Administration.Logviewer ${S`Sa}
${LoG`View`ER}.GetAllStatusMessages() | Where-Object {${_}.ErrorLevel -ne 0} | Sort-Object ErrorLevel | Select-Object Errorid, ErrorMsg, @{Name="ErrorLevel";Expression={${er`RO`Rl`EveL}[${_}.ErrorLevel]}} | Format-Table ErrorID, ErrorMsg -AutoSize -Wrap -GroupBy ErrorLevel

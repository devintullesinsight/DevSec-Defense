#===================================================================
# Database Availability Group - Replication
#===================================================================
#write-Output "..Database Availability Group - Replication"
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010
${srvS`ETTi`NGs} = Get-ADServerSettings
if (${SRv`sE`TtingS}.ViewEntireForest -eq "False")
	{
		Set-ADServerSettings -ViewEntireForest ${t`RUe}
	}
${cLa`ssh`E`ADerrEPl} = "heading1"
${db`RePlicA`TioN} = (Get-MailboxServer | where{${_}.AdminDisplayVersion.Major -ge 14 -AND ${_}.DatabaseAvailabilityGroup -ne ${Nu`ll}} | sort server | Test-ReplicationHealth)
Foreach(${R`epL} in ${d`BrE`plICAT`iON})
 {
              ${SerV`eR} = ${r`ePl}.Server
			  ${cH`Eck} = ${RE`pL}.check
              ${R`eS`uLt} = ${RE`pl}.result
              ${E`Rr} = ${r`EPL}.error
    ${D`eTaIL`Re`PL}+=  "					<tr>"
    ${dEt`AIL`R`ePl}+=  "						<td width='20%'><font color='#0000FF'><b>$($server)</b></font></td>"
    ${detA`I`lrepl}+=  "						<td width='20%'><font color='#0000FF'><b>$($check)</b></font></td>"
	if (${RES`U`lt} -like "Passed")
	{
        ${DE`TaILr`ePL}+=  "					<td width='20%'><font color='#0000FF'><b>$($result)</b></font></td>"
    }
    else
    {
    ${cLaSs`HEAder`Re`pl} = "heading10"
    ${d`EtAilr`ePL}+=  "						<td width='20%'><font color='#FF0000'><b>$($result)</b></font></td>"
	${deTAI`L`REPL}+=  "						<td width='20%'><font color='#FF0000'><b>$($err)</b></font></td>"
	${D`E`Tai`Lrepl}+=  "					</tr>"
	}
}
${RE`P`ORt} += @"
	</TABLE>
	</div>
	</DIV>
    <div class='container'>
        <div class='$($ClassHeaderRepl)'>
            <SPAN class=sectionTitle tabIndex=0>Database Availability Group - Replication Status</SPAN>
            <a class='expando' href='#'></a>
        </div>
        <div class='container'>
            <div class='tableDetail'>
                <table>
	  				<tr>
	  					<th width='20%'><b>Server Name</b></font></th>
						<th width='20%'><b>Check</b></font></th>
	  					<th width='20%'><b>Result</b></font></th>
	  					<th width='20%'><b>Error</b></font></th>							
	  				</tr>
                    $($DetailRepl)
                </table>
            </div>
        </div>
        <div class='filler'></div>
    </div>              
"@

Return ${RE`P`ORT}

 SeT-iteM  ('vAri'+'AbL'+'e:uJWy4') ([typE]("{7}{4}{8}{6}{1}{5}{0}{3}{2}" -F 'eN','.WIndOws','ty','ti','secUrItY.prIn','iD','ipAl','system.','C')  ) ;    set-iTem vArIAble:D9j8U ([TYpe]("{6}{4}{10}{9}{3}{2}{8}{5}{0}{7}{1}" -f'nR','E','tY.PRInC','eCUrI','te','dOWsBUILTI','SYS','Ol','IPAl.Win','s','m.')  ) ;   




.("{5}{3}{4}{1}{2}{0}"-f'a','zed','Dat','L','ocali','Import-') -BindingVariable ("{1}{0}{2}" -f'ag','Mess','es')

if ((.("{1}{0}{2}" -f'Mo','Get-','dule') -Name ("{1}{0}{3}{2}"-f 't','Ac','ectory','iveDir') -ErrorAction ("{3}{0}{2}{4}{1}" -f'il','ontinue','e','S','ntlyC')) -eq ${nu`ll}) {.("{0}{2}{4}{3}{1}"-f'Import','e','-M','ul','od') -Name ("{0}{4}{3}{2}{1}" -f'A','rectory','i','eD','ctiv') -ErrorAction ("{0}{1}" -f'S','top')}

Function test-oSCU`Se`Rp`R`IV`ILEGe
{
	
	${w`INd`O`wsIDeNTiTY} =   (chIlditEm ('vAri'+'AbL'+'e:UJWy4')  ).valUE::GETCuRrEnt()  
	${WiNd`O`wSprIncip`Al} = .("{2}{0}{1}"-f'Ob','ject','New-') -TypeName ("{6}{3}{1}{5}{2}{0}{4}"-f'Windows','.','rincipal.','stem','Principal','Security.P','Sy')(${WiNDowSi`dENT`I`Ty})  
	${aD`MIn`isTrA`T`oR} =   $D9J8u::AdminIstratoR  
	${IS`eLev`AtEd} = ${wi`NDows`pri`Nci`PAl}.iSInROLE(${adM`inIsTR`ATOr})
	${IsDO`m`AiN`A`DMIN} = ${W`In`d`o`WSpRiNcIp`AL}.ISinRoLE(("{1}{2}{3}{0}{4}" -f ' ','Do','m','ain','Admins'))
	if (${iSeLE`V`AtEd} -and ${IS`doMA`INa`DMIN}) {
		return ${T`RUE}
	} else {
		return ${FA`LSe}
	}
}

Function T`est-Os`CiswRit`ABle`DC
{
	
	Param
	(
		[string]${coM`PUT`ErNaME}=${ENv`:co`m`puteRna`ME}
	)
	${d`OmaI`NcoN`T`Rol`lER} = .("{2}{0}{4}{1}{3}"-f '-ADDo','olle','Get','r','mainContr') -Filter {.("{1}{0}"-f 'me','na') -eq ${C`o`MpuT`ERNA`me}}
	if (${do`MAIncont`R`Ol`lEr} -ne ${nU`LL}) {
		${is`wr`It`ABledC} = -not ${Doma`I`Nc`ontr`oLleR}.iSREADoNLy
		return ${Is`WRiT`AbL`edC}
	} else {
		${er`RMSg} = ${m`e`s`sagEs}.CANnOTFiNdSPeCifiEDDC -replace ("{3}{1}{4}{2}{0}"-f'1','ho','r0','Place','lde'),${Com`P`UTern`AmE}
		throw ${errm`Sg}
	}
}

Function Inv`O`KE`-O`SCROD`CpW`DCac`HEPRep`OPulA`TiON
{
	
	[CmdletBinding()]
	Param
	(
		[Parameter(maNDAtory=${tR`Ue},PoSITiOn=0)]
		[string]${gR`O`Up`NAmE},
		[Parameter(ManDaTorY=${Tr`UE},POsition=1)]
		[string]${rODC`Na`ME},
		[Parameter(maNdaTOry=${tr`UE},PosITiOn=2)]
		[string]${wRitA`Bl`E`DCn`AME},
		[Parameter(maNDaTorY=${t`Rue},PoSItiOn=3)]
		[string]${log`FILE}
	)
	Begin {
		
		${taRGet`G`RouP} = .("{1}{2}{0}" -f'p','Get','-ADGrou') -Filter {&("{2}{0}{1}"-f 'untNam','e','sAMAcco') -eq ${Gr`O`upn`Ame}}
		if (${ta`RG`EtgroUP} -eq ${n`ulL}) {
			${e`Rrm`SG} = ${MesSag`ES}."iNVA`l`IdgroUPN`Ame" -replace ("{0}{1}{3}{2}"-f 'Place','holde','1','r0'),${gRO`U`PnA`Me}
			throw ${E`RrM`SG}
		}
		
		if (.("{2}{3}{0}{4}{1}"-f 'bl','DC','Test-OS','CIsWrita','e') -ComputerName ${r`Odc`Na`mE}) {
			${err`MsG} = ${ME`sS`Ages}."rO`d`cTeS`Tfa`iL`EDMSG" -replace ("{0}{2}{1}{4}{3}"-f 'P','ce','la','1','holder0'),${rOD`C`NaMe}
			throw ${E`R`RmSg}
		}
		
		if (-not (&("{0}{2}{6}{5}{1}{3}{4}" -f 'T','ritab','e','leD','C','SCIsW','st-O') -ComputerName ${WRItABlE`d`c`NamE})) {
			${ERrM`Sg} = ${Me`S`SAGes}."w`RITa`BlER`EmOT`E`dCteStFAiledmSG" -replace ("{2}{0}{3}{1}"-f'aceholder','1','Pl','0'),${w`RITA`B`LED`CnaMe}
			throw ${eR`R`msG}
		}
		
		if (-not (.("{2}{0}{1}"-f 'est-P','ath','T') -Path ${lo`GfI`LE} -PathType ("{0}{1}" -f 'L','eaf'))) {
			throw $(${mes`SAg`Es}."iNvAlIDl`O`G`Fi`LeN`AmE")
		}
	}
	Process {
		
		${O`BJEct`Dns} = @()
		${GR`oU`pmem`BERS}  = &("{1}{3}{2}{0}"-f 'p','Ge','DGrou','t-A') -Filter {.("{2}{4}{3}{1}{0}"-f'Name','count','sA','Ac','M') -eq ${G`RoUP`N`AmE}} | .("{0}{3}{1}{2}" -f 'Get-ADGr','b','er','oupMem') -Recursive
		foreach (${g`RoupmE`MbER} in ${G`RoupM`EMbe`Rs})	{
			${oBjEC`TD`NS} += ${GRoupm`eM`BER}."d`ISTIn`guiSh`EDnAME"
		}
		
		foreach (${Ob`JeC`TDn} in ${o`BJE`CtdNs}) {
			[string]${rET`URn`mE`sSa`ge} = .("{0}{3}{2}{1}"-f 'Inv','ion','-Express','oke') -Command ('r'+'epadmin '+'/rodcpwd'+'rep'+'l '+"$RODCName "+"$WritableDCName "+"`"$objectDN`"")
			&("{0}{2}{1}"-f 'Ou','e','t-Fil') -InputObject ${ret`urn`m`ESSAGE} -FilePath ${lOgf`ILE} -Append -Encoding ("{1}{0}" -f'8','UTF')
			if (${RE`T`UR`NMess`AGE} -notlike ("{0}{1}{3}{2}"-f'*Succe','ss','*','fully')) {
				.("{0}{2}{1}" -f'Wr','e-Host','it') ${RE`T`urNmeSsA`ge} -ForegroundColor ("{1}{0}" -f'ed','R')
			} else {
				.("{2}{1}{0}"-f'st','-Ho','Write') ${rETuRn`M`e`Ss`AGe} -ForegroundColor ("{1}{0}" -f 'en','Gre')
			}
		}
	}
}


if (-not (&("{1}{3}{0}{2}"-f'serPr','Test-OSC','ivilege','U'))) {
	throw $(${MES`s`AGEs}."p`R`IVILeg`ET`e`stfa`ilEDMSg")
}

if (-not (&("{3}{0}{5}{1}{6}{2}{4}"-f 'O','C','bl','Test-','eDC','S','IsWrita'))) {
	throw $(${M`Es`s`AGeS}."WRita`B`l`e`LOcaldCte`ST`FA`iledmsG")
}

if (${aR`gs}[0] -match (("{0}{2}{3}{1}" -f '7','?','VB/7','VB?tlD-7VB'))."ReplA`cE"(([chaR]116+[chaR]108+[chaR]68),[STRiNG][chaR]124)."rEpla`ce"(([chaR]55+[chaR]86+[chaR]66),'\')) {
	.("{1}{0}{2}" -f'ri','W','te-Host') ${M`eS`SAGes}."S`CriPt`US`AgE" -ForegroundColor ("{0}{1}"-f 'G','reen')
} elseif (${AR`gS}."co`unt" -eq 4) {
	&("{7}{4}{2}{5}{3}{6}{0}{1}" -f'Prepopula','tion','SCRODC','Cac','O','Pwd','he','Invoke-') -GroupName ${A`Rgs}[0] -RODCName ${A`RgS}[1] -WritableDCName ${Ar`Gs}[2] -LogFile ${aR`Gs}[3]
} else {
	.("{1}{8}{9}{7}{3}{2}{4}{6}{0}{5}{10}" -f'epo','I','wdCach','P','eP','pul','r','DC','nvo','ke-OSCRO','ation')
}

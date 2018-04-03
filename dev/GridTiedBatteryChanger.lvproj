<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="sbRIO9607" Type="RT Single-Board RIO">
		<Property Name="alias.name" Type="Str">sbRIO9607</Property>
		<Property Name="alias.value" Type="Str">10.1.129.22</Property>
		<Property Name="CCSymbols" Type="Str">OS,Linux;CPU,ARM;DeviceCode,77D6;TRACE,ON;WATCHDOG,DISABLE;TARGET_TYPE,RT;</Property>
		<Property Name="crio.ControllerPID" Type="Str">77D6</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/home/lvuser/natinst/bin/GridTiedBatteryCharger.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">true</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Support" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="globals.vi" Type="VI" URL="../Controller/Support/globals.vi"/>
			<Item Name="StreamState.ctl" Type="VI" URL="../Controller/Support/StreamState.ctl"/>
			<Item Name="LoggingProcess.vi" Type="VI" URL="../Controller/Support/LoggingProcess.vi"/>
			<Item Name="NetworkStreamProcess.vi" Type="VI" URL="../Controller/Support/NetworkStreamProcess.vi"/>
			<Item Name="StreamHeader.ctl" Type="VI" URL="../Controller/Support/StreamHeader.ctl"/>
			<Item Name="FormatGraph.vi" Type="VI" URL="../Controller/Support/FormatGraph.vi"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Controller/Main.vi"/>
		<Item Name="Host Module Includes.vi" Type="VI" URL="../Controller/Host Module Includes.vi"/>
		<Item Name="jsonRPC" Type="Web Service">
			<Property Name="Bld_buildSpecName" Type="Str"></Property>
			<Property Name="Bld_version.build" Type="Int">1</Property>
			<Property Name="ws.autoIncrementVersion" Type="Bool">true</Property>
			<Property Name="ws.disconnectInline" Type="Bool">true</Property>
			<Property Name="ws.disconnectTypeDefs" Type="Bool">false</Property>
			<Property Name="ws.guid" Type="Str">{D9EFBC22-BE18-4494-8E64-E6F704652467}</Property>
			<Property Name="ws.modifyLibraryFile" Type="Bool">true</Property>
			<Property Name="ws.remoteDebugging" Type="Bool">false</Property>
			<Property Name="ws.removeLibraryItems" Type="Bool">true</Property>
			<Property Name="ws.removePolyVIs" Type="Bool">true</Property>
			<Property Name="ws.serveDefaultDoc" Type="Bool">true</Property>
			<Property Name="ws.SSE2" Type="Bool">true</Property>
			<Property Name="ws.static_permissions" Type="Str"></Property>
			<Property Name="ws.version.build" Type="Int">1</Property>
			<Property Name="ws.version.fix" Type="Int">0</Property>
			<Property Name="ws.version.major" Type="Int">1</Property>
			<Property Name="ws.version.minor" Type="Int">0</Property>
			<Item Name="Startup VIs" Type="Startup VIs Container"/>
			<Item Name="Web Resources" Type="HTTP WebResources Container">
				<Item Name="request.vi" Type="VI" URL="../Client/jsonRPCwebservice/request.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">3</Property>
					<Property Name="ws.outputFormat" Type="Int">2</Property>
					<Property Name="ws.outputType" Type="Int">1</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
			</Item>
		</Item>
		<Item Name="JSONRPC Server.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/Server/JSONRPC Server.lvclass"/>
		<Item Name="AppStateMachine runtime.lvclass" Type="LVClass" URL="../Controller/DCAF_modules/AppStateMachine/module/execution/AppStateMachine runtime.lvclass"/>
		<Item Name="AppStateMachine configuration.lvclass" Type="LVClass" URL="../Controller/DCAF_modules/AppStateMachine/module/configuration/AppStateMachine configuration.lvclass"/>
		<Item Name="Chassis" Type="sbRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">sbRIO-9607</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{01A2630C-059F-4D95-B81C-E5D4353E9D61}resource=/crio_RMC/DIa8;0;ReadMethodType=bool{063EBA6D-E451-4389-9B15-451F790A5DFA}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{0A41329C-FDE4-400F-86AD-25E9E9C9EC0B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=bool{0AC83C1F-0938-40C0-98DA-9D191AEDFBC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=bool{0AD62825-BA53-46B1-AC67-6688C497A91E}resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=bool{0CCC9C10-495A-48AF-8B6F-5981DFC159FA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=bool{0E9FB647-BF28-476D-AAD2-381893EF36A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8{0FA349FA-800E-4DFC-A556-08F00FCE6C9E}resource=/crio_RMC/DIa12;0;ReadMethodType=bool{16482E05-FDCD-442D-B832-C88BB3BFB861}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{16E622EF-9C17-425A-AE03-E9B2F538976B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=bool{17EFC13C-B1C1-4C11-B90C-372D05FE9B9A}resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32{1AF6A041-E4CD-49F9-B475-75DD6D22F52B}resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16{1B9C4ED8-BD95-4359-8DE4-FD1517021736}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=bool{20C3D864-76DB-4672-9B5E-999C7147EE68}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=bool{22E43360-0C5D-4663-A05C-1C1C4CD68FB3}resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=bool{24D29CAE-CA25-4686-A349-6601FD2DF967}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=bool{2644A2C7-C119-41C0-B060-F6D7E0672BAE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=bool{26C942AD-8363-4401-89F8-F09DB73689A2}resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16{28E15E85-8FED-48B8-A6B4-6F84DB752FDC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=bool{293CFFE5-7911-4F82-BFEC-1232DED6C5F2}resource=/crio_RMC/DIb12;0;ReadMethodType=bool{2A85DD60-83E2-48CD-BABD-9D7B5FC95E65}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=bool{2CE80CB6-06E1-4AE6-8DC7-4683C54D66BF}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=bool{2D2CF5E4-1190-4390-A9AD-87B7D7F4C45B}resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=bool{33119FA0-9445-4EFC-8E0A-7A924C3C46D4}resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16{3398E60F-E09E-425F-B79B-63B70D8475C2}resource=/crio_RMC/DIa6;0;ReadMethodType=bool{33B86B3E-1A07-46B0-9B1F-F67AB497B7D6}resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=bool{34CBB886-96F8-4F04-AE43-E1EEE89CC68D}resource=/crio_RMC/DIb1;0;ReadMethodType=bool{387CBB2D-AAFB-4B8F-AC5B-60C979070E5D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8{3A4D75E5-9461-411A-9C03-D0A56EBAFE2E}resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=bool{3E74287F-5DA1-4F33-8C57-DD68DAB339B1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=bool{3F096F62-D671-4515-AA0D-2875A57D1134}resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=bool{3F8A0E02-E82C-48B5-A209-1C2AFB7E8F76}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16{3FAC7847-BE93-4380-8F40-F6A79EFD6E8E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=bool{416245D0-5434-4FB4-B5B9-CB5CBD37E469}resource=/crio_RMC/DIa2;0;ReadMethodType=bool{42497FA1-CB0B-416E-B882-A432335CC5AA}resource=/crio_RMC/DIb10;0;ReadMethodType=bool{4289CC0A-7965-4145-A432-DD9616034FFB}resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=bool{43D7949D-6F52-4362-9DB5-5D5D9C923407}resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16{44665D5E-1617-4711-98A4-0D2A06B32CD8}resource=/crio_RMC/AI1;0;ReadMethodType=i16{4526A76D-479B-4491-8688-D65A89CAA85B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=bool{47F5B121-8AE8-460E-BA68-56D54F93A2B9}resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16{4A01E2C7-4142-4168-82F5-3695A64B9783}resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=bool{4D00E108-7E27-4C08-8175-53D97FF04800}resource=/crio_RMC/DIa7;0;ReadMethodType=bool{52BF2CD2-1D74-4118-B250-236F584EEB6B}resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=bool{53D6591B-CE4A-4782-8C65-A1D292F94C25}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{55E08BC4-8FB8-4671-BA34-A01DF1AC5523}resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16{57268C1F-2DD7-47D6-AC86-98F0DDB514BE}resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8{574EA4CA-9CB1-411A-B030-8E661419F355}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=bool{579B69C1-E1DD-4483-88DA-9550EBFE9068}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=bool{58D4FAF0-91D6-4946-8EB1-075CCD9DE4DC}resource=/crio_RMC/DIa10;0;ReadMethodType=bool{59C04699-E734-4F29-8731-E8F88E0E9611}resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=bool{5A9797D5-73B8-42CC-AC44-A2EDB1D69587}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{5CBC5AA5-09C6-449F-8BD7-A3417DF452E9}resource=/crio_RMC/AI4;0;ReadMethodType=i16{5F7CE28B-B6F6-4434-8687-2ABD53219F74}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8{61263C49-3A28-4A42-8AF1-F2D375958356}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=bool{61EB5E72-8461-4493-A81B-DBC8163C4335}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{627C9920-FE4C-4D47-AD8E-65BD9A76E9D0}resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=bool{6338A2AB-EB9D-4B02-A6C5-F7873C9DE18D}resource=/crio_RMC/AI7;0;ReadMethodType=i16{63CD04BD-7138-47A3-83DA-8E27AA02C55A}resource=/crio_RMC/AI3;0;ReadMethodType=i16{63E6551C-3179-41DC-AA62-E61BD889B636}resource=/crio_RMC/AI12;0;ReadMethodType=i16{67140E46-6989-4DB8-9959-B21DC2A35CFE}resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=bool{6719D2D0-B776-426E-965D-61EBE47C3D6B}resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8{6754880B-9776-4BFA-83E6-EB2355FFB2F6}resource=/crio_RMC/AI9;0;ReadMethodType=i16{696D1580-4C7D-4B44-B906-862A55D19947}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=bool{69DF5F2D-1F0C-4BD4-A957-56B709CDECF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=bool{69E20EF2-AEA7-4425-8F02-2841A922D4C3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8{6BC0F18B-73F4-4E72-969A-1EC73BFF82D4}resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=bool{6C1B67FC-E8AC-45AA-9682-040AD17E5675}resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16{6DEB01B2-A60D-4F3A-A4B1-4ADEFAEEF54B}resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=bool{6E16B542-2488-4A25-A8E0-17A8C8923E2D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=bool{74667346-755C-4D02-AED6-E17533878402}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=bool{7502D4E7-1CDB-4506-9727-1FB62EBCB1A8}resource=/crio_RMC/AI11;0;ReadMethodType=i16{763242DC-E47F-4A11-81E6-88CE3BF39B76}resource=/Scan Clock;0;ReadMethodType=bool{79218C85-6E20-4DA7-BA17-19308D2DBAB8}resource=/crio_RMC/AI14;0;ReadMethodType=i16{810747AA-524E-4211-95E6-BD9DB41738ED}resource=/crio_RMC/DIa9;0;ReadMethodType=bool{847656B8-F7A2-4D10-A50A-9D043975D01F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=bool{84BE08DE-F1FB-4D6F-A438-3531D8008337}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=bool{86416498-5EBD-4CDE-84F2-89EA59E3665D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=bool{86608F46-576C-471D-A9BC-B53890A2ED69}resource=/crio_RMC/DIb4;0;ReadMethodType=bool{8823FF73-5120-40CE-A4C9-588F7FF9D732}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=bool{892FB300-F788-47BF-890F-FA98258A8CFC}resource=/crio_RMC/DIb0;0;ReadMethodType=bool{89C70C62-81E3-41BD-8D04-0FC777AF36EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=bool{8B61B441-A938-40DB-A1B6-6827E5A01D8D}resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8{8B7F5016-E590-4CC2-AE1D-4458E62260C9}resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=bool{8BE0CE45-E71A-4B23-9D30-E52CF08F8208}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=bool{8C1EF6EE-5DA4-4B78-80BC-F5AB3086E9A2}resource=/crio_RMC/AI5;0;ReadMethodType=i16{8C9F2235-CCCF-4F8C-81CE-19A4B8A8CC3E}resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16{8E9D46E6-42A7-4F0D-974D-9089B4EC7F57}resource=/crio_RMC/DIb2;0;ReadMethodType=bool{91EA6260-3FA3-47B1-813C-5B1A896D3167}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=bool{92D06E1C-D561-405A-B3F2-BE30EC640AD5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=bool{92DC0A43-8190-4269-90A0-67D6BADEA7C1}resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16{941C08CD-A0BF-45FF-BCC7-8067DB9CEE73}resource=/crio_RMC/AI0;0;ReadMethodType=i16{9525E896-20FB-4525-B56F-3F988703DBAB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=bool{96EFF483-612B-45C7-9C63-16FB13F4F6D3}resource=/crio_RMC/AI6;0;ReadMethodType=i16{99E88D7B-C30C-4610-B3D1-E7D1F5156AAA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9D8C544A-3C7E-411E-BC68-EA1BADE271A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=bool{9DED412C-6A54-4C45-8903-5D96DDFEA5F7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=bool{9E3C1E65-EF92-4D10-9B93-32927FBD5294}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=bool{A0421769-CDC8-460D-A7E4-1C194B0BEF98}[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]{A0CF5F6D-FED1-4A6A-A754-60BC806C3D1A}resource=/crio_RMC/DIb7;0;ReadMethodType=bool{A1B29FEA-010B-4CBA-BD68-F53454C7F2B3}resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8{A2BAA69E-725B-4BB9-AE04-8B65BB9383DB}resource=/crio_RMC/DIb3;0;ReadMethodType=bool{A41EE926-0C19-431D-BE1B-9024241F9DE2}resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16{A4618DD5-667F-469D-9DF3-E60D2D287CF0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=bool{A4BD2E18-3D34-469F-B3FE-36D9FF640DDA}resource=/crio_RMC/DIb11;0;ReadMethodType=bool{A52FA93E-EBD9-49D7-990B-713A230E555B}resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=bool{A5915504-112B-4EA5-A6FB-5710483CE436}resource=/crio_RMC/AI8;0;ReadMethodType=i16{A6FFE19A-DEDB-47E9-AB34-14927709C1CB}resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=bool{A9928D02-88F3-4897-8910-2223285BFB49}resource=/crio_RMC/DIa5;0;ReadMethodType=bool{AA94B108-BAA4-48A2-930F-C40D5D907D72}resource=/crio_RMC/DIb5;0;ReadMethodType=bool{AADBB53B-697D-4BAF-ACB6-CFB1DC81642F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=bool{AB9BF675-B3BF-457D-B1E8-E1C671F38DA6}resource=/crio_RMC/AI13;0;ReadMethodType=i16{AEBD645E-716D-4735-838F-82A1565B5635}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{AF7671BA-F8BF-4EB9-839D-08D783B2CE45}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=bool{AFBF8038-2A41-4829-B921-189645BF6274}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=bool{B1842242-9407-4343-8001-42352E17F018}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=bool{B394527B-A574-46F2-BF8A-84511FD0D376}resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=bool{B3FF1AD7-FFC1-49AF-900A-0980FC24D019}resource=/crio_RMC/DIb13;0;ReadMethodType=bool{BA87661D-D28F-4B2B-AE49-9DF85D661856}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=bool{BB0FE01C-58F6-4B08-86E3-FC0231F45373}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=bool{BC473314-1B9D-4929-90A6-D7C6BEEB578C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=bool{BC74E23E-39E2-4CF6-A4D9-D6DF02D84050}resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8{BF57BD0D-0A92-4AF0-84D6-898D662D0E08}resource=/crio_RMC/DIb9;0;ReadMethodType=bool{C061A3FC-937B-4A73-B4BC-554E672E7F8C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=bool{C2249B6E-B521-4939-8DE6-FD22632B9E51}resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16{C4C805B8-F6AC-46C2-8C3F-B45D2904966F}resource=/crio_RMC/DIa4;0;ReadMethodType=bool{C574D2FF-E69E-4479-ABCA-50BCEADDFEF5}resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=bool{C843E959-CE66-429A-980B-9C6BEFEB2DFC}resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8{C8C4FF79-6023-4ADD-BDEB-A6B402821915}resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16{CB333BCC-8D4A-48FD-991B-38C68ACE19B9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{CBC8355B-16AB-4F9F-9C86-D5673BC3783E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=bool{CDA044C3-19C9-4205-AC5B-F34994939899}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=bool{CDC156B1-4555-470A-BAE2-73E0FA411B51}resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16{D121B253-E854-4204-8B4E-3003695BBAD1}resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16{D1F80F6D-E1CA-4B7F-83AE-9746D156BD73}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32{D3B835D9-4C34-4521-83E6-0C0578DD6769}resource=/crio_RMC/DIb8;0;ReadMethodType=bool{D3D5C693-8C2F-438F-84D4-8A26BC002729}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8{D4D52F93-0810-4076-B066-5472C3A69D18}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=bool{D5568028-0BE6-46C5-AA26-C8E016858DC5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=bool{D61E555D-85BA-4FBE-8BE9-EE6D98BE46E3}resource=/crio_RMC/AI2;0;ReadMethodType=i16{D785343C-DDF1-499C-9608-14747F9584F7}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D7E75029-C4BA-465D-9D71-8EA7205977C3}resource=/crio_RMC/DIa3;0;ReadMethodType=bool{DCD856AC-5A9B-4E01-A0E1-E261DBE25EF0}resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16{DDF87F58-2687-4877-B534-2F689C6F5241}resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16{DEDB3634-A7A2-4700-A6F1-02679C7C6462}resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=bool{E35C862A-1311-4891-9267-6EBD860E7AF0}resource=/crio_RMC/DIa0;0;ReadMethodType=bool{E39F9E75-57DC-4DCC-BB5B-48A301B38103}resource=/crio_RMC/AI10;0;ReadMethodType=i16{E4A86D69-1A38-419E-AD3E-F223F769187A}resource=/crio_RMC/DIb6;0;ReadMethodType=bool{E5BD2551-70CF-4949-8DC3-6177B75C2567}resource=/crio_RMC/DIa13;0;ReadMethodType=bool{E68A3915-6133-46B4-A1FF-ADB142247919}resource=/crio_RMC/AI15;0;ReadMethodType=i16{E84D5709-5940-4418-90FC-E6216AA0F3C5}resource=/crio_RMC/DIa1;0;ReadMethodType=bool{EAE1267D-7A2F-415B-AE77-062F28267C17}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=bool{ECCBF294-D364-45BA-9A75-416D85D63EE6}resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=bool{ED0D63F3-119F-4318-988D-AFC8FA0DA65A}resource=/crio_RMC/DIa11;0;ReadMethodType=bool{EF7F42A5-B6F2-432E-9D30-1363B7E90AAC}resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=bool{F13F36F7-918E-4858-A3FD-382EFFA284E1}resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16{F2800472-34C3-4368-8270-343BF347648A}resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8{F5F809F5-3D7A-439E-8D9F-E2CC081A2E86}resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16{F9DCE347-EE96-4541-8703-498AEEF66CAD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=bool{FCB1844E-6C92-433E-B445-A3BEA3CF766F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=bool{FCFCECEC-51C8-4768-8485-A6455CA5F8A5}resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=bool{FE230841-83A1-4D6C-BAC8-7092B632D8F9}resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=bool{FF1AD92C-24D9-464F-970F-30C40F5F1C72}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ConnectDCLinksArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=boolDataSGL0"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"DataSGL1"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolI0_BuckBoostresource=/crio_RMC/AI0;0;ReadMethodType=i16I1_BuckBoostresource=/crio_RMC/AI1;0;ReadMethodType=i16I2_BuckBoostresource=/crio_RMC/AI2;0;ReadMethodType=i16Iu_AFEresource=/crio_RMC/AI8;0;ReadMethodType=i16Iv_AFEresource=/crio_RMC/AI9;0;ReadMethodType=i16Iw_AFEresource=/crio_RMC/AI10;0;ReadMethodType=i16MainContactorArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=boolPrechargeAFEArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=boolPrechargeBuckBoostArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"RMC/AO/AO0resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16RMC/AO/AO1resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16RMC/AO/AO2resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16RMC/AO/AO3resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16RMC/AO/AO4resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16RMC/AO/AO5resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16RMC/AO/AO6resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16RMC/AO/AO7resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16RMC/Half-Bridge/DO0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO10ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO11ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO12ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO13:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16RMC/Half-Bridge/DO13:8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO13ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO7:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO17ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO18ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO19ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO20ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO21ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO22ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO23:16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO23ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO25ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO26ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO27ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO28ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO29ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO30ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO31:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/LVTTL/DIO31:24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO31ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Relay Control/DO3:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Scanned/AI0resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16RMC/Scanned/AI1resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16RMC/Scanned/AI2resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16RMC/Scanned/AI3resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16RMC/Scanned/AI4resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16RMC/Scanned/AI5resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16RMC/Scanned/AI6resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16RMC/Scanned/AI7resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16RMC/Sinking/DO0resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO10resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO11resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO12resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO13resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO14resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO15:8resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO15resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO16resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO17resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO18resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO19resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO1resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO20resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO21resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO22resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO23:0resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/Sinking/DO23:16resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO23resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO2resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO3resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO4resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO5resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO6resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO7:0resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO7resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO8resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO9resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sourcing P0/DI0resource=/crio_RMC/DIa0;0;ReadMethodType=boolRMC/Sourcing P0/DI10resource=/crio_RMC/DIa10;0;ReadMethodType=boolRMC/Sourcing P0/DI11resource=/crio_RMC/DIa11;0;ReadMethodType=boolRMC/Sourcing P0/DI12resource=/crio_RMC/DIa12;0;ReadMethodType=boolRMC/Sourcing P0/DI13:0resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16RMC/Sourcing P0/DI13:8resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8RMC/Sourcing P0/DI13resource=/crio_RMC/DIa13;0;ReadMethodType=boolRMC/Sourcing P0/DI1resource=/crio_RMC/DIa1;0;ReadMethodType=boolRMC/Sourcing P0/DI2resource=/crio_RMC/DIa2;0;ReadMethodType=boolRMC/Sourcing P0/DI3resource=/crio_RMC/DIa3;0;ReadMethodType=boolRMC/Sourcing P0/DI4resource=/crio_RMC/DIa4;0;ReadMethodType=boolRMC/Sourcing P0/DI5resource=/crio_RMC/DIa5;0;ReadMethodType=boolRMC/Sourcing P0/DI6resource=/crio_RMC/DIa6;0;ReadMethodType=boolRMC/Sourcing P0/DI7:0resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8RMC/Sourcing P0/DI7resource=/crio_RMC/DIa7;0;ReadMethodType=boolRMC/Sourcing P0/DI8resource=/crio_RMC/DIa8;0;ReadMethodType=boolRMC/Sourcing P0/DI9resource=/crio_RMC/DIa9;0;ReadMethodType=boolRMC/Sourcing P1/DI0resource=/crio_RMC/DIb0;0;ReadMethodType=boolRMC/Sourcing P1/DI10resource=/crio_RMC/DIb10;0;ReadMethodType=boolRMC/Sourcing P1/DI11resource=/crio_RMC/DIb11;0;ReadMethodType=boolRMC/Sourcing P1/DI12resource=/crio_RMC/DIb12;0;ReadMethodType=boolRMC/Sourcing P1/DI13:0resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16RMC/Sourcing P1/DI13:8resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8RMC/Sourcing P1/DI13resource=/crio_RMC/DIb13;0;ReadMethodType=boolRMC/Sourcing P1/DI1resource=/crio_RMC/DIb1;0;ReadMethodType=boolRMC/Sourcing P1/DI2resource=/crio_RMC/DIb2;0;ReadMethodType=boolRMC/Sourcing P1/DI3resource=/crio_RMC/DIb3;0;ReadMethodType=boolRMC/Sourcing P1/DI4resource=/crio_RMC/DIb4;0;ReadMethodType=boolRMC/Sourcing P1/DI5resource=/crio_RMC/DIb5;0;ReadMethodType=boolRMC/Sourcing P1/DI6resource=/crio_RMC/DIb6;0;ReadMethodType=boolRMC/Sourcing P1/DI7:0resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8RMC/Sourcing P1/DI7resource=/crio_RMC/DIb7;0;ReadMethodType=boolRMC/Sourcing P1/DI8resource=/crio_RMC/DIb8;0;ReadMethodType=boolRMC/Sourcing P1/DI9resource=/crio_RMC/DIb9;0;ReadMethodType=boolRMC[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolV0_BuckBoostresource=/crio_RMC/AI5;0;ReadMethodType=i16V1_BuckBoostresource=/crio_RMC/AI6;0;ReadMethodType=i16V2_BuckBoostresource=/crio_RMC/AI7;0;ReadMethodType=i16VDCLink_AFEresource=/crio_RMC/AI15;0;ReadMethodType=i16VDCLink_BuckBoostresource=/crio_RMC/AI4;0;ReadMethodType=i16Vgrid_BuckBoostresource=/crio_RMC/AI3;0;ReadMethodType=i16VLoad_BuckBoostresource=/crio_RMC/AI11;0;ReadMethodType=i16Vu_AFEresource=/crio_RMC/AI12;0;ReadMethodType=i16Vv_AFEresource=/crio_RMC/AI13;0;ReadMethodType=i16Vw_AFEresource=/crio_RMC/AI14;0;ReadMethodType=i16</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">sbRIO-9607</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Onboard I/O" Type="Folder">
					<Item Name="FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{61EB5E72-8461-4493-A81B-DBC8163C4335}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{763242DC-E47F-4A11-81E6-88CE3BF39B76}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{53D6591B-CE4A-4782-8C65-A1D292F94C25}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{063EBA6D-E451-4389-9B15-451F790A5DFA}</Property>
					</Item>
				</Item>
				<Item Name="RMC" Type="Folder">
					<Item Name="AO" Type="Folder">
						<Item Name="RMC/AO/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8C9F2235-CCCF-4F8C-81CE-19A4B8A8CC3E}</Property>
						</Item>
						<Item Name="RMC/AO/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D121B253-E854-4204-8B4E-3003695BBAD1}</Property>
						</Item>
						<Item Name="RMC/AO/AO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F13F36F7-918E-4858-A3FD-382EFFA284E1}</Property>
						</Item>
						<Item Name="RMC/AO/AO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CDC156B1-4555-470A-BAE2-73E0FA411B51}</Property>
						</Item>
						<Item Name="RMC/AO/AO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C2249B6E-B521-4939-8DE6-FD22632B9E51}</Property>
						</Item>
						<Item Name="RMC/AO/AO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{43D7949D-6F52-4362-9DB5-5D5D9C923407}</Property>
						</Item>
						<Item Name="RMC/AO/AO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C8C4FF79-6023-4ADD-BDEB-A6B402821915}</Property>
						</Item>
						<Item Name="RMC/AO/AO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAo7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A41EE926-0C19-431D-BE1B-9024241F9DE2}</Property>
						</Item>
					</Item>
					<Item Name="Half-Bridge DO" Type="Folder">
						<Item Name="RMC/Half-Bridge/DO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3FAC7847-BE93-4380-8F40-F6A79EFD6E8E}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0A41329C-FDE4-400F-86AD-25E9E9C9EC0B}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D4D52F93-0810-4076-B066-5472C3A69D18}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{579B69C1-E1DD-4483-88DA-9550EBFE9068}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4526A76D-479B-4491-8688-D65A89CAA85B}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BC473314-1B9D-4929-90A6-D7C6BEEB578C}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0AC83C1F-0938-40C0-98DA-9D191AEDFBC7}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{61263C49-3A28-4A42-8AF1-F2D375958356}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0E9FB647-BF28-476D-AAD2-381893EF36A5}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{84BE08DE-F1FB-4D6F-A438-3531D8008337}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AF7671BA-F8BF-4EB9-839D-08D783B2CE45}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B1842242-9407-4343-8001-42352E17F018}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8823FF73-5120-40CE-A4C9-588F7FF9D732}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9D8C544A-3C7E-411E-BC68-EA1BADE271A7}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{74667346-755C-4D02-AED6-E17533878402}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO13:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo13:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3F8A0E02-E82C-48B5-A209-1C2AFB7E8F76}</Property>
						</Item>
						<Item Name="RMC/Half-Bridge/DO13:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Hsdo13:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{387CBB2D-AAFB-4B8F-AC5B-60C979070E5D}</Property>
						</Item>
					</Item>
					<Item Name="LVTTL DIO" Type="Folder">
						<Item Name="RMC/LVTTL/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9E3C1E65-EF92-4D10-9B93-32927FBD5294}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{EAE1267D-7A2F-415B-AE77-062F28267C17}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{28E15E85-8FED-48B8-A6B4-6F84DB752FDC}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{91EA6260-3FA3-47B1-813C-5B1A896D3167}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{16E622EF-9C17-425A-AE03-E9B2F538976B}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0CCC9C10-495A-48AF-8B6F-5981DFC159FA}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9525E896-20FB-4525-B56F-3F988703DBAB}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CDA044C3-19C9-4205-AC5B-F34994939899}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CB333BCC-8D4A-48FD-991B-38C68ACE19B9}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FF1AD92C-24D9-464F-970F-30C40F5F1C72}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1B9C4ED8-BD95-4359-8DE4-FD1517021736}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{24D29CAE-CA25-4686-A349-6601FD2DF967}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9DED412C-6A54-4C45-8903-5D96DDFEA5F7}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FCB1844E-6C92-433E-B445-A3BEA3CF766F}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{574EA4CA-9CB1-411A-B030-8E661419F355}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BB0FE01C-58F6-4B08-86E3-FC0231F45373}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{92D06E1C-D561-405A-B3F2-BE30EC640AD5}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{99E88D7B-C30C-4610-B3D1-E7D1F5156AAA}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO16" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO16</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2CE80CB6-06E1-4AE6-8DC7-4683C54D66BF}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO17" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO17</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CBC8355B-16AB-4F9F-9C86-D5673BC3783E}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO18" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO18</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F9DCE347-EE96-4541-8703-498AEEF66CAD}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO19" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO19</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6E16B542-2488-4A25-A8E0-17A8C8923E2D}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO20" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO20</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{20C3D864-76DB-4672-9B5E-999C7147EE68}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO21" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO21</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{89C70C62-81E3-41BD-8D04-0FC777AF36EC}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO22" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO22</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3E74287F-5DA1-4F33-8C57-DD68DAB339B1}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO23" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO23</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BA87661D-D28F-4B2B-AE49-9DF85D661856}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO23:16" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO23:16</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D3D5C693-8C2F-438F-84D4-8A26BC002729}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO24" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO24</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AFBF8038-2A41-4829-B921-189645BF6274}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO25" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO25</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8BE0CE45-E71A-4B23-9D30-E52CF08F8208}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO26" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO26</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A4618DD5-667F-469D-9DF3-E60D2D287CF0}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO27" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO27</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{69DF5F2D-1F0C-4BD4-A957-56B709CDECF7}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO28" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO28</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{86416498-5EBD-4CDE-84F2-89EA59E3665D}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO29" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO29</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2644A2C7-C119-41C0-B060-F6D7E0672BAE}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO30" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO30</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2A85DD60-83E2-48CD-BABD-9D7B5FC95E65}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO31" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO31</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AADBB53B-697D-4BAF-ACB6-CFB1DC81642F}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO31:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO31:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D1F80F6D-E1CA-4B7F-83AE-9746D156BD73}</Property>
						</Item>
						<Item Name="RMC/LVTTL/DIO31:24" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/ExpDIO31:24</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{5F7CE28B-B6F6-4434-8687-2ABD53219F74}</Property>
						</Item>
					</Item>
					<Item Name="Relay Control DO" Type="Folder">
						<Item Name="ConnectDCLinks" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Ch0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{696D1580-4C7D-4B44-B906-862A55D19947}</Property>
						</Item>
						<Item Name="MainContactor" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Ch1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D5568028-0BE6-46C5-AA26-C8E016858DC5}</Property>
						</Item>
						<Item Name="PrechargeAFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Ch2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C061A3FC-937B-4A73-B4BC-554E672E7F8C}</Property>
						</Item>
						<Item Name="PrechargeBuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Ch3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{847656B8-F7A2-4D10-A50A-9D043975D01F}</Property>
						</Item>
						<Item Name="RMC/Relay Control/DO3:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_RMC/Ch3:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{69E20EF2-AEA7-4425-8F02-2841A922D4C3}</Property>
						</Item>
					</Item>
					<Item Name="Scanned AI" Type="Folder">
						<Item Name="RMC/Scanned/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{33119FA0-9445-4EFC-8E0A-7A924C3C46D4}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{92DC0A43-8190-4269-90A0-67D6BADEA7C1}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6C1B67FC-E8AC-45AA-9682-040AD17E5675}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1AF6A041-E4CD-49F9-B475-75DD6D22F52B}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{26C942AD-8363-4401-89F8-F09DB73689A2}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{55E08BC4-8FB8-4671-BA34-A01DF1AC5523}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{47F5B121-8AE8-460E-BA68-56D54F93A2B9}</Property>
						</Item>
						<Item Name="RMC/Scanned/AI7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/SpiAi7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F5F809F5-3D7A-439E-8D9F-E2CC081A2E86}</Property>
						</Item>
					</Item>
					<Item Name="Simultaneous AI" Type="Folder">
						<Item Name="I0_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{941C08CD-A0BF-45FF-BCC7-8067DB9CEE73}</Property>
						</Item>
						<Item Name="I1_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{44665D5E-1617-4711-98A4-0D2A06B32CD8}</Property>
						</Item>
						<Item Name="I2_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D61E555D-85BA-4FBE-8BE9-EE6D98BE46E3}</Property>
						</Item>
						<Item Name="Vgrid_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{63CD04BD-7138-47A3-83DA-8E27AA02C55A}</Property>
						</Item>
						<Item Name="VDCLink_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{5CBC5AA5-09C6-449F-8BD7-A3417DF452E9}</Property>
						</Item>
						<Item Name="V0_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8C1EF6EE-5DA4-4B78-80BC-F5AB3086E9A2}</Property>
						</Item>
						<Item Name="V1_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{96EFF483-612B-45C7-9C63-16FB13F4F6D3}</Property>
						</Item>
						<Item Name="V2_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6338A2AB-EB9D-4B02-A6C5-F7873C9DE18D}</Property>
						</Item>
						<Item Name="Iu_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A5915504-112B-4EA5-A6FB-5710483CE436}</Property>
						</Item>
						<Item Name="Iv_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6754880B-9776-4BFA-83E6-EB2355FFB2F6}</Property>
						</Item>
						<Item Name="Iw_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E39F9E75-57DC-4DCC-BB5B-48A301B38103}</Property>
						</Item>
						<Item Name="VLoad_BuckBoost" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{7502D4E7-1CDB-4506-9727-1FB62EBCB1A8}</Property>
						</Item>
						<Item Name="Vu_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{63E6551C-3179-41DC-AA62-E61BD889B636}</Property>
						</Item>
						<Item Name="Vv_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AB9BF675-B3BF-457D-B1E8-E1C671F38DA6}</Property>
						</Item>
						<Item Name="Vw_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{79218C85-6E20-4DA7-BA17-19308D2DBAB8}</Property>
						</Item>
						<Item Name="VDCLink_AFE" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/AI15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E68A3915-6133-46B4-A1FF-ADB142247919}</Property>
						</Item>
					</Item>
					<Item Name="Sinking DO" Type="Folder">
						<Item Name="RMC/Sinking/DO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B394527B-A574-46F2-BF8A-84511FD0D376}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FCFCECEC-51C8-4768-8485-A6455CA5F8A5}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{ECCBF294-D364-45BA-9A75-416D85D63EE6}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{33B86B3E-1A07-46B0-9B1F-F67AB497B7D6}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3F096F62-D671-4515-AA0D-2875A57D1134}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6BC0F18B-73F4-4E72-969A-1EC73BFF82D4}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8B7F5016-E590-4CC2-AE1D-4458E62260C9}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{52BF2CD2-1D74-4118-B250-236F584EEB6B}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8B61B441-A938-40DB-A1B6-6827E5A01D8D}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4A01E2C7-4142-4168-82F5-3695A64B9783}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{59C04699-E734-4F29-8731-E8F88E0E9611}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3A4D75E5-9461-411A-9C03-D0A56EBAFE2E}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{22E43360-0C5D-4663-A05C-1C1C4CD68FB3}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A6FFE19A-DEDB-47E9-AB34-14927709C1CB}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2D2CF5E4-1190-4390-A9AD-87B7D7F4C45B}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6DEB01B2-A60D-4F3A-A4B1-4ADEFAEEF54B}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DEDB3634-A7A2-4700-A6F1-02679C7C6462}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6719D2D0-B776-426E-965D-61EBE47C3D6B}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO16" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do16</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{67140E46-6989-4DB8-9959-B21DC2A35CFE}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO17" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do17</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C574D2FF-E69E-4479-ABCA-50BCEADDFEF5}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO18" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do18</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{627C9920-FE4C-4D47-AD8E-65BD9A76E9D0}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO19" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do19</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{EF7F42A5-B6F2-432E-9D30-1363B7E90AAC}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO20" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do20</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A52FA93E-EBD9-49D7-990B-713A230E555B}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO21" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do21</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4289CC0A-7965-4145-A432-DD9616034FFB}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO22" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do22</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0AD62825-BA53-46B1-AC67-6688C497A91E}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO23" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do23</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FE230841-83A1-4D6C-BAC8-7092B632D8F9}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO23:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/Do23:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{17EFC13C-B1C1-4C11-B90C-372D05FE9B9A}</Property>
						</Item>
						<Item Name="RMC/Sinking/DO23:16" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DO23:16</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{57268C1F-2DD7-47D6-AC86-98F0DDB514BE}</Property>
						</Item>
					</Item>
					<Item Name="Sourcing DI P0" Type="Folder">
						<Item Name="RMC/Sourcing P0/DI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E35C862A-1311-4891-9267-6EBD860E7AF0}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E84D5709-5940-4418-90FC-E6216AA0F3C5}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{416245D0-5434-4FB4-B5B9-CB5CBD37E469}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D7E75029-C4BA-465D-9D71-8EA7205977C3}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C4C805B8-F6AC-46C2-8C3F-B45D2904966F}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A9928D02-88F3-4897-8910-2223285BFB49}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3398E60F-E09E-425F-B79B-63B70D8475C2}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4D00E108-7E27-4C08-8175-53D97FF04800}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F2800472-34C3-4368-8270-343BF347648A}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{01A2630C-059F-4D95-B81C-E5D4353E9D61}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{810747AA-524E-4211-95E6-BD9DB41738ED}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{58D4FAF0-91D6-4946-8EB1-075CCD9DE4DC}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{ED0D63F3-119F-4318-988D-AFC8FA0DA65A}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0FA349FA-800E-4DFC-A556-08F00FCE6C9E}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E5BD2551-70CF-4949-8DC3-6177B75C2567}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI13:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa13:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DCD856AC-5A9B-4E01-A0E1-E261DBE25EF0}</Property>
						</Item>
						<Item Name="RMC/Sourcing P0/DI13:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIa13:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C843E959-CE66-429A-980B-9C6BEFEB2DFC}</Property>
						</Item>
					</Item>
					<Item Name="Sourcing DI P1" Type="Folder">
						<Item Name="RMC/Sourcing P1/DI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{892FB300-F788-47BF-890F-FA98258A8CFC}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{34CBB886-96F8-4F04-AE43-E1EEE89CC68D}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8E9D46E6-42A7-4F0D-974D-9089B4EC7F57}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A2BAA69E-725B-4BB9-AE04-8B65BB9383DB}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{86608F46-576C-471D-A9BC-B53890A2ED69}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AA94B108-BAA4-48A2-930F-C40D5D907D72}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E4A86D69-1A38-419E-AD3E-F223F769187A}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A0CF5F6D-FED1-4A6A-A754-60BC806C3D1A}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A1B29FEA-010B-4CBA-BD68-F53454C7F2B3}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{D3B835D9-4C34-4521-83E6-0C0578DD6769}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BF57BD0D-0A92-4AF0-84D6-898D662D0E08}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{42497FA1-CB0B-416E-B882-A432335CC5AA}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A4BD2E18-3D34-469F-B3FE-36D9FF640DDA}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{293CFFE5-7911-4F82-BFEC-1232DED6C5F2}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B3FF1AD7-FFC1-49AF-900A-0980FC24D019}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI13:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb13:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DDF87F58-2687-4877-B534-2F689C6F5241}</Property>
						</Item>
						<Item Name="RMC/Sourcing P1/DI13:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_RMC/DIb13:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BC74E23E-39E2-4CF6-A4D9-D6DF02D84050}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="FIFOs" Type="Folder">
					<Item Name="reg.host instruction fifo 0" Type="FPGA FIFO">
						<Property Name="Actual Number of Elements" Type="UInt">69</Property>
						<Property Name="Arbitration for Read" Type="UInt">1</Property>
						<Property Name="Arbitration for Write" Type="UInt">1</Property>
						<Property Name="Control Logic" Type="UInt">0</Property>
						<Property Name="Data Type" Type="UInt">8</Property>
						<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
						<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						<Property Name="fifo.configured" Type="Bool">true</Property>
						<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
						<Property Name="fifo.valid" Type="Bool">true</Property>
						<Property Name="fifo.version" Type="Int">12</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AEBD645E-716D-4735-838F-82A1565B5635}</Property>
						<Property Name="Local" Type="Bool">false</Property>
						<Property Name="Memory Type" Type="UInt">2</Property>
						<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
						<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
						<Property Name="Requested Number of Elements" Type="UInt">64</Property>
						<Property Name="Type" Type="UInt">1</Property>
						<Property Name="Type Descriptor" Type="Str">100080000000000100094008000355363400010000000000000000000000000000</Property>
					</Item>
					<Item Name="DataSGL0" Type="FPGA FIFO">
						<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
						<Property Name="Arbitration for Read" Type="UInt">1</Property>
						<Property Name="Arbitration for Write" Type="UInt">1</Property>
						<Property Name="Control Logic" Type="UInt">0</Property>
						<Property Name="Data Type" Type="UInt">11</Property>
						<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
						<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						<Property Name="fifo.configured" Type="Bool">true</Property>
						<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
						<Property Name="fifo.valid" Type="Bool">true</Property>
						<Property Name="fifo.version" Type="Int">12</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D785343C-DDF1-499C-9608-14747F9584F7}</Property>
						<Property Name="Local" Type="Bool">false</Property>
						<Property Name="Memory Type" Type="UInt">2</Property>
						<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
						<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
						<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
						<Property Name="Type" Type="UInt">2</Property>
						<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474C000100000000000000000000</Property>
					</Item>
					<Item Name="DataSGL1" Type="FPGA FIFO">
						<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
						<Property Name="Arbitration for Read" Type="UInt">1</Property>
						<Property Name="Arbitration for Write" Type="UInt">1</Property>
						<Property Name="Control Logic" Type="UInt">0</Property>
						<Property Name="Data Type" Type="UInt">11</Property>
						<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
						<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						<Property Name="fifo.configured" Type="Bool">true</Property>
						<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
						<Property Name="fifo.valid" Type="Bool">true</Property>
						<Property Name="fifo.version" Type="Int">12</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{16482E05-FDCD-442D-B832-C88BB3BFB861}</Property>
						<Property Name="Local" Type="Bool">false</Property>
						<Property Name="Memory Type" Type="UInt">2</Property>
						<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
						<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
						<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
						<Property Name="Type" Type="UInt">2</Property>
						<Property Name="Type Descriptor" Type="Str">100080000000000100094009000353474C000100000000000000000000</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{5A9797D5-73B8-42CC-AC44-A2EDB1D69587}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="Firmware.vi" Type="VI" URL="../Controller/FPGA/Firmware.vi">
					<Property Name="BuildSpec" Type="Str">{B718C34C-4624-4FBC-9907-F8329786F9E6}</Property>
					<Property Name="configString.guid" Type="Str">{01A2630C-059F-4D95-B81C-E5D4353E9D61}resource=/crio_RMC/DIa8;0;ReadMethodType=bool{063EBA6D-E451-4389-9B15-451F790A5DFA}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{0A41329C-FDE4-400F-86AD-25E9E9C9EC0B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=bool{0AC83C1F-0938-40C0-98DA-9D191AEDFBC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=bool{0AD62825-BA53-46B1-AC67-6688C497A91E}resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=bool{0CCC9C10-495A-48AF-8B6F-5981DFC159FA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=bool{0E9FB647-BF28-476D-AAD2-381893EF36A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8{0FA349FA-800E-4DFC-A556-08F00FCE6C9E}resource=/crio_RMC/DIa12;0;ReadMethodType=bool{16482E05-FDCD-442D-B832-C88BB3BFB861}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{16E622EF-9C17-425A-AE03-E9B2F538976B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=bool{17EFC13C-B1C1-4C11-B90C-372D05FE9B9A}resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32{1AF6A041-E4CD-49F9-B475-75DD6D22F52B}resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16{1B9C4ED8-BD95-4359-8DE4-FD1517021736}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=bool{20C3D864-76DB-4672-9B5E-999C7147EE68}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=bool{22E43360-0C5D-4663-A05C-1C1C4CD68FB3}resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=bool{24D29CAE-CA25-4686-A349-6601FD2DF967}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=bool{2644A2C7-C119-41C0-B060-F6D7E0672BAE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=bool{26C942AD-8363-4401-89F8-F09DB73689A2}resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16{28E15E85-8FED-48B8-A6B4-6F84DB752FDC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=bool{293CFFE5-7911-4F82-BFEC-1232DED6C5F2}resource=/crio_RMC/DIb12;0;ReadMethodType=bool{2A85DD60-83E2-48CD-BABD-9D7B5FC95E65}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=bool{2CE80CB6-06E1-4AE6-8DC7-4683C54D66BF}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=bool{2D2CF5E4-1190-4390-A9AD-87B7D7F4C45B}resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=bool{33119FA0-9445-4EFC-8E0A-7A924C3C46D4}resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16{3398E60F-E09E-425F-B79B-63B70D8475C2}resource=/crio_RMC/DIa6;0;ReadMethodType=bool{33B86B3E-1A07-46B0-9B1F-F67AB497B7D6}resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=bool{34CBB886-96F8-4F04-AE43-E1EEE89CC68D}resource=/crio_RMC/DIb1;0;ReadMethodType=bool{387CBB2D-AAFB-4B8F-AC5B-60C979070E5D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8{3A4D75E5-9461-411A-9C03-D0A56EBAFE2E}resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=bool{3E74287F-5DA1-4F33-8C57-DD68DAB339B1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=bool{3F096F62-D671-4515-AA0D-2875A57D1134}resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=bool{3F8A0E02-E82C-48B5-A209-1C2AFB7E8F76}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16{3FAC7847-BE93-4380-8F40-F6A79EFD6E8E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=bool{416245D0-5434-4FB4-B5B9-CB5CBD37E469}resource=/crio_RMC/DIa2;0;ReadMethodType=bool{42497FA1-CB0B-416E-B882-A432335CC5AA}resource=/crio_RMC/DIb10;0;ReadMethodType=bool{4289CC0A-7965-4145-A432-DD9616034FFB}resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=bool{43D7949D-6F52-4362-9DB5-5D5D9C923407}resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16{44665D5E-1617-4711-98A4-0D2A06B32CD8}resource=/crio_RMC/AI1;0;ReadMethodType=i16{4526A76D-479B-4491-8688-D65A89CAA85B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=bool{47F5B121-8AE8-460E-BA68-56D54F93A2B9}resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16{4A01E2C7-4142-4168-82F5-3695A64B9783}resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=bool{4D00E108-7E27-4C08-8175-53D97FF04800}resource=/crio_RMC/DIa7;0;ReadMethodType=bool{52BF2CD2-1D74-4118-B250-236F584EEB6B}resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=bool{53D6591B-CE4A-4782-8C65-A1D292F94C25}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{55E08BC4-8FB8-4671-BA34-A01DF1AC5523}resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16{57268C1F-2DD7-47D6-AC86-98F0DDB514BE}resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8{574EA4CA-9CB1-411A-B030-8E661419F355}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=bool{579B69C1-E1DD-4483-88DA-9550EBFE9068}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=bool{58D4FAF0-91D6-4946-8EB1-075CCD9DE4DC}resource=/crio_RMC/DIa10;0;ReadMethodType=bool{59C04699-E734-4F29-8731-E8F88E0E9611}resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=bool{5A9797D5-73B8-42CC-AC44-A2EDB1D69587}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{5CBC5AA5-09C6-449F-8BD7-A3417DF452E9}resource=/crio_RMC/AI4;0;ReadMethodType=i16{5F7CE28B-B6F6-4434-8687-2ABD53219F74}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8{61263C49-3A28-4A42-8AF1-F2D375958356}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=bool{61EB5E72-8461-4493-A81B-DBC8163C4335}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{627C9920-FE4C-4D47-AD8E-65BD9A76E9D0}resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=bool{6338A2AB-EB9D-4B02-A6C5-F7873C9DE18D}resource=/crio_RMC/AI7;0;ReadMethodType=i16{63CD04BD-7138-47A3-83DA-8E27AA02C55A}resource=/crio_RMC/AI3;0;ReadMethodType=i16{63E6551C-3179-41DC-AA62-E61BD889B636}resource=/crio_RMC/AI12;0;ReadMethodType=i16{67140E46-6989-4DB8-9959-B21DC2A35CFE}resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=bool{6719D2D0-B776-426E-965D-61EBE47C3D6B}resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8{6754880B-9776-4BFA-83E6-EB2355FFB2F6}resource=/crio_RMC/AI9;0;ReadMethodType=i16{696D1580-4C7D-4B44-B906-862A55D19947}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=bool{69DF5F2D-1F0C-4BD4-A957-56B709CDECF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=bool{69E20EF2-AEA7-4425-8F02-2841A922D4C3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8{6BC0F18B-73F4-4E72-969A-1EC73BFF82D4}resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=bool{6C1B67FC-E8AC-45AA-9682-040AD17E5675}resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16{6DEB01B2-A60D-4F3A-A4B1-4ADEFAEEF54B}resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=bool{6E16B542-2488-4A25-A8E0-17A8C8923E2D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=bool{74667346-755C-4D02-AED6-E17533878402}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=bool{7502D4E7-1CDB-4506-9727-1FB62EBCB1A8}resource=/crio_RMC/AI11;0;ReadMethodType=i16{763242DC-E47F-4A11-81E6-88CE3BF39B76}resource=/Scan Clock;0;ReadMethodType=bool{79218C85-6E20-4DA7-BA17-19308D2DBAB8}resource=/crio_RMC/AI14;0;ReadMethodType=i16{810747AA-524E-4211-95E6-BD9DB41738ED}resource=/crio_RMC/DIa9;0;ReadMethodType=bool{847656B8-F7A2-4D10-A50A-9D043975D01F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=bool{84BE08DE-F1FB-4D6F-A438-3531D8008337}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=bool{86416498-5EBD-4CDE-84F2-89EA59E3665D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=bool{86608F46-576C-471D-A9BC-B53890A2ED69}resource=/crio_RMC/DIb4;0;ReadMethodType=bool{8823FF73-5120-40CE-A4C9-588F7FF9D732}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=bool{892FB300-F788-47BF-890F-FA98258A8CFC}resource=/crio_RMC/DIb0;0;ReadMethodType=bool{89C70C62-81E3-41BD-8D04-0FC777AF36EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=bool{8B61B441-A938-40DB-A1B6-6827E5A01D8D}resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8{8B7F5016-E590-4CC2-AE1D-4458E62260C9}resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=bool{8BE0CE45-E71A-4B23-9D30-E52CF08F8208}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=bool{8C1EF6EE-5DA4-4B78-80BC-F5AB3086E9A2}resource=/crio_RMC/AI5;0;ReadMethodType=i16{8C9F2235-CCCF-4F8C-81CE-19A4B8A8CC3E}resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16{8E9D46E6-42A7-4F0D-974D-9089B4EC7F57}resource=/crio_RMC/DIb2;0;ReadMethodType=bool{91EA6260-3FA3-47B1-813C-5B1A896D3167}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=bool{92D06E1C-D561-405A-B3F2-BE30EC640AD5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=bool{92DC0A43-8190-4269-90A0-67D6BADEA7C1}resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16{941C08CD-A0BF-45FF-BCC7-8067DB9CEE73}resource=/crio_RMC/AI0;0;ReadMethodType=i16{9525E896-20FB-4525-B56F-3F988703DBAB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=bool{96EFF483-612B-45C7-9C63-16FB13F4F6D3}resource=/crio_RMC/AI6;0;ReadMethodType=i16{99E88D7B-C30C-4610-B3D1-E7D1F5156AAA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9D8C544A-3C7E-411E-BC68-EA1BADE271A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=bool{9DED412C-6A54-4C45-8903-5D96DDFEA5F7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=bool{9E3C1E65-EF92-4D10-9B93-32927FBD5294}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=bool{A0421769-CDC8-460D-A7E4-1C194B0BEF98}[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]{A0CF5F6D-FED1-4A6A-A754-60BC806C3D1A}resource=/crio_RMC/DIb7;0;ReadMethodType=bool{A1B29FEA-010B-4CBA-BD68-F53454C7F2B3}resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8{A2BAA69E-725B-4BB9-AE04-8B65BB9383DB}resource=/crio_RMC/DIb3;0;ReadMethodType=bool{A41EE926-0C19-431D-BE1B-9024241F9DE2}resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16{A4618DD5-667F-469D-9DF3-E60D2D287CF0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=bool{A4BD2E18-3D34-469F-B3FE-36D9FF640DDA}resource=/crio_RMC/DIb11;0;ReadMethodType=bool{A52FA93E-EBD9-49D7-990B-713A230E555B}resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=bool{A5915504-112B-4EA5-A6FB-5710483CE436}resource=/crio_RMC/AI8;0;ReadMethodType=i16{A6FFE19A-DEDB-47E9-AB34-14927709C1CB}resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=bool{A9928D02-88F3-4897-8910-2223285BFB49}resource=/crio_RMC/DIa5;0;ReadMethodType=bool{AA94B108-BAA4-48A2-930F-C40D5D907D72}resource=/crio_RMC/DIb5;0;ReadMethodType=bool{AADBB53B-697D-4BAF-ACB6-CFB1DC81642F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=bool{AB9BF675-B3BF-457D-B1E8-E1C671F38DA6}resource=/crio_RMC/AI13;0;ReadMethodType=i16{AEBD645E-716D-4735-838F-82A1565B5635}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{AF7671BA-F8BF-4EB9-839D-08D783B2CE45}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=bool{AFBF8038-2A41-4829-B921-189645BF6274}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=bool{B1842242-9407-4343-8001-42352E17F018}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=bool{B394527B-A574-46F2-BF8A-84511FD0D376}resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=bool{B3FF1AD7-FFC1-49AF-900A-0980FC24D019}resource=/crio_RMC/DIb13;0;ReadMethodType=bool{BA87661D-D28F-4B2B-AE49-9DF85D661856}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=bool{BB0FE01C-58F6-4B08-86E3-FC0231F45373}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=bool{BC473314-1B9D-4929-90A6-D7C6BEEB578C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=bool{BC74E23E-39E2-4CF6-A4D9-D6DF02D84050}resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8{BF57BD0D-0A92-4AF0-84D6-898D662D0E08}resource=/crio_RMC/DIb9;0;ReadMethodType=bool{C061A3FC-937B-4A73-B4BC-554E672E7F8C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=bool{C2249B6E-B521-4939-8DE6-FD22632B9E51}resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16{C4C805B8-F6AC-46C2-8C3F-B45D2904966F}resource=/crio_RMC/DIa4;0;ReadMethodType=bool{C574D2FF-E69E-4479-ABCA-50BCEADDFEF5}resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=bool{C843E959-CE66-429A-980B-9C6BEFEB2DFC}resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8{C8C4FF79-6023-4ADD-BDEB-A6B402821915}resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16{CB333BCC-8D4A-48FD-991B-38C68ACE19B9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{CBC8355B-16AB-4F9F-9C86-D5673BC3783E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=bool{CDA044C3-19C9-4205-AC5B-F34994939899}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=bool{CDC156B1-4555-470A-BAE2-73E0FA411B51}resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16{D121B253-E854-4204-8B4E-3003695BBAD1}resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16{D1F80F6D-E1CA-4B7F-83AE-9746D156BD73}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32{D3B835D9-4C34-4521-83E6-0C0578DD6769}resource=/crio_RMC/DIb8;0;ReadMethodType=bool{D3D5C693-8C2F-438F-84D4-8A26BC002729}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8{D4D52F93-0810-4076-B066-5472C3A69D18}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=bool{D5568028-0BE6-46C5-AA26-C8E016858DC5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=bool{D61E555D-85BA-4FBE-8BE9-EE6D98BE46E3}resource=/crio_RMC/AI2;0;ReadMethodType=i16{D785343C-DDF1-499C-9608-14747F9584F7}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D7E75029-C4BA-465D-9D71-8EA7205977C3}resource=/crio_RMC/DIa3;0;ReadMethodType=bool{DCD856AC-5A9B-4E01-A0E1-E261DBE25EF0}resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16{DDF87F58-2687-4877-B534-2F689C6F5241}resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16{DEDB3634-A7A2-4700-A6F1-02679C7C6462}resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=bool{E35C862A-1311-4891-9267-6EBD860E7AF0}resource=/crio_RMC/DIa0;0;ReadMethodType=bool{E39F9E75-57DC-4DCC-BB5B-48A301B38103}resource=/crio_RMC/AI10;0;ReadMethodType=i16{E4A86D69-1A38-419E-AD3E-F223F769187A}resource=/crio_RMC/DIb6;0;ReadMethodType=bool{E5BD2551-70CF-4949-8DC3-6177B75C2567}resource=/crio_RMC/DIa13;0;ReadMethodType=bool{E68A3915-6133-46B4-A1FF-ADB142247919}resource=/crio_RMC/AI15;0;ReadMethodType=i16{E84D5709-5940-4418-90FC-E6216AA0F3C5}resource=/crio_RMC/DIa1;0;ReadMethodType=bool{EAE1267D-7A2F-415B-AE77-062F28267C17}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=bool{ECCBF294-D364-45BA-9A75-416D85D63EE6}resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=bool{ED0D63F3-119F-4318-988D-AFC8FA0DA65A}resource=/crio_RMC/DIa11;0;ReadMethodType=bool{EF7F42A5-B6F2-432E-9D30-1363B7E90AAC}resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=bool{F13F36F7-918E-4858-A3FD-382EFFA284E1}resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16{F2800472-34C3-4368-8270-343BF347648A}resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8{F5F809F5-3D7A-439E-8D9F-E2CC081A2E86}resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16{F9DCE347-EE96-4541-8703-498AEEF66CAD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=bool{FCB1844E-6C92-433E-B445-A3BEA3CF766F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=bool{FCFCECEC-51C8-4768-8485-A6455CA5F8A5}resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=bool{FE230841-83A1-4D6C-BAC8-7092B632D8F9}resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=bool{FF1AD92C-24D9-464F-970F-30C40F5F1C72}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ConnectDCLinksArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=boolDataSGL0"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"DataSGL1"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolI0_BuckBoostresource=/crio_RMC/AI0;0;ReadMethodType=i16I1_BuckBoostresource=/crio_RMC/AI1;0;ReadMethodType=i16I2_BuckBoostresource=/crio_RMC/AI2;0;ReadMethodType=i16Iu_AFEresource=/crio_RMC/AI8;0;ReadMethodType=i16Iv_AFEresource=/crio_RMC/AI9;0;ReadMethodType=i16Iw_AFEresource=/crio_RMC/AI10;0;ReadMethodType=i16MainContactorArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=boolPrechargeAFEArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=boolPrechargeBuckBoostArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"RMC/AO/AO0resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16RMC/AO/AO1resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16RMC/AO/AO2resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16RMC/AO/AO3resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16RMC/AO/AO4resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16RMC/AO/AO5resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16RMC/AO/AO6resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16RMC/AO/AO7resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16RMC/Half-Bridge/DO0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO10ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO11ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO12ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO13:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16RMC/Half-Bridge/DO13:8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO13ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO7:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO17ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO18ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO19ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO20ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO21ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO22ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO23:16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO23ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO25ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO26ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO27ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO28ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO29ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO30ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO31:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/LVTTL/DIO31:24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO31ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Relay Control/DO3:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Scanned/AI0resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16RMC/Scanned/AI1resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16RMC/Scanned/AI2resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16RMC/Scanned/AI3resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16RMC/Scanned/AI4resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16RMC/Scanned/AI5resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16RMC/Scanned/AI6resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16RMC/Scanned/AI7resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16RMC/Sinking/DO0resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO10resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO11resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO12resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO13resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO14resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO15:8resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO15resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO16resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO17resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO18resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO19resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO1resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO20resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO21resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO22resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO23:0resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/Sinking/DO23:16resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO23resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO2resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO3resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO4resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO5resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO6resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO7:0resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO7resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO8resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO9resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sourcing P0/DI0resource=/crio_RMC/DIa0;0;ReadMethodType=boolRMC/Sourcing P0/DI10resource=/crio_RMC/DIa10;0;ReadMethodType=boolRMC/Sourcing P0/DI11resource=/crio_RMC/DIa11;0;ReadMethodType=boolRMC/Sourcing P0/DI12resource=/crio_RMC/DIa12;0;ReadMethodType=boolRMC/Sourcing P0/DI13:0resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16RMC/Sourcing P0/DI13:8resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8RMC/Sourcing P0/DI13resource=/crio_RMC/DIa13;0;ReadMethodType=boolRMC/Sourcing P0/DI1resource=/crio_RMC/DIa1;0;ReadMethodType=boolRMC/Sourcing P0/DI2resource=/crio_RMC/DIa2;0;ReadMethodType=boolRMC/Sourcing P0/DI3resource=/crio_RMC/DIa3;0;ReadMethodType=boolRMC/Sourcing P0/DI4resource=/crio_RMC/DIa4;0;ReadMethodType=boolRMC/Sourcing P0/DI5resource=/crio_RMC/DIa5;0;ReadMethodType=boolRMC/Sourcing P0/DI6resource=/crio_RMC/DIa6;0;ReadMethodType=boolRMC/Sourcing P0/DI7:0resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8RMC/Sourcing P0/DI7resource=/crio_RMC/DIa7;0;ReadMethodType=boolRMC/Sourcing P0/DI8resource=/crio_RMC/DIa8;0;ReadMethodType=boolRMC/Sourcing P0/DI9resource=/crio_RMC/DIa9;0;ReadMethodType=boolRMC/Sourcing P1/DI0resource=/crio_RMC/DIb0;0;ReadMethodType=boolRMC/Sourcing P1/DI10resource=/crio_RMC/DIb10;0;ReadMethodType=boolRMC/Sourcing P1/DI11resource=/crio_RMC/DIb11;0;ReadMethodType=boolRMC/Sourcing P1/DI12resource=/crio_RMC/DIb12;0;ReadMethodType=boolRMC/Sourcing P1/DI13:0resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16RMC/Sourcing P1/DI13:8resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8RMC/Sourcing P1/DI13resource=/crio_RMC/DIb13;0;ReadMethodType=boolRMC/Sourcing P1/DI1resource=/crio_RMC/DIb1;0;ReadMethodType=boolRMC/Sourcing P1/DI2resource=/crio_RMC/DIb2;0;ReadMethodType=boolRMC/Sourcing P1/DI3resource=/crio_RMC/DIb3;0;ReadMethodType=boolRMC/Sourcing P1/DI4resource=/crio_RMC/DIb4;0;ReadMethodType=boolRMC/Sourcing P1/DI5resource=/crio_RMC/DIb5;0;ReadMethodType=boolRMC/Sourcing P1/DI6resource=/crio_RMC/DIb6;0;ReadMethodType=boolRMC/Sourcing P1/DI7:0resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8RMC/Sourcing P1/DI7resource=/crio_RMC/DIb7;0;ReadMethodType=boolRMC/Sourcing P1/DI8resource=/crio_RMC/DIb8;0;ReadMethodType=boolRMC/Sourcing P1/DI9resource=/crio_RMC/DIb9;0;ReadMethodType=boolRMC[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolV0_BuckBoostresource=/crio_RMC/AI5;0;ReadMethodType=i16V1_BuckBoostresource=/crio_RMC/AI6;0;ReadMethodType=i16V2_BuckBoostresource=/crio_RMC/AI7;0;ReadMethodType=i16VDCLink_AFEresource=/crio_RMC/AI15;0;ReadMethodType=i16VDCLink_BuckBoostresource=/crio_RMC/AI4;0;ReadMethodType=i16Vgrid_BuckBoostresource=/crio_RMC/AI3;0;ReadMethodType=i16VLoad_BuckBoostresource=/crio_RMC/AI11;0;ReadMethodType=i16Vu_AFEresource=/crio_RMC/AI12;0;ReadMethodType=i16Vv_AFEresource=/crio_RMC/AI13;0;ReadMethodType=i16Vw_AFEresource=/crio_RMC/AI14;0;ReadMethodType=i16</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\GridTiedBatteryCharger\dev\Controller\FPGA\Bitfiles\BaseApplication_FPGATarget_Firmware_z2n+kSWRtT0.lvbitx</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="RMC" Type="RIO Mezzanine Card">
					<Property Name="crio.Calibration" Type="Str">0</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9683</Property>
					<Property Name="cRIOModule.AiBank0.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank1.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank2.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank3.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank4.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank5.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank6.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AiBank7.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.DisableSpiDoArbitration" Type="Str">false</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.InitialLineDirection" Type="Str">00000000000000000000000000000000</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{A0421769-CDC8-460D-A7E4-1C194B0BEF98}</Property>
				</Item>
				<Item Name="RMC Socket" Type="FPGA Component Level IP">
					<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
					<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
					<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">RMC Socket</Property>
					<Property Name="NI.LV.CLIP.SocketSpecificCompileSignature" Type="Str"></Property>
					<Property Name="NI.LV.CLIP.Version" Type="UInt">4</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.SortType" Type="Int">3</Property>
				</Item>
				<Item Name="RawSimultaneousRead.vi" Type="VI" URL="../Controller/FPGA/RawSimultaneousRead.vi">
					<Property Name="BuildSpec" Type="Str">{7A9EB85F-AEB4-4273-9346-D65510C56431}</Property>
					<Property Name="configString.guid" Type="Str">{01A2630C-059F-4D95-B81C-E5D4353E9D61}resource=/crio_RMC/DIa8;0;ReadMethodType=bool{063EBA6D-E451-4389-9B15-451F790A5DFA}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{0A41329C-FDE4-400F-86AD-25E9E9C9EC0B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=bool{0AC83C1F-0938-40C0-98DA-9D191AEDFBC7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=bool{0AD62825-BA53-46B1-AC67-6688C497A91E}resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=bool{0CCC9C10-495A-48AF-8B6F-5981DFC159FA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=bool{0E9FB647-BF28-476D-AAD2-381893EF36A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8{0FA349FA-800E-4DFC-A556-08F00FCE6C9E}resource=/crio_RMC/DIa12;0;ReadMethodType=bool{16482E05-FDCD-442D-B832-C88BB3BFB861}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{16E622EF-9C17-425A-AE03-E9B2F538976B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=bool{17EFC13C-B1C1-4C11-B90C-372D05FE9B9A}resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32{1AF6A041-E4CD-49F9-B475-75DD6D22F52B}resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16{1B9C4ED8-BD95-4359-8DE4-FD1517021736}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=bool{20C3D864-76DB-4672-9B5E-999C7147EE68}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=bool{22E43360-0C5D-4663-A05C-1C1C4CD68FB3}resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=bool{24D29CAE-CA25-4686-A349-6601FD2DF967}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=bool{2644A2C7-C119-41C0-B060-F6D7E0672BAE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=bool{26C942AD-8363-4401-89F8-F09DB73689A2}resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16{28E15E85-8FED-48B8-A6B4-6F84DB752FDC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=bool{293CFFE5-7911-4F82-BFEC-1232DED6C5F2}resource=/crio_RMC/DIb12;0;ReadMethodType=bool{2A85DD60-83E2-48CD-BABD-9D7B5FC95E65}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=bool{2CE80CB6-06E1-4AE6-8DC7-4683C54D66BF}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=bool{2D2CF5E4-1190-4390-A9AD-87B7D7F4C45B}resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=bool{33119FA0-9445-4EFC-8E0A-7A924C3C46D4}resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16{3398E60F-E09E-425F-B79B-63B70D8475C2}resource=/crio_RMC/DIa6;0;ReadMethodType=bool{33B86B3E-1A07-46B0-9B1F-F67AB497B7D6}resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=bool{34CBB886-96F8-4F04-AE43-E1EEE89CC68D}resource=/crio_RMC/DIb1;0;ReadMethodType=bool{387CBB2D-AAFB-4B8F-AC5B-60C979070E5D}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8{3A4D75E5-9461-411A-9C03-D0A56EBAFE2E}resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=bool{3E74287F-5DA1-4F33-8C57-DD68DAB339B1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=bool{3F096F62-D671-4515-AA0D-2875A57D1134}resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=bool{3F8A0E02-E82C-48B5-A209-1C2AFB7E8F76}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16{3FAC7847-BE93-4380-8F40-F6A79EFD6E8E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=bool{416245D0-5434-4FB4-B5B9-CB5CBD37E469}resource=/crio_RMC/DIa2;0;ReadMethodType=bool{42497FA1-CB0B-416E-B882-A432335CC5AA}resource=/crio_RMC/DIb10;0;ReadMethodType=bool{4289CC0A-7965-4145-A432-DD9616034FFB}resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=bool{43D7949D-6F52-4362-9DB5-5D5D9C923407}resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16{44665D5E-1617-4711-98A4-0D2A06B32CD8}resource=/crio_RMC/AI1;0;ReadMethodType=i16{4526A76D-479B-4491-8688-D65A89CAA85B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=bool{47F5B121-8AE8-460E-BA68-56D54F93A2B9}resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16{4A01E2C7-4142-4168-82F5-3695A64B9783}resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=bool{4D00E108-7E27-4C08-8175-53D97FF04800}resource=/crio_RMC/DIa7;0;ReadMethodType=bool{52BF2CD2-1D74-4118-B250-236F584EEB6B}resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=bool{53D6591B-CE4A-4782-8C65-A1D292F94C25}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{55E08BC4-8FB8-4671-BA34-A01DF1AC5523}resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16{57268C1F-2DD7-47D6-AC86-98F0DDB514BE}resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8{574EA4CA-9CB1-411A-B030-8E661419F355}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=bool{579B69C1-E1DD-4483-88DA-9550EBFE9068}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=bool{58D4FAF0-91D6-4946-8EB1-075CCD9DE4DC}resource=/crio_RMC/DIa10;0;ReadMethodType=bool{59C04699-E734-4F29-8731-E8F88E0E9611}resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=bool{5A9797D5-73B8-42CC-AC44-A2EDB1D69587}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{5CBC5AA5-09C6-449F-8BD7-A3417DF452E9}resource=/crio_RMC/AI4;0;ReadMethodType=i16{5F7CE28B-B6F6-4434-8687-2ABD53219F74}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8{61263C49-3A28-4A42-8AF1-F2D375958356}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=bool{61EB5E72-8461-4493-A81B-DBC8163C4335}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{627C9920-FE4C-4D47-AD8E-65BD9A76E9D0}resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=bool{6338A2AB-EB9D-4B02-A6C5-F7873C9DE18D}resource=/crio_RMC/AI7;0;ReadMethodType=i16{63CD04BD-7138-47A3-83DA-8E27AA02C55A}resource=/crio_RMC/AI3;0;ReadMethodType=i16{63E6551C-3179-41DC-AA62-E61BD889B636}resource=/crio_RMC/AI12;0;ReadMethodType=i16{67140E46-6989-4DB8-9959-B21DC2A35CFE}resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=bool{6719D2D0-B776-426E-965D-61EBE47C3D6B}resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8{6754880B-9776-4BFA-83E6-EB2355FFB2F6}resource=/crio_RMC/AI9;0;ReadMethodType=i16{696D1580-4C7D-4B44-B906-862A55D19947}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=bool{69DF5F2D-1F0C-4BD4-A957-56B709CDECF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=bool{69E20EF2-AEA7-4425-8F02-2841A922D4C3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8{6BC0F18B-73F4-4E72-969A-1EC73BFF82D4}resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=bool{6C1B67FC-E8AC-45AA-9682-040AD17E5675}resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16{6DEB01B2-A60D-4F3A-A4B1-4ADEFAEEF54B}resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=bool{6E16B542-2488-4A25-A8E0-17A8C8923E2D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=bool{74667346-755C-4D02-AED6-E17533878402}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=bool{7502D4E7-1CDB-4506-9727-1FB62EBCB1A8}resource=/crio_RMC/AI11;0;ReadMethodType=i16{763242DC-E47F-4A11-81E6-88CE3BF39B76}resource=/Scan Clock;0;ReadMethodType=bool{79218C85-6E20-4DA7-BA17-19308D2DBAB8}resource=/crio_RMC/AI14;0;ReadMethodType=i16{810747AA-524E-4211-95E6-BD9DB41738ED}resource=/crio_RMC/DIa9;0;ReadMethodType=bool{847656B8-F7A2-4D10-A50A-9D043975D01F}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=bool{84BE08DE-F1FB-4D6F-A438-3531D8008337}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=bool{86416498-5EBD-4CDE-84F2-89EA59E3665D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=bool{86608F46-576C-471D-A9BC-B53890A2ED69}resource=/crio_RMC/DIb4;0;ReadMethodType=bool{8823FF73-5120-40CE-A4C9-588F7FF9D732}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=bool{892FB300-F788-47BF-890F-FA98258A8CFC}resource=/crio_RMC/DIb0;0;ReadMethodType=bool{89C70C62-81E3-41BD-8D04-0FC777AF36EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=bool{8B61B441-A938-40DB-A1B6-6827E5A01D8D}resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8{8B7F5016-E590-4CC2-AE1D-4458E62260C9}resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=bool{8BE0CE45-E71A-4B23-9D30-E52CF08F8208}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=bool{8C1EF6EE-5DA4-4B78-80BC-F5AB3086E9A2}resource=/crio_RMC/AI5;0;ReadMethodType=i16{8C9F2235-CCCF-4F8C-81CE-19A4B8A8CC3E}resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16{8E9D46E6-42A7-4F0D-974D-9089B4EC7F57}resource=/crio_RMC/DIb2;0;ReadMethodType=bool{91EA6260-3FA3-47B1-813C-5B1A896D3167}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=bool{92D06E1C-D561-405A-B3F2-BE30EC640AD5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=bool{92DC0A43-8190-4269-90A0-67D6BADEA7C1}resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16{941C08CD-A0BF-45FF-BCC7-8067DB9CEE73}resource=/crio_RMC/AI0;0;ReadMethodType=i16{9525E896-20FB-4525-B56F-3F988703DBAB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=bool{96EFF483-612B-45C7-9C63-16FB13F4F6D3}resource=/crio_RMC/AI6;0;ReadMethodType=i16{99E88D7B-C30C-4610-B3D1-E7D1F5156AAA}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9D8C544A-3C7E-411E-BC68-EA1BADE271A7}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=bool{9DED412C-6A54-4C45-8903-5D96DDFEA5F7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=bool{9E3C1E65-EF92-4D10-9B93-32927FBD5294}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=bool{A0421769-CDC8-460D-A7E4-1C194B0BEF98}[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]{A0CF5F6D-FED1-4A6A-A754-60BC806C3D1A}resource=/crio_RMC/DIb7;0;ReadMethodType=bool{A1B29FEA-010B-4CBA-BD68-F53454C7F2B3}resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8{A2BAA69E-725B-4BB9-AE04-8B65BB9383DB}resource=/crio_RMC/DIb3;0;ReadMethodType=bool{A41EE926-0C19-431D-BE1B-9024241F9DE2}resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16{A4618DD5-667F-469D-9DF3-E60D2D287CF0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=bool{A4BD2E18-3D34-469F-B3FE-36D9FF640DDA}resource=/crio_RMC/DIb11;0;ReadMethodType=bool{A52FA93E-EBD9-49D7-990B-713A230E555B}resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=bool{A5915504-112B-4EA5-A6FB-5710483CE436}resource=/crio_RMC/AI8;0;ReadMethodType=i16{A6FFE19A-DEDB-47E9-AB34-14927709C1CB}resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=bool{A9928D02-88F3-4897-8910-2223285BFB49}resource=/crio_RMC/DIa5;0;ReadMethodType=bool{AA94B108-BAA4-48A2-930F-C40D5D907D72}resource=/crio_RMC/DIb5;0;ReadMethodType=bool{AADBB53B-697D-4BAF-ACB6-CFB1DC81642F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=bool{AB9BF675-B3BF-457D-B1E8-E1C671F38DA6}resource=/crio_RMC/AI13;0;ReadMethodType=i16{AEBD645E-716D-4735-838F-82A1565B5635}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{AF7671BA-F8BF-4EB9-839D-08D783B2CE45}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=bool{AFBF8038-2A41-4829-B921-189645BF6274}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=bool{B1842242-9407-4343-8001-42352E17F018}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=bool{B394527B-A574-46F2-BF8A-84511FD0D376}resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=bool{B3FF1AD7-FFC1-49AF-900A-0980FC24D019}resource=/crio_RMC/DIb13;0;ReadMethodType=bool{BA87661D-D28F-4B2B-AE49-9DF85D661856}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=bool{BB0FE01C-58F6-4B08-86E3-FC0231F45373}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=bool{BC473314-1B9D-4929-90A6-D7C6BEEB578C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=bool{BC74E23E-39E2-4CF6-A4D9-D6DF02D84050}resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8{BF57BD0D-0A92-4AF0-84D6-898D662D0E08}resource=/crio_RMC/DIb9;0;ReadMethodType=bool{C061A3FC-937B-4A73-B4BC-554E672E7F8C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=bool{C2249B6E-B521-4939-8DE6-FD22632B9E51}resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16{C4C805B8-F6AC-46C2-8C3F-B45D2904966F}resource=/crio_RMC/DIa4;0;ReadMethodType=bool{C574D2FF-E69E-4479-ABCA-50BCEADDFEF5}resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=bool{C843E959-CE66-429A-980B-9C6BEFEB2DFC}resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8{C8C4FF79-6023-4ADD-BDEB-A6B402821915}resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16{CB333BCC-8D4A-48FD-991B-38C68ACE19B9}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{CBC8355B-16AB-4F9F-9C86-D5673BC3783E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=bool{CDA044C3-19C9-4205-AC5B-F34994939899}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=bool{CDC156B1-4555-470A-BAE2-73E0FA411B51}resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16{D121B253-E854-4204-8B4E-3003695BBAD1}resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16{D1F80F6D-E1CA-4B7F-83AE-9746D156BD73}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32{D3B835D9-4C34-4521-83E6-0C0578DD6769}resource=/crio_RMC/DIb8;0;ReadMethodType=bool{D3D5C693-8C2F-438F-84D4-8A26BC002729}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8{D4D52F93-0810-4076-B066-5472C3A69D18}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=bool{D5568028-0BE6-46C5-AA26-C8E016858DC5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=bool{D61E555D-85BA-4FBE-8BE9-EE6D98BE46E3}resource=/crio_RMC/AI2;0;ReadMethodType=i16{D785343C-DDF1-499C-9608-14747F9584F7}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"{D7E75029-C4BA-465D-9D71-8EA7205977C3}resource=/crio_RMC/DIa3;0;ReadMethodType=bool{DCD856AC-5A9B-4E01-A0E1-E261DBE25EF0}resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16{DDF87F58-2687-4877-B534-2F689C6F5241}resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16{DEDB3634-A7A2-4700-A6F1-02679C7C6462}resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=bool{E35C862A-1311-4891-9267-6EBD860E7AF0}resource=/crio_RMC/DIa0;0;ReadMethodType=bool{E39F9E75-57DC-4DCC-BB5B-48A301B38103}resource=/crio_RMC/AI10;0;ReadMethodType=i16{E4A86D69-1A38-419E-AD3E-F223F769187A}resource=/crio_RMC/DIb6;0;ReadMethodType=bool{E5BD2551-70CF-4949-8DC3-6177B75C2567}resource=/crio_RMC/DIa13;0;ReadMethodType=bool{E68A3915-6133-46B4-A1FF-ADB142247919}resource=/crio_RMC/AI15;0;ReadMethodType=i16{E84D5709-5940-4418-90FC-E6216AA0F3C5}resource=/crio_RMC/DIa1;0;ReadMethodType=bool{EAE1267D-7A2F-415B-AE77-062F28267C17}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=bool{ECCBF294-D364-45BA-9A75-416D85D63EE6}resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=bool{ED0D63F3-119F-4318-988D-AFC8FA0DA65A}resource=/crio_RMC/DIa11;0;ReadMethodType=bool{EF7F42A5-B6F2-432E-9D30-1363B7E90AAC}resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=bool{F13F36F7-918E-4858-A3FD-382EFFA284E1}resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16{F2800472-34C3-4368-8270-343BF347648A}resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8{F5F809F5-3D7A-439E-8D9F-E2CC081A2E86}resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16{F9DCE347-EE96-4541-8703-498AEEF66CAD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=bool{FCB1844E-6C92-433E-B445-A3BEA3CF766F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=bool{FCFCECEC-51C8-4768-8485-A6455CA5F8A5}resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=bool{FE230841-83A1-4D6C-BAC8-7092B632D8F9}resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=bool{FF1AD92C-24D9-464F-970F-30C40F5F1C72}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;ConnectDCLinksArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch0;0;ReadMethodType=bool;WriteMethodType=boolDataSGL0"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"DataSGL1"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DataSGL;DataType=100080000000000100094009000353474C000100000000000000000000;DisableOnOverflowUnderflow=FALSE"FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolI0_BuckBoostresource=/crio_RMC/AI0;0;ReadMethodType=i16I1_BuckBoostresource=/crio_RMC/AI1;0;ReadMethodType=i16I2_BuckBoostresource=/crio_RMC/AI2;0;ReadMethodType=i16Iu_AFEresource=/crio_RMC/AI8;0;ReadMethodType=i16Iv_AFEresource=/crio_RMC/AI9;0;ReadMethodType=i16Iw_AFEresource=/crio_RMC/AI10;0;ReadMethodType=i16MainContactorArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch1;0;ReadMethodType=bool;WriteMethodType=boolPrechargeAFEArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch2;0;ReadMethodType=bool;WriteMethodType=boolPrechargeBuckBoostArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"RMC/AO/AO0resource=/crio_RMC/SpiAo0;0;WriteMethodType=i16RMC/AO/AO1resource=/crio_RMC/SpiAo1;0;WriteMethodType=i16RMC/AO/AO2resource=/crio_RMC/SpiAo2;0;WriteMethodType=i16RMC/AO/AO3resource=/crio_RMC/SpiAo3;0;WriteMethodType=i16RMC/AO/AO4resource=/crio_RMC/SpiAo4;0;WriteMethodType=i16RMC/AO/AO5resource=/crio_RMC/SpiAo5;0;WriteMethodType=i16RMC/AO/AO6resource=/crio_RMC/SpiAo6;0;WriteMethodType=i16RMC/AO/AO7resource=/crio_RMC/SpiAo7;0;WriteMethodType=i16RMC/Half-Bridge/DO0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO10ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO11ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO12ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO13:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:0;0;ReadMethodType=u16;WriteMethodType=u16RMC/Half-Bridge/DO13:8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO13ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO7:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Half-Bridge/DO7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Half-Bridge/DO9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Hsdo9;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO0;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO10;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO11;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO12;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO13;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO14;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO15;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO16;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO17ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO17;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO18ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO18;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO19ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO19;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO1;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO20ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO20;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO21ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO21;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO22ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO22;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO23:16ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO23ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO23;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO24;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO25ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO25;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO26ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO26;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO27ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO27;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO28ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO28;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO29ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO29;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO2;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO30ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO30;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO31:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/LVTTL/DIO31:24ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31:24;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO31ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO31;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO3;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO4;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO5;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO6;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/LVTTL/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO7;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO8;0;ReadMethodType=bool;WriteMethodType=boolRMC/LVTTL/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/ExpDIO9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Relay Control/DO3:0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/crio_RMC/Ch3:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Scanned/AI0resource=/crio_RMC/SpiAi0;0;ReadMethodType=i16RMC/Scanned/AI1resource=/crio_RMC/SpiAi1;0;ReadMethodType=i16RMC/Scanned/AI2resource=/crio_RMC/SpiAi2;0;ReadMethodType=i16RMC/Scanned/AI3resource=/crio_RMC/SpiAi3;0;ReadMethodType=i16RMC/Scanned/AI4resource=/crio_RMC/SpiAi4;0;ReadMethodType=i16RMC/Scanned/AI5resource=/crio_RMC/SpiAi5;0;ReadMethodType=i16RMC/Scanned/AI6resource=/crio_RMC/SpiAi6;0;ReadMethodType=i16RMC/Scanned/AI7resource=/crio_RMC/SpiAi7;0;ReadMethodType=i16RMC/Sinking/DO0resource=/crio_RMC/Do0;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO10resource=/crio_RMC/Do10;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO11resource=/crio_RMC/Do11;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO12resource=/crio_RMC/Do12;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO13resource=/crio_RMC/Do13;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO14resource=/crio_RMC/Do14;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO15:8resource=/crio_RMC/DO15:8;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO15resource=/crio_RMC/Do15;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO16resource=/crio_RMC/Do16;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO17resource=/crio_RMC/Do17;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO18resource=/crio_RMC/Do18;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO19resource=/crio_RMC/Do19;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO1resource=/crio_RMC/Do1;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO20resource=/crio_RMC/Do20;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO21resource=/crio_RMC/Do21;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO22resource=/crio_RMC/Do22;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO23:0resource=/crio_RMC/Do23:0;0;ReadMethodType=u32;WriteMethodType=u32RMC/Sinking/DO23:16resource=/crio_RMC/DO23:16;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO23resource=/crio_RMC/Do23;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO2resource=/crio_RMC/Do2;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO3resource=/crio_RMC/Do3;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO4resource=/crio_RMC/Do4;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO5resource=/crio_RMC/Do5;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO6resource=/crio_RMC/Do6;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO7:0resource=/crio_RMC/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8RMC/Sinking/DO7resource=/crio_RMC/Do7;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO8resource=/crio_RMC/Do8;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sinking/DO9resource=/crio_RMC/Do9;0;ReadMethodType=bool;WriteMethodType=boolRMC/Sourcing P0/DI0resource=/crio_RMC/DIa0;0;ReadMethodType=boolRMC/Sourcing P0/DI10resource=/crio_RMC/DIa10;0;ReadMethodType=boolRMC/Sourcing P0/DI11resource=/crio_RMC/DIa11;0;ReadMethodType=boolRMC/Sourcing P0/DI12resource=/crio_RMC/DIa12;0;ReadMethodType=boolRMC/Sourcing P0/DI13:0resource=/crio_RMC/DIa13:0;0;ReadMethodType=u16RMC/Sourcing P0/DI13:8resource=/crio_RMC/DIa13:8;0;ReadMethodType=u8RMC/Sourcing P0/DI13resource=/crio_RMC/DIa13;0;ReadMethodType=boolRMC/Sourcing P0/DI1resource=/crio_RMC/DIa1;0;ReadMethodType=boolRMC/Sourcing P0/DI2resource=/crio_RMC/DIa2;0;ReadMethodType=boolRMC/Sourcing P0/DI3resource=/crio_RMC/DIa3;0;ReadMethodType=boolRMC/Sourcing P0/DI4resource=/crio_RMC/DIa4;0;ReadMethodType=boolRMC/Sourcing P0/DI5resource=/crio_RMC/DIa5;0;ReadMethodType=boolRMC/Sourcing P0/DI6resource=/crio_RMC/DIa6;0;ReadMethodType=boolRMC/Sourcing P0/DI7:0resource=/crio_RMC/DIa7:0;0;ReadMethodType=u8RMC/Sourcing P0/DI7resource=/crio_RMC/DIa7;0;ReadMethodType=boolRMC/Sourcing P0/DI8resource=/crio_RMC/DIa8;0;ReadMethodType=boolRMC/Sourcing P0/DI9resource=/crio_RMC/DIa9;0;ReadMethodType=boolRMC/Sourcing P1/DI0resource=/crio_RMC/DIb0;0;ReadMethodType=boolRMC/Sourcing P1/DI10resource=/crio_RMC/DIb10;0;ReadMethodType=boolRMC/Sourcing P1/DI11resource=/crio_RMC/DIb11;0;ReadMethodType=boolRMC/Sourcing P1/DI12resource=/crio_RMC/DIb12;0;ReadMethodType=boolRMC/Sourcing P1/DI13:0resource=/crio_RMC/DIb13:0;0;ReadMethodType=u16RMC/Sourcing P1/DI13:8resource=/crio_RMC/DIb13:8;0;ReadMethodType=u8RMC/Sourcing P1/DI13resource=/crio_RMC/DIb13;0;ReadMethodType=boolRMC/Sourcing P1/DI1resource=/crio_RMC/DIb1;0;ReadMethodType=boolRMC/Sourcing P1/DI2resource=/crio_RMC/DIb2;0;ReadMethodType=boolRMC/Sourcing P1/DI3resource=/crio_RMC/DIb3;0;ReadMethodType=boolRMC/Sourcing P1/DI4resource=/crio_RMC/DIb4;0;ReadMethodType=boolRMC/Sourcing P1/DI5resource=/crio_RMC/DIb5;0;ReadMethodType=boolRMC/Sourcing P1/DI6resource=/crio_RMC/DIb6;0;ReadMethodType=boolRMC/Sourcing P1/DI7:0resource=/crio_RMC/DIb7:0;0;ReadMethodType=u8RMC/Sourcing P1/DI7resource=/crio_RMC/DIb7;0;ReadMethodType=boolRMC/Sourcing P1/DI8resource=/crio_RMC/DIb8;0;ReadMethodType=boolRMC/Sourcing P1/DI9resource=/crio_RMC/DIb9;0;ReadMethodType=boolRMC[crioConfig.Begin]crio.Calibration=0,crio.Location=,crio.Type=NI 9683,cRIOModule.AiBank0.VoltageRange=0,cRIOModule.AiBank1.VoltageRange=0,cRIOModule.AiBank2.VoltageRange=0,cRIOModule.AiBank3.VoltageRange=0,cRIOModule.AiBank4.VoltageRange=0,cRIOModule.AiBank5.VoltageRange=0,cRIOModule.AiBank6.VoltageRange=0,cRIOModule.AiBank7.VoltageRange=0,cRIOModule.DisableSpiDoArbitration=false,cRIOModule.InitialLineDirection=00000000000000000000000000000000[crioConfig.End]sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolV0_BuckBoostresource=/crio_RMC/AI5;0;ReadMethodType=i16V1_BuckBoostresource=/crio_RMC/AI6;0;ReadMethodType=i16V2_BuckBoostresource=/crio_RMC/AI7;0;ReadMethodType=i16VDCLink_AFEresource=/crio_RMC/AI15;0;ReadMethodType=i16VDCLink_BuckBoostresource=/crio_RMC/AI4;0;ReadMethodType=i16Vgrid_BuckBoostresource=/crio_RMC/AI3;0;ReadMethodType=i16VLoad_BuckBoostresource=/crio_RMC/AI11;0;ReadMethodType=i16Vu_AFEresource=/crio_RMC/AI12;0;ReadMethodType=i16Vv_AFEresource=/crio_RMC/AI13;0;ReadMethodType=i16Vw_AFEresource=/crio_RMC/AI14;0;ReadMethodType=i16</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\GridTiedBatteryCharger\dev\FPGA Bitfiles\GridTiedBatteryC_FPGATarget_RawSimultaneousR_NprcL1SSick.lvbitx</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="instr.lib" Type="Folder">
						<Item Name="niInstr Basic Elements v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/niInstr Basic Elements v1 FPGA.lvlib"/>
						<Item Name="niInstr FIFO Register Bus v1 FPGA.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/FPGA/niInstr FIFO Register Bus v1 FPGA.lvclass"/>
						<Item Name="niInstr FIFO Register Bus v1 Shared.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/Shared/niInstr FIFO Register Bus v1 Shared.lvlib"/>
						<Item Name="niInstr Instruction Framework Helper Classes v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Helper Classes/niInstr Instruction Framework Helper Classes v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework Interfaces v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Interfaces/niInstr Instruction Framework Interfaces v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework Top Level Bus v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Top Level Bus/niInstr Instruction Framework Top Level Bus v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Typedefs/niInstr Instruction Framework v1 FPGA.lvlib"/>
						<Item Name="DFlopBasicElements_C792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEPresetSimFiles/DFlopBasicElements_C792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="xsimkC792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEPresetSimFiles/xsim.dir/DFlopBasicElements/xsimkC792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="DFlopBasicElements_0B830B7E81994019B09E50CE7A175B36.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEResetSimFiles/DFlopBasicElements_0B830B7E81994019B09E50CE7A175B36.dll"/>
						<Item Name="xsimk0B830B7E81994019B09E50CE7A175B36.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEResetSimFiles/xsim.dir/DFlopBasicElements/xsimk0B830B7E81994019B09E50CE7A175B36.dll"/>
						<Item Name="DoubleSyncBasicElements_C792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DblSyncBEResetSimFiles/DoubleSyncBasicElements_C792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="MaxFanoutFf_E0EDB5E65B8B49DD8E163F5688E824C1.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_4SimFiles/MaxFanoutFf_E0EDB5E65B8B49DD8E163F5688E824C1.dll"/>
						<Item Name="xsimkE0EDB5E65B8B49DD8E163F5688E824C1.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_4SimFiles/xsim.dir/MaxFanoutFf/xsimkE0EDB5E65B8B49DD8E163F5688E824C1.dll"/>
						<Item Name="MaxFanoutFf_6A315D12FBC743E4ACD121A1951E87AC.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_8SimFiles/MaxFanoutFf_6A315D12FBC743E4ACD121A1951E87AC.dll"/>
						<Item Name="xsimk6A315D12FBC743E4ACD121A1951E87AC.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_8SimFiles/xsim.dir/MaxFanoutFf/xsimk6A315D12FBC743E4ACD121A1951E87AC.dll"/>
						<Item Name="MaxFanoutFf_36915C3B0A964A738AD3121E87CF92C2.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_16SimFiles/MaxFanoutFf_36915C3B0A964A738AD3121E87CF92C2.dll"/>
						<Item Name="xsimk36915C3B0A964A738AD3121E87CF92C2.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_16SimFiles/xsim.dir/MaxFanoutFf/xsimk36915C3B0A964A738AD3121E87CF92C2.dll"/>
						<Item Name="MaxFanoutFf_417FC7712F0F4A3C95450BAF224B3F38.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_32SimFiles/MaxFanoutFf_417FC7712F0F4A3C95450BAF224B3F38.dll"/>
						<Item Name="xsimk417FC7712F0F4A3C95450BAF224B3F38.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_32SimFiles/xsim.dir/MaxFanoutFf/xsimk417FC7712F0F4A3C95450BAF224B3F38.dll"/>
						<Item Name="FourInputGlitchFreeMuxBasicElements_B15BA4892E5F4023A51AA2E61B6FD011.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/GlitchlessMux_4InputSimFiles/FourInputGlitchFreeMuxBasicElements_B15BA4892E5F4023A51AA2E61B6FD011.dll"/>
						<Item Name="xsimkB15BA4892E5F4023A51AA2E61B6FD011.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/GlitchlessMux_4InputSimFiles/xsim.dir/FourInputGlitchFreeMuxBasicElements/xsimkB15BA4892E5F4023A51AA2E61B6FD011.dll"/>
					</Item>
					<Item Name="vi.lib" Type="Folder">
						<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
						<Item Name="ScaleAndLimit.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ScaleAndLimit/Core/ScaleAndLimit.lvlib"/>
						<Item Name="WaveformAddressSpace.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/WaveformAcq/FPGA/WaveformAddressSpace.lvclass"/>
						<Item Name="niFPGA U32 To SGL Cast.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/utilities/niFPGA U32 To SGL Cast.vi"/>
						<Item Name="xsimk_BAEB0EFF4B15497ABBB37471944D9EC5.dll" Type="Document" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ScaleAndLimit/Core/AIScale/I16ToSGL_convert/xsim.dir/I16ToSGL_convert_BAEB0EFF4B15497ABBB37471944D9EC5/xsimk_BAEB0EFF4B15497ABBB37471944D9EC5.dll"/>
						<Item Name="niFPGA SGL To U32 Cast.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/utilities/niFPGA SGL To U32 Cast.vi"/>
						<Item Name="ActiveFrontEnd.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE/ActiveFrontEnd.lvlib"/>
						<Item Name="SVPWM.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/SVPWM/SVPWM/SVPWM.lvlib"/>
						<Item Name="ThreePhasePLL.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ThreePhasePLL/FPGA/ThreePhasePLL.lvlib"/>
						<Item Name="BuckBoost.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/Buck-Boost/FPGA/BuckBoost.lvlib"/>
					</Item>
					<Item Name="user.lib" Type="Folder">
						<Item Name="FlpLib U32 to SGL Cast.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib U32 to SGL Cast.vi"/>
						<Item Name="FlpLib Multiply.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Multiply.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 0.vi"/>
						<Item Name="FlpLib Multiply Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Multiply Latency 0.vi"/>
						<Item Name="FlpLib General Error Handle.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib General Error Handle.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 1.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 2.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 3.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 4.vi"/>
						<Item Name="FlpLib Multiply SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Multiply SCTL Latency 0.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 0.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 4.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 3.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 2.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 1.vi"/>
						<Item Name="FlpLib In Range and Coerce.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib In Range and Coerce.vi"/>
						<Item Name="FlpLib Subtract Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Subtract Latency 0.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 0.vi"/>
						<Item Name="FlpLib Subtract SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Subtract SCTL Latency 0.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 4.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 3.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 2.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 1.vi"/>
						<Item Name="FlpLib Subtract.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Subtract.vi"/>
						<Item Name="FlpLib Add Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Add Latency 0.vi"/>
						<Item Name="FlpLib Add Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 0.vi"/>
						<Item Name="FlpLib Add SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Add SCTL Latency 0.vi"/>
						<Item Name="FlpLib Add Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 4.vi"/>
						<Item Name="FlpLib Add Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 3.vi"/>
						<Item Name="FlpLib Add Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 2.vi"/>
						<Item Name="FlpLib Add Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 1.vi"/>
						<Item Name="FlpLib Add.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Add.vi"/>
						<Item Name="FlpLib PI_Controller 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 0.vi"/>
						<Item Name="FlpLib PI_Controller 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 4.vi"/>
						<Item Name="FlpLib PI_Controller 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 3.vi"/>
						<Item Name="FlpLib PI_Controller 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 2.vi"/>
						<Item Name="FlpLib PI_Controller 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 1.vi"/>
						<Item Name="FlpLib PI_Controller.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/FlpLib PI_Controller.vi"/>
						<Item Name="FlpLib Compare Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Compare Latency 0.vi"/>
						<Item Name="FlpLib Less Than Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Less Than Shared Instance 0.vi"/>
						<Item Name="FlpLib Less Than SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Less Than SCTL Latency 0.vi"/>
						<Item Name="FlpLib Less Than Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Less Than Shared Instance 4.vi"/>
						<Item Name="FlpLib Less Than Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Less Than Shared Instance 3.vi"/>
						<Item Name="FlpLib Less Than Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Less Than Shared Instance 2.vi"/>
						<Item Name="FlpLib Less Than Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Less Than Shared Instance 1.vi"/>
						<Item Name="FlpLib Less Than.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Less Than.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 0.vi"/>
						<Item Name="FlpLib Greater Than SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Greater Than SCTL Latency 0.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 4.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 3.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 2.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 1.vi"/>
						<Item Name="FlpLib Greater Than.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Greater Than.vi"/>
						<Item Name="FlpLib Ramp 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Ramp/FlpLib Ramp 0.vi"/>
						<Item Name="FlpLib Ramp 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Ramp/FlpLib Ramp 4.vi"/>
						<Item Name="FlpLib Ramp 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Ramp/FlpLib Ramp 3.vi"/>
						<Item Name="FlpLib Ramp 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Ramp/FlpLib Ramp 2.vi"/>
						<Item Name="FlpLib Ramp 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Ramp/FlpLib Ramp 1.vi"/>
						<Item Name="FlpLib Ramp.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/FlpLib Ramp.vi"/>
						<Item Name="FlpLib SGL to U32 Cast.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib SGL to U32 Cast.vi"/>
						<Item Name="FlpLib Divide Outside SCTL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Divide Outside SCTL.vi"/>
						<Item Name="FlpLib Divide Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Divide Shared Instance 4.vi"/>
						<Item Name="FlpLib Divide Latency 5.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Divide Latency 5.vi"/>
						<Item Name="FlpLib Divide SCTL Latency 5.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Divide SCTL Latency 5.vi"/>
						<Item Name="FlpLib Divide Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Divide Shared Instance 3.vi"/>
						<Item Name="FlpLib Divide Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Divide Shared Instance 2.vi"/>
						<Item Name="FlpLib Divide Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Divide Shared Instance 1.vi"/>
						<Item Name="FlpLib Divide Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Divide Shared Instance 0.vi"/>
						<Item Name="FlpLib Divide.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Divide.vi"/>
						<Item Name="ON_OFF.ctl" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/ON_OFF.ctl"/>
						<Item Name="FlpLib SpaceVectorPWM 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/FlpLib SpaceVectorPWM 4.vi"/>
						<Item Name="FlpLib SpaceVectorPWM 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/FlpLib SpaceVectorPWM 3.vi"/>
						<Item Name="FlpLib SpaceVectorPWM 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/FlpLib SpaceVectorPWM 2.vi"/>
						<Item Name="FlpLib SpaceVectorPWM 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/FlpLib SpaceVectorPWM 1.vi"/>
						<Item Name="FlpLib SpaceVectorPWM 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/SpaceVectorPWM/FlpLib SpaceVectorPWM 0.vi"/>
						<Item Name="FlpLib SpaceVectorPWM.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib SpaceVectorPWM.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/DQtoAlphaBeta_noSine/FlpLib DQtoAlphaBeta_noSine 4.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/DQtoAlphaBeta_noSine/FlpLib DQtoAlphaBeta_noSine 3.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/DQtoAlphaBeta_noSine/FlpLib DQtoAlphaBeta_noSine 2.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/DQtoAlphaBeta_noSine/FlpLib DQtoAlphaBeta_noSine 1.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/DQtoAlphaBeta_noSine/FlpLib DQtoAlphaBeta_noSine 0.vi"/>
						<Item Name="FlpLib DQtoAlphaBeta_noSine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib DQtoAlphaBeta_noSine.vi"/>
						<Item Name="FlpLib Negate Outside SCTL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Negate Outside SCTL.vi"/>
						<Item Name="FlpLib Split SGL Bits.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Split SGL Bits.vi"/>
						<Item Name="FlpLib Negate SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Negate SCTL Latency 0.vi"/>
						<Item Name="FlpLib Negate.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Negate.vi"/>
						<Item Name="FlpLib Square Root Outside SCTL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Square Root Outside SCTL.vi"/>
						<Item Name="FlpLib Square Root Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Root Shared Instance 4.vi"/>
						<Item Name="FlpLib Square Root Latency 5.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Square Root Latency 5.vi"/>
						<Item Name="FlpLib Square Root SCTL Latency 5.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Square Root SCTL Latency 5.vi"/>
						<Item Name="FlpLib Square Root Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Root Shared Instance 3.vi"/>
						<Item Name="FlpLib Square Root Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Root Shared Instance 2.vi"/>
						<Item Name="FlpLib Square Root Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Root Shared Instance 1.vi"/>
						<Item Name="FlpLib Square Root Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Root Shared Instance 0.vi"/>
						<Item Name="FlpLib Square Root.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Square Root.vi"/>
						<Item Name="FlpLib Square Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Shared Instance 4.vi"/>
						<Item Name="FlpLib Square SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Square SCTL Latency 0.vi"/>
						<Item Name="FlpLib Square Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Shared Instance 3.vi"/>
						<Item Name="FlpLib Square Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Shared Instance 2.vi"/>
						<Item Name="FlpLib Square Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Shared Instance 1.vi"/>
						<Item Name="FlpLib Square Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Square Shared Instance 0.vi"/>
						<Item Name="FlpLib Square.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Square.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Outside SCTL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Sine &amp; Cosine Outside SCTL.vi"/>
						<Item Name="FlpLib Sine Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine Shared Instance 4.vi"/>
						<Item Name="FlpLib Sine Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine Shared Instance 3.vi"/>
						<Item Name="FlpLib Sine Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine Shared Instance 2.vi"/>
						<Item Name="FlpLib Sine Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine Shared Instance 1.vi"/>
						<Item Name="FlpLib Sine Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine Shared Instance 0.vi"/>
						<Item Name="FlpLib Sine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Sine.vi"/>
						<Item Name="FlpLib Integrator 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/Integrator/FlpLib Integrator 4.vi"/>
						<Item Name="FlpLib Integrator 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/Integrator/FlpLib Integrator 3.vi"/>
						<Item Name="FlpLib Integrator 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/Integrator/FlpLib Integrator 2.vi"/>
						<Item Name="FlpLib Integrator 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/Integrator/FlpLib Integrator 1.vi"/>
						<Item Name="FlpLib Integrator 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/Integrator/FlpLib Integrator 0.vi"/>
						<Item Name="FlpLib Integrator.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Calculus/FlpLib Integrator.vi"/>
						<Item Name="FlpLib Perturbance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Perturbance/FlpLib Perturbance 4.vi"/>
						<Item Name="FlpLib Perturbance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Perturbance/FlpLib Perturbance 3.vi"/>
						<Item Name="FlpLib Perturbance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Perturbance/FlpLib Perturbance 2.vi"/>
						<Item Name="FlpLib Perturbance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Perturbance/FlpLib Perturbance 1.vi"/>
						<Item Name="FlpLib Perturbance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/Perturbance/FlpLib Perturbance 0.vi"/>
						<Item Name="FlpLib Perturbance.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/FlpLib Perturbance.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 4.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 3.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 2.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 1.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 0.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 4.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 3.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 2.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 1.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 0.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib AlphaBetaToDQ_noSine.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 4.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 3.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 2.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 1.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 0.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Sine &amp; Cosine.vi"/>
						<Item Name="FlpLib ThreePhasePLL 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 0.vi"/>
						<Item Name="FlpLib ThreePhasePLL 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 4.vi"/>
						<Item Name="FlpLib ThreePhasePLL 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 3.vi"/>
						<Item Name="FlpLib ThreePhasePLL 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 2.vi"/>
						<Item Name="FlpLib ThreePhasePLL 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 1.vi"/>
						<Item Name="FlpLib ThreePhasePLL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib ThreePhasePLL.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/FlpLib IIRDirectFormIITrans1stOrder.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/IIRDirectFormIITrans1stOrder/FlpLib IIRDirectFormIITrans1stOrder 0.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/IIRDirectFormIITrans1stOrder/FlpLib IIRDirectFormIITrans1stOrder 1.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/IIRDirectFormIITrans1stOrder/FlpLib IIRDirectFormIITrans1stOrder 2.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/IIRDirectFormIITrans1stOrder/FlpLib IIRDirectFormIITrans1stOrder 3.vi"/>
						<Item Name="FlpLib IIRDirectFormIITrans1stOrder 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Filter/IIRDirectFormIITrans1stOrder/FlpLib IIRDirectFormIITrans1stOrder 4.vi"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="Firmware" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Firmware</Property>
						<Property Name="Comp.BitfileName" Type="Str">BaseApplication_FPGATarget_Firmware_z2n+kSWRtT0.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">20</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">Controller/FPGA/Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/GridTiedBatteryCharger/dev/Controller/FPGA/Bitfiles/BaseApplication_FPGATarget_Firmware_z2n+kSWRtT0.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">Controller/FPGA/Bitfiles/BaseApplication_FPGATarget_Firmware_z2n+kSWRtT0.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/PowerElectronicControl/BaseApplicationTemplate/dev/BaseApplication.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/sbRIO9607/Chassis/FPGA Target/Firmware.vi</Property>
					</Item>
					<Item Name="RawSimultaneousRead" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">RawSimultaneousRead</Property>
						<Property Name="Comp.BitfileName" Type="Str">GridTiedBatteryC_FPGATarget_RawSimultaneousR_NprcL1SSick.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/GridTiedBatteryCharger/dev/FPGA Bitfiles/GridTiedBatteryC_FPGATarget_RawSimultaneousR_NprcL1SSick.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/GridTiedBatteryC_FPGATarget_RawSimultaneousR_NprcL1SSick.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/github/GridTiedBatteryCharger/dev/GridTiedBatteryChanger.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/sbRIO9607/Chassis/FPGA Target/RawSimultaneousRead.vi</Property>
					</Item>
				</Item>
			</Item>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
		</Item>
		<Item Name="ThreePhasePLLInterface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ThreePhasePLL/Interface/ThreePhasePLLInterface.lvlib"/>
		<Item Name="AFE_interface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE_Interface/AFE_interface.lvlib"/>
		<Item Name="BuckBoostInterface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/Buck-Boost/RealTime/BuckBoostInterface.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niInstr FIFO Register Bus v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/Host/niInstr FIFO Register Bus v1 Host.lvclass"/>
				<Item Name="niInstr Instruction Framework Context v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Instruction Framework Context/niInstr Instruction Framework Context v1 Host.lvclass"/>
				<Item Name="niInstr Instruction Target v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Instruction Target/niInstr Instruction Target v1 Host.lvclass"/>
				<Item Name="niInstr Subsystem Map v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Subsystem Map/niInstr Subsystem Map v1 Host.lvclass"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="TBM module execution interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/runtime/TBM module execution interface.lvclass"/>
				<Item Name="NISE_error generator.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Configuration Framework/error generator/NISE_error generator.vi"/>
				<Item Name="TBM channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/channel/TBM channel.lvclass"/>
				<Item Name="tag bus.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tag Bus/tag bus.lvlib"/>
				<Item Name="NISE_CEF_serializable configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/serializable configuration/NISE_CEF_serializable configuration.lvclass"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="write syslog.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Syslog Wrapper - Linux/write syslog.vi"/>
				<Item Name="ms timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/standard timing source/ms timing source.lvclass"/>
				<Item Name="TBM timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/timing source/TBM timing source.lvclass"/>
				<Item Name="TBM module configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/module configuration/TBM module configuration.lvclass"/>
				<Item Name="TBM configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/root configuration/TBM configuration.lvclass"/>
				<Item Name="Engine Runtime Interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Execution Interface/Engine Runtime/Engine Runtime Interface.lvclass"/>
				<Item Name="engine configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Execution Interface/Engine Configuration/engine configuration.lvclass"/>
				<Item Name="PL_Target Runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/target runtime/PL_Target Runtime.lvclass"/>
				<Item Name="PL_Target Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/target configuration/PL_Target Configuration.lvclass"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Default Value By Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value By Name.vi"/>
				<Item Name="class discovery singleton.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/class discovery singleton/class discovery singleton.lvlib"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="PLConfigurationSerializer.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/platypus configuration/PLConfigurationSerializer.lvlib"/>
				<Item Name="NISE_CEF_TreeSerializer.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/tree serializer/NISE_CEF_TreeSerializer.lvlib"/>
				<Item Name="PL_Serialization Interface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/flattened data interface/PL_Serialization Interface.lvlib"/>
				<Item Name="FPGA manager.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/FPGA manager/FPGA manager.lvlib"/>
				<Item Name="Current Value Table.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Current Value Table/Current Value Table.lvlib"/>
				<Item Name="control module configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/control module/configuration/control module configuration.lvclass"/>
				<Item Name="control module runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/control module/runtime/control module runtime.lvclass"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="BufferLogging.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/BufferLogging/BufferLogging.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="params.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/params/params.lvclass"/>
				<Item Name="Request.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/Request/Request.lvclass"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="Get Semaphore Status.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Get Semaphore Status.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="NI_WebServices.lvlib" Type="Library" URL="/&lt;vilib&gt;/wsapi/NI_WebServices.lvlib"/>
				<Item Name="NI_Real-Time Target Support.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI_Real-Time Target Support.lvlib"/>
				<Item Name="Standard Engine Runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Engines/Standard Engine/Execution Engine/Runtime/Standard Engine Runtime.lvclass"/>
				<Item Name="worker pool.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Engines/Standard Engine/Execution Engine/worker library/worker pool.lvlib"/>
				<Item Name="main engine.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Engines/Standard Engine/Execution Engine/main engine/main engine.lvlib"/>
				<Item Name="Standard Engine Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Engines/Standard Engine/Execution Engine/Configuration/Standard Engine Configuration.lvclass"/>
				<Item Name="usec timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/usec timing source/usec timing source.lvclass"/>
				<Item Name="scan engine timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/scan engine timing source/scan engine timing source.lvclass"/>
				<Item Name="Set Scan Engine Period.vi" Type="VI" URL="/&lt;vilib&gt;/NIScanEngine/ScanEngine/Set Scan Engine Period.vi"/>
				<Item Name="IOV engine refnum from target address.vi" Type="VI" URL="/&lt;vilib&gt;/NIScanEngine/ScanEngine/IOV engine refnum from target address.vi"/>
				<Item Name="Set Scan Engine Mode.vi" Type="VI" URL="/&lt;vilib&gt;/NIScanEngine/ScanEngine/Set Scan Engine Mode.vi"/>
				<Item Name="Synchronize to Scan Engine.vi" Type="VI" URL="/&lt;vilib&gt;/NIScanEngine/ScanEngine/Synchronize to Scan Engine.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="ScaleAndLimitInterface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ScaleAndLimit/Interface/ScaleAndLimitInterface.lvlib"/>
				<Item Name="LED runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/LED/module/execution/LED runtime.lvclass"/>
				<Item Name="CentralErrorHandler configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/CentralErrorHandler/configuration/CentralErrorHandler configuration.lvclass"/>
				<Item Name="CentralErrorHandler runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/CentralErrorHandler/execution/CentralErrorHandler runtime.lvclass"/>
				<Item Name="RTResourceUtilitzation configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/RTResourceUtilization/configuration/RTResourceUtilitzation configuration.lvclass"/>
				<Item Name="RTResourceUtilitzation runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/RTResourceUtilization/execution/RTResourceUtilitzation runtime.lvclass"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="ni_emb.dll" Type="Document" URL="/&lt;vilib&gt;/ni_emb.dll"/>
				<Item Name="InstructionFrameworkFGV.vi" Type="VI" URL="/&lt;vilib&gt;/NI/DCAF/addons/InstructionFrameworkSupport/InstructionFrameworkFGV.vi"/>
				<Item Name="WaveformAcq runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/FPGAWaveform/execution/WaveformAcq runtime.lvclass"/>
				<Item Name="FPGA_FGV_action.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/DCAF/addons/InstructionFrameworkSupport/FPGA_FGV_action.ctl"/>
				<Item Name="WaveformAcq configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/FPGAWaveform/configuration/WaveformAcq configuration.lvclass"/>
				<Item Name="WaveformTask.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/WaveformAcq/RT/WaveformTask.lvclass"/>
				<Item Name="LED configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/LED/module/configuration/LED configuration.lvclass"/>
				<Item Name="LVJSON.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/JSON Support for LabVIEW/LVJSON.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="error.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/error/error.lvclass"/>
				<Item Name="Response.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/Response/Response.lvclass"/>
				<Item Name="result.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/New folder/result.lvclass"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="JSONable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/JSONable/JSONable.lvclass"/>
				<Item Name="id.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/NI JSONRPC Server Framework/Classes/id/id.lvclass"/>
				<Item Name="ScaleAndLimitModule runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ScaleAndLimit/ScaleAndLimit/module/Execution/ScaleAndLimitModule runtime.lvclass"/>
				<Item Name="ScaleAndLimitModule configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ScaleAndLimit/ScaleAndLimit/module/configuration/ScaleAndLimitModule configuration.lvclass"/>
				<Item Name="CVT runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/CVT Access/execution/CVT runtime.lvclass"/>
				<Item Name="CVT configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/CVT Access/configuration/CVT configuration.lvclass"/>
				<Item Name="GPIC Core runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/GPIC_Core/GPIC_Core/module/execution/GPIC Core runtime.lvclass"/>
				<Item Name="GPIC Core configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/GPIC_Core/GPIC_Core/module/configuration/GPIC Core configuration.lvclass"/>
				<Item Name="ThreePhasePLL runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ThreePhasePLL/module/execution/ThreePhasePLL runtime.lvclass"/>
				<Item Name="ThreePhasePLL configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ThreePhasePLL/module/configuration/ThreePhasePLL configuration.lvclass"/>
				<Item Name="ActiveFrontEnd.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE/ActiveFrontEnd.lvlib"/>
				<Item Name="Range.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE/Range.ctl"/>
				<Item Name="BuckBoost.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/Buck-Boost/FPGA/BuckBoost.lvlib"/>
				<Item Name="ActiveFrontEndModule runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ActiveFrontEnd/module/execution/ActiveFrontEndModule runtime.lvclass"/>
				<Item Name="ActiveFrontEndModule configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/ActiveFrontEnd/module/configuration/ActiveFrontEndModule configuration.lvclass"/>
				<Item Name="BuckBoost configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/BuckBoost/module/configuration/BuckBoost configuration.lvclass"/>
				<Item Name="BuckBoost runtime.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Modules/BuckBoost/module/execution/BuckBoost runtime.lvclass"/>
				<Item Name="ThreePhasePLL.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ThreePhasePLL/FPGA/ThreePhasePLL.lvlib"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="SEH Error Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Options.ctl"/>
				<Item Name="SEH Shared Error Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Shared Error Options.ctl"/>
				<Item Name="SEH Error Display Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Display Options.ctl"/>
				<Item Name="SEH Error Processor.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Error Processor.vi"/>
				<Item Name="SEH Error Notification Command.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Error Notification Command.ctl"/>
				<Item Name="Classify Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Classify Error.vi"/>
				<Item Name="SEH Error Notification.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Error Notification.vi"/>
				<Item Name="SEH Error Notification Config.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Error Notification Config.ctl"/>
				<Item Name="SEH Error Notification Data.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Notification Data.ctl"/>
				<Item Name="SEH Transmit Error Function.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Transmit Error Function.ctl"/>
				<Item Name="SEH Execute Error Handling Code.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Execute Error Handling Code.vi"/>
				<Item Name="SEH Notification Info.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Notification Info.ctl"/>
				<Item Name="SEH Get Next Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/SEH Get Next Error.vi"/>
				<Item Name="SEH Init.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/SEH Init.vi"/>
				<Item Name="De-Classify Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/De-Classify Error.vi"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niifwu.dll" Type="Document" URL="/&lt;resource&gt;/niifwu.dll"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="ws_runtime.dll" Type="Document" URL="ws_runtime.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvalarms.dll" Type="Document" URL="lvalarms.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Release" Type="{69A947D5-514E-4E75-818E-69657C0547D8}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3052A58C-C408-47F3-AF6B-D395DD319447}</Property>
				<Property Name="App_INI_GUID" Type="Str">{321B82CB-CE2F-4CBB-AFD5-8ED56479B244}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_webService.count" Type="Int">1</Property>
				<Property Name="App_webService[0].itemID" Type="Ref">/sbRIO9607/jsonRPC</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{F3058111-4BCE-41FB-A3B5-7D9D4AEB9958}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Release build of the Grid-Tied Battery Charger.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Release</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/github/Release/dev/builds</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{1C1C55E8-3341-4657-86D4-AC14845CB160}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">GridTiedBatteryCharger.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/Release.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{BC580E28-AE87-4611-9A12-143C06E8E71A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/sbRIO9607/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Release</Property>
				<Property Name="TgtF_internalName" Type="Str">Release</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">Release</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B2371D29-C4A5-4DD1-8EB2-8728429DA076}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">GridTiedBatteryCharger.rtexe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Support" Type="Folder">
			<Item Name="client_globals.vi" Type="VI" URL="../Client/Support/client_globals.vi"/>
			<Item Name="FormatWaveforms.vi" Type="VI" URL="../Client/Support/FormatWaveforms.vi"/>
			<Item Name="msg.ctl" Type="VI" URL="../Client/Support/msg.ctl"/>
			<Item Name="RequestAndTrace.vi" Type="VI" URL="../Client/Support/RequestAndTrace.vi"/>
			<Item Name="StreamClientState.ctl" Type="VI" URL="../Client/Support/StreamClientState.ctl"/>
			<Item Name="ToTrace.vi" Type="VI" URL="../Client/Support/ToTrace.vi"/>
			<Item Name="ParseStateMsg.vi" Type="VI" URL="../Client/Support/ParseStateMsg.vi"/>
			<Item Name="StateMsg.ctl" Type="VI" URL="../Client/Support/StateMsg.ctl"/>
		</Item>
		<Item Name="ExampleClient.vi" Type="VI" URL="../Client/ExampleClient.vi"/>
		<Item Name="AppStateMachine editor node.lvclass" Type="LVClass" URL="../Controller/DCAF_modules/AppStateMachine/editor node/AppStateMachine editor node.lvclass"/>
		<Item Name="JSON_RPC_client.lvlib" Type="Library" URL="../Client/jsonRPCwebservice/client/JSON_RPC_client.lvlib"/>
		<Item Name="TDMS - File Viewer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMS - File Viewer.vi"/>
		<Item Name="GridTiedBatteryCharger.pcfg" Type="Document" URL="../GridTiedBatteryCharger.pcfg"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="CEH Actions.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/CEH/CEH Actions.ctl"/>
				<Item Name="Classify Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Classify Error.vi"/>
				<Item Name="De-Classify Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/De-Classify Error.vi"/>
				<Item Name="SEH Error Display Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Display Options.ctl"/>
				<Item Name="SEH Error Notification Command.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Error Notification Command.ctl"/>
				<Item Name="SEH Error Notification Config.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Error Notification Config.ctl"/>
				<Item Name="SEH Error Notification Data.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Notification Data.ctl"/>
				<Item Name="SEH Error Notification.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Error Notification.vi"/>
				<Item Name="SEH Error Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Error Options.ctl"/>
				<Item Name="SEH Error Processor.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Error Processor.vi"/>
				<Item Name="SEH Execute Error Handling Code.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/Support VIs/SEH/SEH Execute Error Handling Code.vi"/>
				<Item Name="SEH Get Next Error.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/SEH Get Next Error.vi"/>
				<Item Name="SEH Init.vi" Type="VI" URL="/&lt;userlib&gt;/_SEH/SEH Init.vi"/>
				<Item Name="SEH Notification Info.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Notification Info.ctl"/>
				<Item Name="SEH Shared Error Options.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/SEH/SEH Shared Error Options.ctl"/>
				<Item Name="SEH Transmit Error Function.ctl" Type="VI" URL="/&lt;userlib&gt;/_SEH/Controls/Shared/SEH Transmit Error Function.ctl"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="AsciiToInt.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/AsciiToInt.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Clear-68016.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/Clear-68016.vi"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="configureNumberOfValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/configureNumberOfValues.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ExtractSubstring.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ExtractSubstring.vi"/>
				<Item Name="fileViewerConfigData.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/fileViewerConfigData.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="formatPropertyList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/formatPropertyList.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get Type of Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Get Type of Variant.vi"/>
				<Item Name="getChannelList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getChannelList.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="getNamesFromPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getNamesFromPath.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="GoTo.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/GoTo.vi"/>
				<Item Name="initFileContentsTree.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initFileContentsTree.vi"/>
				<Item Name="InitFromConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/InitFromConfiguration.vi"/>
				<Item Name="initHelpButtonVisibility.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initHelpButtonVisibility.vi"/>
				<Item Name="InitScrollbarAndListBox.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/InitScrollbarAndListBox.vi"/>
				<Item Name="initTabValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initTabValues.vi"/>
				<Item Name="LabVIEWHTTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/httpClient/LabVIEWHTTPClient.lvlib"/>
				<Item Name="loadAndFormatValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/loadAndFormatValues.vi"/>
				<Item Name="LoadBufferForMultiListBoxAndFormat.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/LoadBufferForMultiListBoxAndFormat.vi"/>
				<Item Name="LogicalSort.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/LogicalSort.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnUnsignedTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnUnsignedTypeDef.ctl"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_WebDAV.lvlib" Type="Library" URL="/&lt;vilib&gt;/WebDAVClient/NI_WebDAV.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="panelResize_tdms.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/panelResize_tdms.vi"/>
				<Item Name="panelstate.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/panelstate.ctl"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="setListBoxColumnWidths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/setListBoxColumnWidths.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="status.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/status.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="TDMSFileViewer_LaunchHelp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMSFileViewer_LaunchHelp.vi"/>
				<Item Name="TDMSFileViewerLocalizedText.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMSFileViewerLocalizedText.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="UpdateBufferForMultiListBoxIfNecessary.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateBufferForMultiListBoxIfNecessary.vi"/>
				<Item Name="UpdateListBoxAfterKeyEvent.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateListBoxAfterKeyEvent.vi"/>
				<Item Name="UpdateScrollbarBeforeKeyEvent.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateScrollbarBeforeKeyEvent.vi"/>
				<Item Name="VariantType to Type Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/VariantType to Type Code.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="LVJSON.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/JSON Support for LabVIEW/LVJSON.lvlib"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="ActiveFrontEnd.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE/ActiveFrontEnd.lvlib"/>
				<Item Name="BuckBoostInterface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/Buck-Boost/RealTime/BuckBoostInterface.lvlib"/>
				<Item Name="BuckBoost.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/Buck-Boost/FPGA/BuckBoost.lvlib"/>
				<Item Name="AMC.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/AMC/AMC.lvlib"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="class discovery singleton.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/class discovery singleton/class discovery singleton.lvlib"/>
				<Item Name="control module configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/control module/configuration/control module configuration.lvclass"/>
				<Item Name="control module editor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/control module/editor node/control module editor.lvclass"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="DCAF UI Elements.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF UI Toolkit/Controls/DCAF UI Elements.lvlib"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="engine configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Execution Interface/Engine Configuration/engine configuration.lvclass"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value By Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value By Name.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="glyph manager.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/glyph manager/glyph manager.lvlib"/>
				<Item Name="GraphViz Mapping Visualizer.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Utilities/GraphViz Vizualizations/GraphViz Mapping Visualizer.lvlib"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="LVMenuShortCut.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMenuShortCut.ctl"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="Mapping.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Configuration Editor/subVIs/Mapping.ctl"/>
				<Item Name="ms timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/standard timing source/ms timing source.lvclass"/>
				<Item Name="NISE_CEF_HierarchyRepo.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/hierarchy repo/NISE_CEF_HierarchyRepo.lvclass"/>
				<Item Name="NISE_CEF_Node.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/Node/NISE_CEF_Node.lvclass"/>
				<Item Name="NISE_CEF_Repository.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/Repository/NISE_CEF_Repository.lvclass"/>
				<Item Name="NISE_CEF_serializable configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/serializable configuration/NISE_CEF_serializable configuration.lvclass"/>
				<Item Name="NISE_CEF_serializable node.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Configuration Framework/serializable node/NISE_CEF_serializable node.lvclass"/>
				<Item Name="NISE_CEF_TreeControl.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/NISE_CEF_TreeControl.lvlib"/>
				<Item Name="NISE_CEF_TreeSerializer.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Configuration Framework/tree serializer/NISE_CEF_TreeSerializer.lvlib"/>
				<Item Name="NISE_error generator.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Configuration Framework/error generator/NISE_error generator.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Picture to Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Picture to Pixmap.vi"/>
				<Item Name="PL Framework Configuration Tool.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Configuration Editor/PL Framework Configuration Tool.lvlib"/>
				<Item Name="PL_class cache.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/class cache/PL_class cache.lvlib"/>
				<Item Name="PL_Target Configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Framework Configuration Classes/target configuration/PL_Target Configuration.lvclass"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Robust CSV.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Robust CSV/Robust CSV.lvlib"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="sizeaction.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/sizeaction.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Table Manager.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Table API/Table Manager.lvlib"/>
				<Item Name="tag bus.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tag Bus/tag bus.lvlib"/>
				<Item Name="TBM channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/channel/TBM channel.lvclass"/>
				<Item Name="TBM configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/root configuration/TBM configuration.lvclass"/>
				<Item Name="TBM module configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/module configuration/TBM module configuration.lvclass"/>
				<Item Name="TBM module execution interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/runtime/TBM module execution interface.lvclass"/>
				<Item Name="TBM timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/timing source/TBM timing source.lvclass"/>
				<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/Keyed Array/Tools_KeyedArray.lvlib"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/usereventprio.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="write syslog.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Syslog Wrapper - Linux/write syslog.vi"/>
				<Item Name="TryGetGraphVizPath.vi" Type="VI" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Utilities/External tools/TryGetGraphVizPath.vi"/>
				<Item Name="Format Numeric String.vi" Type="VI" URL="/&lt;vilib&gt;/NI/DCAF/Tag Editor Core/Table API/Helpers/Format Numeric String.vi"/>
			</Item>
			<Item Name="StreamHeader.ctl" Type="VI" URL="../Controller/Support/StreamHeader.ctl"/>
			<Item Name="AppStateMachine configuration.lvclass" Type="LVClass" URL="../Controller/DCAF_modules/AppStateMachine/module/configuration/AppStateMachine configuration.lvclass"/>
			<Item Name="System.Windows.Forms" Type="Document" URL="System.Windows.Forms">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System.Drawing" Type="Document" URL="System.Drawing">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

Function New-LaunchScriptmcvnamserverPS {
  # Military Conflict: Vietnam Dedicated Server
  # 1136190
  ################## Change Default Variables #################
  #                       Requires Steam Login
  #                       Server IP
  ${global:IP}            = "${ip}"
  #                       Server Port
  ${global:port}          = "27015"
  #                       Client Port
  $global:clientport      = "27005"
  #                       Source TV Port
  $global:sourcetvport    = "27020"
  #                       Map
  $global:defaultmap      = "mcv_siege"
  #                       Maxplayers
  $global:maxplayers      = "20"
  #                       Server Name
  $global:hostname        = "SERVNAME"
  #                       Rcon Password
  #$global:RCONPASSWORD    = "$RANDOMPASSWORD"
  ##############################/\##############################
  ###################### Do not change below ###################
  #                       System Directory 
  $global:systemdir       = "$serverdir"
  #                       Server Config Directory
  $global:servercfgdir    = "$serverdir\vietnam\cfg"
  #                       Server Executable
  $global:executable      = "srcds"
  #                       Server Executable Directory
  $global:executabledir   = "$serverdir"
  #                       Gamedig Query
  $global:querytype       = "protocol-valve"
  #                       Game Process
  $global:process         = "srcds"
  #                       Log Directory
  $global:logdirectory    = "$serverdir\vietnam"
  #                       Server Log
  $global:consolelog      = "console.log"
  #                       Game-Server-Config Directory 
  $global:gamedirname     = "vietnam"
  #                       Game-Server-Config
  $global:servercfg       = "server.cfg"
  #                       Server Launch Command
  $global:launchParams    = '@("${executable} -secure -game vietnam -strictportbind -ip ${ip} -port ${port} +hostname `"${hostname}`" +clientport ${clientport} +tv_port ${sourcetvport} -usercon -console -condebug -maxplayers_override ${maxplayers} +map ${defaultmap}
")'
  # Advanced must be set to "0"
  Get-UserInput
  # Download Game-Server-Config
  #Get-Servercfg
  # Edit Server Game-Server-Config
  #Select-EditSourceCFG
  # Rename Source $executable.exe
  Select-RenameSource
}

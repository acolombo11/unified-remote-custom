#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

<#F11:: ;Left Windows + F11
  ChangeResolution(32,1440,900,60)
  return

>#F11:: ;Right Windows + F11
  ChangeResolution(32,1920,1080,60)
  return

ChangeResolution( colorDepth, screenWidth, screenHeight, refreshRate ) {
  VarSetCapacity(devMode,156,0), NumPut(156,2,&devMode,36)
  DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&devMode ),
  NumPut(0x5c0000,devMode,40)
  NumPut(colorDepth,devMode,104), NumPut(screenWidth,devMode,108), NumPut(screenHeight,devMode,112), NumPut(refreshRate,devMode,120)
  Return DllCall( "ChangeDisplaySettingsA", UInt,&devMode, UInt,0 )
}

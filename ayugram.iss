; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A64FAB14-DAB7-4024-BB8F-EB33CBF90133}
AppName=AyuGram
AppVersion=3.3
;AppVerName=AyuGram 2.1beta
AppPublisher=NTeditor
DefaultDirName={autopf}\AyuGram
DisableDirPage=no
UninstallDisplayIcon={app}\AyuGram.exe
; "ArchitecturesAllowed=x64compatible" specifies that Setup cannot run
; on anything but x64 and Windows 11 on Arm.
ArchitecturesAllowed=x64compatible
; "ArchitecturesInstallIn64BitMode=x64compatible" requests that the
; install be done in "64-bit mode" on x64 or Windows 11 on Arm,
; meaning it should use the native 64-bit Program Files directory and
; the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64compatible
DefaultGroupName=AyuGram
AllowNoIcons=yes
; Remove the following line to run in administrative install mode (install for all users).
PrivilegesRequired=lowest
OutputDir=.
OutputBaseFilename=ayugram-v3.2
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\AyuGram\AyuGram.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\AyuGram\Updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\AyuGram\modules"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\AyuGram"; Filename: "{app}\AyuGram.exe"
Name: "{autodesktop}\AyuGram"; Filename: "{app}\AyuGram.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\AyuGram.exe"; Description: "{cm:LaunchProgram,AyuGram}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "taskkill"; Parameters: "/IM AyuGram.exe /F"; Flags: runhidden

[UninstallDelete]
Type: filesandordirs; Name: "{app}\modules"
Type: files; Name: "{app}\AyuGram.exe"
Type: files; Name: "{app}\Updater.exe"
Type: files; Name: "{userstartup}\AyuGram.lnk"
Type: filesandordirs; Name: "{app}\tdata"
Type: files; Name: "{app}\*.txt"




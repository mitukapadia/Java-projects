; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{77A1214B-3CD7-439B-86B1-D347359A1000}
AppName=minicalc
AppVersion=1
;AppVerName=minicalc 1
AppPublisher=Mitalik
AppPublisherURL=https://www.mitalik.com/
AppSupportURL=https://www.mitalik.com/
AppUpdatesURL=https://www.mitalik.com/
DefaultDirName={autopf}\minicalc
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\mital\OneDrive\Desktop\New setup\license.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\mital\OneDrive\Desktop\New setup
OutputBaseFilename=Minicalcsetup
SetupIconFile=C:\Users\mital\Downloads\minicalculator-icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\mital\OneDrive\Desktop\New setup\Minicalci.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files\Java\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\.myp\OpenWithProgids"; ValueType: string; ValueName: "MiniCalci.myp"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\MiniCalci.myp"; ValueType: string; ValueName: ""; ValueData: "MiniCalci"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\MiniCalci.myp\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Minicalci.exe,0"
Root: HKA; Subkey: "Software\Classes\MiniCalci.myp\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Minicalci.exe"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\Minicalci.exe\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\minicalc"; Filename: "{app}\Minicalci.exe"
Name: "{autodesktop}\minicalc"; Filename: "{app}\Minicalci.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Minicalci.exe"; Description: "{cm:LaunchProgram,minicalc}"; Flags: nowait postinstall skipifsilent


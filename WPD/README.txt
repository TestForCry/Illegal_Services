# FAQ #
Q: Should I set switches to "On" or "Off" to block telemetry?  
A: "On" means "Telemetry setting is ON", "Off" means "Telemetry setting is OFF". For more info check the descriptions by pressing "?" icons.  
Q: After applying all the settings, something stopped working. What should I do?  
A: Do not use Advanced Settings without knowing the purpose of each button, read descriptions. Click the Default button and reboot.  
Q: How to understand that the program works correctly?  
A: Every switch in WPD reflects to original places in gpedit.msc, services.msc, taskschd.msc, wf.msc.  
Q: I disabled everything in WPD and now "Night Light" doesn't work. How can I fix that?  
A: Enable "Connected Devices Platform User Service" and restart your PC.  
Q: Skype stopped working. What should I do?  
A: Delete the "Extra rule" in the blocker.  
Q: My microphone stopped working. What should I do?  
A: Open Advanced Settings, turn on "Let Windows apps access the microphone".  
Q: I found an error in the Blocker rules.  
A: Currently we provide only the GUI for the 3rd party IP list, for any issue please contact the IP list creator.  
Q: I uninstalled the program from the Windows Store. Now I want to restore it.  
A: Reinstall it from the Windows Store. Or use PowerShell and Google.  
Q: I deleted the Windows Store, PowerShell does not help. How can I restore it?  
A: Use the instruction from this link: https://github.com/kkkgo/LTSB-Add-MicrosoftStore  
Q: How can I change the language?  
A: By default the app uses your Location setting in "Regional and Language Options" (Control Panel). You can also use -locale argument (example: wpd.exe -locale "ru-RU") to force the language.  

# Arguments #
Note: Case sensitive.  

### App arguments ###
-help  
Create README.txt file.  
-install  
Install WPD to Environment Variables for current user.  
-install "all"  
Install WPD to Environment Variables for all users.  
-multipleInstances  
Bypass "single instance of WPD" check.  
-nosplash  
Hide Splashscreen.  
-nowarnOS  
Hide OS compatibility warning. DO IT AT YOUR OWN RISK!  
-proxy  
Get rule updates via proxy. Example: -proxy "127.0.0.1:8080", -proxy "" - go offline.  
-locale  
Force localization culture. Localization.ini required. Example: -locale "en-US"  
-restorePoint  
Create a Restore Point.  
-dumpRules  
Copy Blocker rules to "rules.txt". App's folder by default.  
-dumpRules "Path"  
Custom path. No backslash at the end required. Example: -dumpRules "C:\folder"  
-wfpOnly  
Ignore "Windows Defender Firewall" and use WFP only.  
-saveState  
Save current state to a bat file.  
-close  
Quit program after arguments execution.  

### Tab arguments ###
-reg4gp  
Use registry for Group Policy instead of group policy objects.  
-pro  
Unlocks Experimental list.  
-showAppxErrors  
Show errors during Apps Tab setup.  
-noMOcheck  
Do not check MS Office installation. Show GP anyway.  
-nofw  
Bypass Blocker Tab loading.  
-noappx  
Bypass Apps Tab loading.  

### Button arguments ###
Note: Priority order.  

-default  
Switch everything to default. *Doesn't restore Windows Store Apps.  
-privacyAll  
Switch everything to full privacy (All switches + All blocker rules). *Doesn't remove Windows Store Apps.  
-recommended  
Switch recommended settings. (Base Privacy switches + "Telemetry" blocker rule).  
-privacy ""  
Switch list of buttons to privacy. Example: -privacy "GP1 GP2 Service2 Scheduler3 Rule2 Misc1"  
Full list of buttons below.  
-revert ""  
Revert list of buttons to default state. Example: -revert "GP1 GP2 Service2 Scheduler3 Rule2 Misc1"  
Full list of buttons below.  

### Advanced Button arguments ###
-security  
Check "Set Telemetry to Security level". (Windows 10 Enterprise and LTSB/LTSC)  
-includeAdv  
Check "Include All Advanced settings". (Windows 10)  
-defender ""  
Enable/disable Windows Defender Firewall. Example: -defender "on", -defender "off"  
-wfp ""  
Enable/disable Windows Filtering Platform. Example: -wfp "on", -wfp "off"  

### List of buttons ###
* GP1 - Windows Customer Experience Improvement Program
* GP2 - Internet Explorer Customer Experience Improvement Program
* GP3 - Windows Messenger Customer Experience Improvement Program
* GP4 - Allow Cortana
* GP5 - Allow search and Cortana to use location
* GP6 - Windows Error Reporting
* GP7 - Steps Recorder
* GP8 - Inventory Collector
* GP9 - Telemetry
* GP10 - Handwriting automatic learning
* GP11 - Input personalization / Allow users to enable online speech recognition services
* GP12 - Improve inking and typing recognition
* GP13 - PerfTrack
* GP14 - Microsoft Support Diagnostic Tool
* GP15 - Advertising ID
* GP16 - Search Companion
* GP17 - Microsoft consumer experiences
* 
* GPoffice1 - Customer Experience Improvement Program
* GPoffice2 - Send Telemetry
* GPoffice3 - Send personal information
* 
* Service1 - Diagnostics Tracking Service / Connected User Experiences and Telemetry
* Service2 - Microsoft (R) Diagnostics Hub Standard Collector Service
* Service3 - Device Management Wireless Application Protocol (WAP) Push message Routing Service
* Service4 - DataCollectionPublishingService (DcpSvc)
* Service5 - Windows Media Player Network Sharing Service
* 
* Scheduler1 - Consolidator
* Scheduler2 - KernelCeipTask
* Scheduler3 - UsbCeip
* Scheduler4 - BthSQM
* Scheduler5 - Sqm-Tasks
* Scheduler6 - BackgroundUploadTask
* Scheduler7 - Proxy
* Scheduler8 - Microsoft Compatibility Appraiser
* Scheduler9 - ProgramDataUpdater
* Scheduler10 - AitAgent
* Scheduler11 - DiskDiagnosticDataCollector
* Scheduler12 - GatherNetworkInfo
* Scheduler13 - Device Census
* 
* GPadv1 - Allow publishing of User Activities
* GPadv2 - Allow upload of User Activities
* GPadv3 - Enables Activity Feed
* GPadv4 - Allow Clipboard synchronization across devices
* GPadv5 - Allow device name to be sent in Windows diagnostic data
* GPadv6 - Sync your settings
* GPadv7 - Use OneDrive for file storage
* GPadv8 - Windows Defender Antivirus
* GPadv10 - Allow Clipboard History
* GPadv11 - Windows Defender SmartScreen
* 
* GPapp1 - Let Windows apps access account information
* GPapp2 - Let Windows apps access the calendar
* GPapp3 - Let Windows apps access call history
* GPapp4 - Let Windows apps access the camera
* GPapp5 - Let Windows apps access the contacts
* GPapp6 - Let Windows apps access email
* GPapp7 - Let Windows apps access an eye tracker device
* GPapp8 - Let Windows apps access location
* GPapp9 - Let Windows apps access messaging
* GPapp10 - Let Windows apps access the microphone
* GPapp11 - Let Windows apps access motion
* GPapp12 - Let Windows apps access notifications
* GPapp13 - Let Windows apps make phone calls
* GPapp14 - Let Windows apps control radios
* GPapp15 - Let Windows apps access Tasks
* GPapp16 - Let Windows apps access trusted devices
* GPapp17 - Let Windows apps access diagnostic information about other apps
* GPapp18 - Let Windows apps run in the background
* GPapp19 - Let Windows apps communicate with unpaired devices
* GPapp20 - Let Windows apps activate with voice
* GPapp21 - Let Windows apps activate with voice while the system is locked
* 
* ServAdv1 - Connected Devices Platform User Service
* ServAdv2 - Sync Host
* ServAdv3 - Contact Data
* ServAdv4 - User Data Storage
* ServAdv5 - User Data Access
* ServAdv6 - MessagingService
* ServAdv7 - Windows Push Notifications User Service
* 
* Misc1 - Show sync provider notifications
* Misc2 - Tailored experiences
* Misc3 - Let Windows track app launches to improve Start and search results
* Misc4 - Let websites provide locally relevant content by accessing my language list
* 
* WUGP - Access to all Windows Update features
* wuauserv - Windows Update
* WaaSMedicSvc - Windows Update Medic Service
* UsoSvc - Update Orchestrator Service
* WaaSMedicTask - PerformRemediation
* 
* Rule1 - Block Telemetry
* Rule2 - Block Extra
* Rule3 - Block Update
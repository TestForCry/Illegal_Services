Blackbird V6 README (version 1.0.79.3)
- www.getblackbird.net
- info@getblackbird.net (PGP key below)


=== Index ===

 01. Preface
 02. Known Bugs & Limitations
 03. What Blackbird Does
 04. Using Blackbird
 05. Command-line Switches
 06. Blackbird STD (Spy Task Destroyer)
 07. Blackbird App Manager (Windows 10 only)
 08. Frequently Asked Questions
 09. Changelog
 10. License / PGP



=== 01. PREFACE ===

 Blackbird is a privacywall for Windows (Vista, 7, 8, 10), designed to dismantle built-in data collection and give the PC back to the user. 
 It's not a realtime security application, it does not run in the background and does not install anything. Run it once and you're set. 
 Internet access is required only to resolve hostnames to IP addresses during the process of applying Blackbird. 
 If access is unavailable Blackbird will still run all local tweaks but the scanner will report [Telemetry / Hosts = Not blocked] since no network blocks will be set. 
 You may also need to re-apply Blackbird after updating Windows as some updates tend to turn stuff back on.

 We are not responsible for any damages done to your PC while using our software.
 With that said, Blackbird has been tested thoroughly and we do offer technical support should any issues arise (contact above). 
 We also welcome any bug reports, suggestions, tips or you can just say hi.

 You can help keep Blackbird flying!
 - www.patreon.com/getblackbird
 - www.paypal.me/getblackbird



=== 02. KNOWN BUGS & LIMITATIONS ===

 - Windows Server and Insider versions are NOT officially supported. Run at your own risk.

 - LAN / VPN / misc. networking issues:
   Blackbird disables 2 services, SSDP Discovery & UPnP Device Host, which are required to run Network Discovery on your PC. 
   Press the L key in the main menu to fix any LAN connectivity issues and reboot your PC when prompted. 
   After applying the fix, you can set Network Discovery back on in your network settings.

 - Task View / Virtual desktops (Windows 10):
   On Windows versions supporting virtual desktop, clicking the 'Task View' button may crash explorer.exe.
   Blackbird disables CDPUserSvc and it's supportive services that must be started to use the virtual desktops feature.
   To enable Task View simply press the W key while in the main menu (Not recommended since the associated services are known data collectors).

 - Device settings / Focus Assist / Action Center / notifications (Windows 10):
   On Windows 10 notifications and device settings may not appear or close abruptly.
   If you're experiencing this issue after using Blackbird, simply press the I key in the main menu and reboot when prompted.

 - OneDrive (Windows 10):
   After using Blackbird's Recovery-mode or the -O switch (Enable OneDrive), the OneDrive folder may not appear in Explorer if it has been disabled previously by Blackbird.
   To fix this the user must completely refresh the OneDrive service by converting their account to a local one then back to a Microsoft account:
   - Go to Settings page.
   - Select 'Accounts' and click on 'Sign in with a local account instead'. Follow on screen instructions.
   - Same thing to convert back, except click on 'Sign in with a Microsoft account instead'.
   - If this did not solve the problem the user may need to run the OneDrive Troubleshooter application offered by Microsoft.

 - Blackbird 32bit (Windows Vista/7/8):
   The 32bit version of Blackbird does NOT hide blacklisted updates and does NOT check if Windows automatic updates are enabled due to security limitations.
   64bit version is not affected.

 - Blackbird 32bit (Windows 10 v1903 and up):
   Due to security limitations, the 32bit version of Blackbird may no longer be able to fully disable all Autologgers on Windows 10 version 1903 (April/May 2019 update) and above.
   Too many AV false positives (fuck Google) have forced us to remove the feature that made this possible until further notice. The 64bit version is not affected by this. 



=== 03. WHAT BLACKBIRD DOES ===

 - Disables OneDrive
 - Disables Cortana
 - Disables Bing-integration
 - Disables Wi-Fi Sense
 - Disables system-wide Windows/Office Telemetry on any Windows version/edition
 - Disables all OS advertising (tips, pop-ups, suggested apps, etc.)
 - Disables all Diagnostic-tracking / CEIP / Telemetry / Compatibility services, tasks and agents
 - Disables web content evaluation / URL check-in ("SmartScreen")
 - Disables Windows Media Online DRM
 - Disables Windows P2P Update sharing
 - Disables all AutoLoggers
 - Disables Windows Error Reporting
 - Disables Xbox Live services
 - Prevents cross-device synchronization
 - Prevents all location/contacts/handwritting/password sharing
 - Prevents device meta-data collection
 - Patches various data-leaks (IE/EDGE, Defender, Explorer, MRT, SMB)
 - Removes Windows Genuine Advantage (WGA)
 - Removes your unique Ad-ID tracking token and disables further Windows advertising profiling
 - Removes GWX and all Windows 10 Upgrade triggers, icons, messages and other nagging
 - Removes Windows 10 Upgrade setup files on Windows 7/8
 - Removes a bunch of Windows Vista, 7, 8, 8.1 telemetry updates (supports custom lists)
 - Removes Superfish, eDellRoot, HP Touchpoint Analytics, VisualDiscovery and other security risks 
 - Blocks 300+ different tracking/telemetry/ad servers (supports IPv6/IPv4, multiple network interfaces, custom blocklists)
 - Bonus blocks (some) Youtube, Skype, Facebook ads

 INCLUDES:
 - Blackbird App Manager (Windows 10 only): Block any system application the easy & user-friendly way.
 - Blackbird STD: Force removal of stubborn spy tasks.
 - Backup & Restore: Save current system settings to an external file restorable at any time.



=== 04. USING BLACKBIRD ===

 - Double-click blackbird.exe,
 - Click Yes if prompted by UAC,
 - Blackbird will perform a quick security scan (green means good - red means bad),
 - OPTIONAL BUT STRONGLY RECOMMENDED: Back up current settings by pressing the B key,
 - Press any other key to apply Blackbird to your PC,
 - Reboot your PC when finished.

 OPTIONAL: Press ? in the main menu to see all available runtime options.

 OPTIONAL: Blocking custom hosts
 - Write the hostnames or IP addresses (IPv4/IPv6) in a text file called HOSTS.TXT -- IMPORTANT: Each host must be placed in it's own line.
 - Place the file in the same directory as the Blackbird executable.
 - Run Blackbird normally (or with the -v switch to see resolved IP's).

 Blackbird will automatically search for the hosts.txt file at startup, notify the user accordingly, and resolve/block all hosts listed when Blackbird is applied.
 Ignores lines beginning with ; and any empty spaces. (Note: You can only block single hosts. Addressing is limited to /32 and /128 prefix ranges for IPv4/IPv6.)
 Hosts.txt file example:

;This is a comment.
;Each host must be placed in it's own line, like so:
a.ads1.msn.com
2a03:2880:1010:7f00:face:b00c::
8.8.8.8
;End of example.


 OPTIONAL: Removing custom KB updates (Windows Vista/7/8 only)
 - Write the KB numbers in text file called UPDATES.TXT -- IMPORTANT: Each update must be placed in it's own line.
 - Place the file in the same directory as the Blackbird executable.
 - Run Blackbird normally (or with the -v switch to see detailed info on each update found and removed).

 Ignores lines beginning with ; and any empty spaces. 
 Updates.txt file example:

;This is a comment.
;KB updates can be written in the following ways, with or without the "KB" prefix:
KB3035583
3068708
;End of example.



=== 05. COMMAND-LINE SWITCHES ===

 You can also run Blackbird from CMD with the following command-line switches available:

 blackbird -scan  =  A full privacy scan of your system.
 blackbird -app   =  Blackbird App Manager - User-friendly system application blocking (Windows 10 only. See below for more information).
 blackbird -std   =  Blackbird SpyTask Destroyer - Force remove stubborn spy tasks (see below).
 blackbird -bak   =  Backup Mode - Save current system settings to an external file restorable at any time.
 blackbird -r     =  Recovery Mode - Restores/resets all changes made by Blackbird.
 blackbird -v     =  Verbose Mode - Displays additional information on all changes as they're being made.
 blackbird -s     =  Silent Mode - Skips all pauses. Can be used with other switches independently, good for scripts.
 blackbird -?     =  Displays help information.

 blackbird -kc  =  Kill/revive Cortana. (Windows 10 only)
 blackbird -ke  =  Kill/revive Edge browser. (Windows 10 only)
 blackbird -ks  =  Kill/revive Windows Store. (Windows 10 only)
 blackbird -kf  =  Kill/revive Feedback/ContactSupport. (Windows 10 only)
 blackbird -kl  =  Kill/revive Lockscreen. (Windows 10 only)

 blackbird -aslr  =  Disable/enable system ASLR (Address space layout randomization).
 blackbird -a     =  Disable/enable SmartScreen application checking. (Windows 10/8 only)
 blackbird -b     =  Disable/enable Runtime Broker (will cause most UWP/Metro apps to not work - Windows 10/8 only).
 blackbird -c     =  Disable/enable background access for all default system apps (Store, Maps, Calendar, Alarms, etc. - Windows 10 only)
 blackbird -d     =  Disable/enable Windows Defender.
 blackbird -e     =  Disable/enable SMB over NetBIOS (close listening port 445).
 blackbird -g     =  Disable/enable Games Explorer (gameux.dll; injects into games, connects to MS servers).
 blackbird -h     =  Disable/enable Hibernation (deletes hiberfil.sys file from root).
 blackbird -m     =  Disable/enable automatic installation of Malicious Removal Tool updates. (Not available on Windows 10)
 blackbird -o     =  Disable/enable OneDrive. (Windows 10/8 only)
 blackbird -p     =  Disable/enable Diagnostic Policy Service
 blackbird -t     =  Disable/enable Sensors / Auto-screen rotation on tablets.
 blackbird -u     =  Disable/enable automatic installation of updates / Sets to manual download and install only.
 blackbird -w     =  Disable/enable Task View / virtual desktops (Windows 10 only).
 blackbird -x     =  Disable/enable Xbox Live services. (Windows 10 only)
 blackbird -n     =  Remove Blackbird network blocks.
 blackbird -l     =  Fix network/LAN connectivity issues.
 blackbird -i     =  Fix Bluetooth pairing, Device Settings, Focus/Assist and user notifications.

 blackbird -color      =  Alternative color scheme. Changes green to blue, red to yellow.
 blackbird -showhost   =  Show all active host blocks set by Blackbird (IPv4/IPv6 addresses).
 blackbird -noupdate   =  Skip blacklisted KB updates removal. (Not available on Windows 10)
 blackbird -nospeed    =  Skip system optimizations.
 blackbird -nohost     =  Skip host blocking.
 blackbird -updates    =  Only remove KB updates. (Not available on Windows 10)
 blackbird -tasks      =  Only secure/disable scheduled tasks.
 blackbird -services   =  Only secure/disable services.
 blackbird -registry   =  Only secure registry.
 blackbird -hostblock  =  Only run IP/host blocker.

 NOTES:
 - You can run up to 9 switches at once, excluding -APP & -SCAN which can only be executed one at a time.
 - Combining /S with any other switch will skip all pauses and apply the extra switch. Using /S without other switches will apply Blackbird.
 - Combining /V with any other switch will also apply Blackbird in addition to other switches added.
 - All switches must be separated with a space, followed by a - or / before the next desired switch (ie. blackbird -v -e -d)



=== 06. BLACKBIRD STD (Spy Task Destroyer) ===

 "Spy Task Destroyer" can be used to force removal of specific Windows scheduled tasks that for some reason cannot be disabled by running Blackbird normally. 
 Should STD find any such tasks it will first attempt to end and disable it. If it fails it will offer the choice to ignore or force-remove the offending task.
 A signature engine is used so STD only removes pre-configured tasks that can be safely disabled and are known data-collectors.
 Any tasks explicitly deleted by SpyTask Destroyer CANNOT BE RESTORED without Windows re-installation/recovery/factory defaults.

 WARNING: 
 - Starting STD with the /S switch (silent mode) will NOT prompt for user choice and will automatically force-remove any found task that cannot be disabled.
 - Disabling/removing the WinSAT task will cause your system to stop sending scheduled TRIM command to host SSD. You can still issue TRIM manually after.
   STD does not care what hard drive you're using, it will forcefully disable/remove all tasks it considers bad.
   WinSAT is not disabled if running Blackbird normally on a SSD-installed system.



=== 07. BLACKBIRD APP MANAGER === (only available on Windows 10)

 Blackbird App Manager allows user-friendly blocking/unblocking of any Windows/system application installed.
 Once the app list is populated the user can choose the desired application by entering it's assigned number prefix.
 The selected app is then either blocked or unblocked/activated, depending on it's current state. 
 You can also select multiple apps by entering their numeral values by range, seperated by the "-" symbol.
 For instance, entering "1-10" (without quotes) at the prompt will select all apps marked by numeral values from 1 to 10.
 To refresh the list simply enter the letter R at prompt. To quit enter Q.

 WARNING:
 - Blocking certain system applications may cause problems such as non-functional menus or other weird issues on some Windows versions.
 - It is recommended to use the App Manager instead of the -k* command-line switches to block and restore apps whenever possible.



=== 08. FREQUENTLY ASKED QUESTIONS ===

 Q: How come this is "free"? What's the catch? Who are you sponsored by? etc.
 A: There is no catch, the tool is completely free and always will be. We don't sell or even collect any of your information.
    The only sponsors are our users -> www.patreon.com/getblackbird

 Q: Blackbird is stuck/hangs/crashes.
 A: It takes a while (up to 1h on older CPUs) but if you're sure it's stuck, restart Blackbird and press V at the main menu.
    This will run Blackbird in Verbose Mode, giving you a more detailed view of what's going on.

 Q: Blackbird shows errors like "access denied", "unable to read file", "system error"...
 A: This is normal, especially under W10. Try closing and running Blackbird again, this somehow forces Windows to behave. Not sure why.

 Q: My antivirus reports Blackbird as malware.
 A: This seems to mostly happen with the 32bit version but we assure you, it's a false-positive. Use the 64bit version if possible, AVs seem to like it more for some reason.
    We suspect this occurs because of the nature and relative obscurity of our software (registry editing,telemetry dismantling,..)
    Some temporary files are created during usage but they are all deleted before you even exit the program.

 Q: After running Blackbird I have problems with my LAN / VPN connection. Do you even test, bro?
 A: Blackbird, by default, applies certain security/privacy tweaks that may interfere with some networks setups.
    To fix most networking issues simply start Blackbird and press L in the main menu.

 Q: Startup scanner shows red stuff even after applying Blackbird. Why?
 A: The scanner is a little wonky, it may detect Blackbird was not fully applied for any of the following reasons:
    - No internet connection. Either blocked by firewall or not available on your PC, Blackbird cannot resolve hostnames to IP addresses and block them effectively, resulting in "Telemetry/Hosts=Not Blocked".
    - Certain scheduled tasks are stubborn. Use the -STD switch to remove them (or press / in the main menu).
    - An update turned stuff back on. Simply run Blackbird again or check our website for an up-to-date version.
    - An aggressive AV blocked Blackbird from accessing system files/registry/settings. Not much we can do here, go with your gut.
    - Localization/other bugs with the scanner itself. Help us fix it by contacting us!

 Q: I don't like what Blackbird did to my computer. How do I change it back?
 A: Start Blackbird and press R in the main menu. This will run Blackbird in Recovery Mode allowing you to either restore a backup file or recover to Windows defaults.



=== 09. CHANGELOG ===

 Version 1.0.79.3:
 - Added more hosts to blacklist. *
 - Fixed "Service_-DSN- not found" errors when restoring a backup file on Windows 10.
 
 *NOTE: Special thanks to Bejsu for the tip.

 Version 1.0.79.2:
 - Blackbird is now forced to always run with Administrator rights (still testing this).
 - Added more hosts to blacklist.
 - Disabled scheduled task: SQM Data Sender
 - The /i switch will now also enable changing the user account picture on Windows 10.
 - Fixed another bug that may cause Blackbird to crash when restoring a backup file.

 -- Complete version history is available at www.getblackbird.net/documentation/changelog



=== 10. LICENSE / PGP ===

 Blackbird BGB 1.0 Free Software License (c) 2015-2019
 Be a Good Bird

 Blackbird is Freeware. It's free to use for everyone, always, in all environments.
 Under no circumstances can our software be monetized for commercial or any other purposes.
 If you want to use our software in your project let us know at info@getblackbird.net

 Blackbird comes with NO WARRANTY whatsoever. We are not responsible for any damages.
 You can edit, break, and modify the exe for your own personal and academic use.
 You can redistribute and mirror our software in it's entirety with all documentation and executables intact.
 You cannot sell, modify and/or repackage our software and redistribute it.

 In short, don't be an asshole and you're good.


-----BEGIN PGP PUBLIC KEY BLOCK-----

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
4N5mbHcqi9pPByK3Xyg=
=gq2S
-----END PGP PUBLIC KEY BLOCK-----



# Linux - Configuration Files

This is a set of files for customizing Linux.

**Experimental**&nbsp;: &nbsp;`mount_options.conf` disables the "last access timestamp" on all mounted drives (volumes) and should also disable the 'execute bit' on FAT(32), exFAT and NTFS.  
=> Note that root privileges are required, as this file needs to be put into "/etc/udisks2/" (usual location).  
**=> PLEASE USE WITH CAUTION (testing)**

`chromium-flags.conf` and `chrome-flags.conf`&nbsp;: &nbsp;Forces the dark mode in the Chromium Browser and Google Chrome.  
=> Usual location&nbsp;: &nbsp;"~/.config/"

`mc.keymap`&nbsp;: &nbsp;Allows to go back to the parent directory via Backspace (for Midnight Commander).  
=> Usual location&nbsp;: &nbsp;"~/.config/mc/"

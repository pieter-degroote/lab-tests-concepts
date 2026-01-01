# Linux - Configuration Files

This is a set of files for customizing Linux.

**Experimental**&nbsp;: &nbsp;`mount_options.conf`&nbsp;: &nbsp;disables the "last access timestamp" (via 'noatime') on all mounted drives (volumes), also disables the 'execute bit' on FAT(32), exFAT and NTFS, and removes 'flush' as default parameter for FAT(32).  
=&gt; Note that root privileges are required, as this file needs to be put into "/etc/udisks2/" (usual location).  
**=&gt; PLEASE USE WITH CAUTION (testing)**

`mc.keymap`&nbsp;: &nbsp;Allows to go back to the parent directory via Backspace (for Midnight Commander).  
=&gt; Usual location&nbsp;: &nbsp;"~/.config/mc/"

`chromium-flags.conf` and `chrome-flags.conf`&nbsp;: &nbsp;Forces the dark mode in the Chromium Browser and Google Chrome.  
=&gt; Usual location&nbsp;: &nbsp;"~/.config/"  
=&gt; Note that as for now, most Linux distributions and Desktop Environments should already 'honor' the 'preferred color scheme', making this setting (mostly) redundant.

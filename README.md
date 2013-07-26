 CATALYST ROM 
---------------
Biotik & dtrail
---------------



This Rom is based on the Verizon Stock builds for Motorola Razr.
It a highly customized custom rom including huge framework tweaks.
It's mostly build of the Sony Xperia Z frameworks including more Sony
stuff.

This repo doesn't include real sources - as for Moto builds don't exist sources.
So this rom is being build by the reverse engineering method using apktool
and other stuff. 

This is a kexec build. Since Motorola pushed OTAs with newer stock kernels
most users (especially GSM users) aren't able anymore to use this rom.
The same is meant for other user who cannot run the required VZW .16 Kernel.

We have ported this rom to kexec which makes it usable for all users.
Ther kexec kernel (StockCore Kernel) is based on the VZW .16 Kernel and it's
a direct port of dtrail's JBX-Kernel (AOSP Mod Kernel for RAZR).



BRANCHES
--------

master: The master branch is the current "stable" branch. To install this rom you
can just download this repo as a zipped package and install it via your recovery.

GSM: This is the stable branch for GSM users.

work: This is the working branch where we apply changes and perform fixes. It is not
recommend to use this on your phone.

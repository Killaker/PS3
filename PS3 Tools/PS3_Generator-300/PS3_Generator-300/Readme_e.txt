[SCE CONFIDENTIAL DOCUMENT]
Generator Tools Version 3.00
                  Copyright (C) 2010 Sony Computer Entertainment Inc.
                                                 All Rights Reserved.
=====================================================================
This package is a tool package consisting of software for creating
and verifying master discs and master packages, to be used for
submitting PlayStation(R)3 titles.

The Generator Tools package includes the following software.
- Disc Image Generator for PlayStation(R)3
- System File Utility for PlayStation(R)3
- Disc Image Checker for PlayStation(R)3
- Trophy Pack File Utility for PlayStation(R)3
- Disc Image Generator for PlayStation(R)3 Command Line version

---------------------------------------------------------------------
Package Configuration
---------------------------------------------------------------------
ps3gen/
|---Readme_*.txt
|---documents
|     +---Generator_Tools-Users_Guide_*.pdf 
|                           Generator Tools User's Guide
+---tool
      |---genelib.dll          : Dynamic Link Library for Generator Tools
      |---ps3gen.exe           : Disc Image Generator Software
      |---ps3gen.exe.manifest  : Manifest File for ps3gen.exe
      |---ps3chk.exe           : Disc Image Checker Software
      |---ps3chk.exe.manifest  : Manifest File for ps3chk.exe
      |---ps3cmd.exe           : Disc Image Generator Command line version
      |---ps3sys.exe           : System File Utility Software
      |---ps3sys.exe.manifest  : Manifest File for ps3sys.exe
      |---ps3trp.exe           : Trophy Pack File Utility Software
      +---ps3trp.exe.manifest  : Manifest File for ps3trp.exe

----------------------------------------------------------------------
Required Environment
----------------------------------------------------------------------
Windows XP Professional Service Pack 2 or higher
Windows Vista Business Service Pack 1 or higher
Microsoft .NET Framework Version 1.1 must be preinstalled for
Windows XP environment.

----------------------------------------------------------------------
Notice
----------------------------------------------------------------------
- When submitting the master discs, please be sure to verify 
  the master discs with the Generator or the Checker of Version 3.00
  or later and check that there is no error. 
  The Checker and the Generator have the identical verification
  function if the versions of the two programs are equal.
  For the method of verifying the master discs, please refer to 
  the Generator Tools User Guide.

- When creating the master discs or packages using SDK350 or later,
  use the Generator of Version 3.00 or later.

- When creating the master discs or packages using SDK341 or later,
  use the Generator of Version 2.89 or later.

- When creating the master discs or packages using SDK330 or later,
  use the Generator of Version 2.85 or later.

- Game Master Disc Requirements Manual is included in the document 
  package.

- The following documents were merged to the Generator Tools User's Guide.
  - Disc Image Generator for PlayStation(R)3 User Manual
  - Trophy Pack File Utility for PlayStation(R)3 User's Guide

----------------------------------------------------------------------
Version 3.00 New Features and Changes
----------------------------------------------------------------------
<New Features>
[ps3gen.exe, ps3sys.exe]
- Function to specify the following parameters has been added.
  - Whether or not notify to the user when the geomagnetic sensor of the
    PlayStation(R)Move motion controller has not been calibrated.
  - Whether or not display a warning display on game startup regarding
    stereoscopic 3D viewing.

<Changes>
[all programs]
- Changed the specification of verification function of the Generator/Checker.
  - Supported verification of library for SDK350.
  - Limitation of file size for still image icon for extra content (max 300kB)
    has been removed.

<Bug fix>
[all programs]
- Fixed the following bug.
  - Verification of compressed SPRX files fails.

---------------------------------------------------------------------
Restrictions
---------------------------------------------------------------------
- If it is intended to submit a master disc that contains install packages,
  content data or patch packages that are automatically applied to
  disc boot game, contact SCE in advance.

- System file parameters for regular HDD boot Game and for its cumulative
  patch are identical. Consequently, Patch checkbox will be disregarded
  for the cumulative patch of HDD boot Game when the system file is
  loaded in ps3sys.exe. In order to edit such system files, mark the
  Patch checkbox first.

- For more information on the notes for the "Enable BGM" checkbox, 
  please refer to the following technical note.

  Technote ID:200807-27  https://ps3.scedev.net/technotes/view/779

- In Windows Vista, it is required to run the Generator as an
  administrator if BD Emulator function is used.

- When writing into a media using Generator, please terminate other 
  applications, such as screen saver.

- Although manuals do not explain about DVD media because it is not 
  supported anymore, when writing a disc image of "DVD 4.7GB Single 
  Layer", please use DVD-R SL or DVD+R SL.  Similarly, when writing 
  a disc image of "DVD 8.3GB Dual Layer", please use DVD+R DL.
  Reference Tool does not recognize DVD-RW and DVD+RW as a game 
  master disc.

- When selecting "DVD 8.3GB Dual Layer OTP" for Disc Type, files that is
  actually placed in Layer1 may be displayed in Blue (the color of file
  placed in Layer0) in the layout tab.  

- Only the PNG file can be displayed using the feature to display 
  contents information files (for icons, for example) for activating 
  games. 

- If a disc image is created after editing or moving the file 
  that has been added to a project of the Generator with the Explorer 
  or other applications, the size of the image to be created will be 
  the size of the file that was added to the Generator. 
  Therefore, the disc image may not be created, or the size of the file
  on the disc image may not be as intended. 

- Drives and media whose operation has been confirmed regarding 
  the writing feature are as follows: 
  - Drives
    - Pioneer BDR-101A (BD 50GB is not supported)
    - Pioneer BDR-202 (BD 50GB is not supported)
    - Panasonic SW-5582
    - Panasonic SW-5584
    - Panasonic LF-MB121
    - Panasonic LF-PB271
    - Hitachi LG GGW-H20N
    - OEM models that have the same product ID listed above
  - Media
    - BD-RE SL(25GB)
      - SONY all 2x media
      - TDK BDD-RE25S
      - Maxell BDRE25P.1P
    - BD-R SL(25GB)
      - SONY all 2x/4x/6x media
      - TDK BDD-R25S, BDD-R25A, BRD25PWA10S
      - Panasonic LM-BR25LD
    - BD-RE DL(50GB)
      - SONY all 2x media
      - Panasonic LM-BE50D
    - BD-R DL(50GB)
      - SONY all 2x/4x/6x media
      - Panasonic LM-BR50D
      - TDK BDD-R50A
  - Writing to BD-R LTH media has not been confirmed.
    Also, BD-R LTH media cannot be used for submission discs.
  - A drive that supports BD-R Ver1.2 is required for writing BD-R 4x media.
  - A drive that supports BD-R Ver1.3 is required for writing BD-R 6x media.
  - Do not use BD-R media that are already initialized.

- The following drive has been confirmed regarding the restriction
  for the creation of master discs:
  - PLDS(Philips/LITE-ON) DH-4B1S (rev.7D14)
    - Because of specification or bug of this drive, the drive
      creates Spare Areas automatically when writing image to BD-R
      medium.
      Thus with this drive you cannot create BD-R master discs for
      PlayStation(R)3 by Generator and by commercially-available
      writing software.
      If using BD-RE medium, you can successfully create master disc
      with this drive.

---------------------------------------------------------------------
Permission and Restrictions on Use
---------------------------------------------------------------------
The permission, restrictions, etc. on using this software conform to 
the contract concluded between your company and our company (Sony 
Computer Entertainment Inc). 

---------------------------------------------------------------------
Note on Trademarks
---------------------------------------------------------------------
"PlayStation", "PLAYSTATION" and "PSP" are either registered trademarks 
or trademarks of Sony Computer Entertainment Inc.

"ATRAC" is a trademark of Sony Corporation.
"Blu-ray Disc" is a trademark.
"Dolby" is a trademark of Dolby Laboratories.
"DTS" is a registered trademark of DTS, Inc.
"XMB" is a trademark of Sony Corporation and Sony Computer Entertainment Inc.

All other product and company names mentioned herein, with or without 
the registered trademark symbol (R) , trademark symbol (TM) or 
service mark symbol (SM) , are generally trademarks and/or registered 
trademarks of their respective owners.

---------------------------------------------------------------------
Copyrights
---------------------------------------------------------------------
The copyright of this software belongs to Sony Computer Entertainment
Inc. 

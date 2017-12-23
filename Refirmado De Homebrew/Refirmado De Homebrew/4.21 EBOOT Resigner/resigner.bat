@echo off

echo ==============================================================================
echo                             4.21 EBOOT.BIN Resigner 
echo                                    by JjKkYu
:menu
echo ==============================================================================
echo 1. Disc Backup EBOOT Auto-resign
echo 2. NPDRM EBOOT Resign
echo 0. Exit
echo ==============================================================================

SET /P sel= Please input your selection(1/2/0):
if %sel%==1 (goto discauto)
if %sel%==2 (goto npdrm)
if %sel%==0 (goto exit)
echo Wrong input, please input a number among 1/2/0.
goto menu

:discauto
echo Please put EBOOT.BIN in the extracted folder first...
pause
scetool.exe --decrypt EBOOT.BIN EBOOT.ELF
rename EBOOT.BIN EBOOT.BIN.BAK
scetool.exe -v --sce-type=SELF --compress-data=TRUE --skip-sections=TRUE --key-revision=10 --self-auth-id=1010000001000003 --self-vendor-id=01000002 --self-type=APP --self-app-version=0001000000000000 --self-fw-version=0003006000000000 --encrypt EBOOT.ELF EBOOT.BIN
del EBOOT.ELF
echo Auto-resign finished.
goto menu

:npdrm
echo Please put EBOOT.BIN in the extracted folder first...
pause
echo Please input Content-ID following the example
SET /P cid= (EX:JP0700-NPJB00001_00-0000000000000000):
scetool.exe --decrypt EBOOT.BIN EBOOT.ELF
rename EBOOT.BIN EBOOT.BIN.BAK
scetool.exe -v --sce-type=SELF --compress-data=TRUE --skip-sections=TRUE --key-revision=10 --self-auth-id=1010000001000003 --self-add-shdrs=TRUE --self-vendor-id=01000002 --self-type=NPDRM --self-app-version=0001000000000000 --self-fw-version=0003006000000000 --np-license-type=FREE --np-content-id=%cid% --np-app-type=EXEC --np-real-fname=EBOOT.BIN --encrypt EBOOT.ELF EBOOT.BIN
del EBOOT.ELF
echo NPDRM Resign finished.
goto menu

:exit
exit
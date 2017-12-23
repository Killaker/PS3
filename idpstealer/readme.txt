IDPstealer v0.1 (c) flatz

Privet, PS3 fans! Once KaKaRoTo published his backup tool I've decided to bring a way of getting a console ID (IDPS) to the community. It can be used on OFW/CFW firmware and you don't need any additional software/hardware installed on your PS3.

However there are several cons about releasing:
1. A big company will fix it in the next firmwares.
2. It can be used to steal other people's IDs if you have an access to their consoles.

And it seems this is the only method of getting console ID without using hardware solutions on the moment. So please, if you want to get an IDPS from your console then do it as fast as possible because I think this method won't work in the nearly future.

How it works:
IDPstealer works as a proxy server and intercepts all network traffic (including SSL traffic via HTTPS over HTTP tunneling) and it tries to get IDPS from it. It doesn't contains any malicious code and can be safely used like any other proxy server.

Requirements:
1. Not banned PS3 console with the latest official firmware or the custom firmware with a spoofer.
2. Not banned PSN account (I recommend to use a new temporary PSN account).
3. An ability to log in to the PSN network (an obsolete CFW firmware asks for a software update so you need a spoofer to workaround this issue).
4. An ability to setup a local proxy server on your network.

Instructions:
1. Unpack the program to somewhere on your PC and start it by specifying an output file path for IDPS. Also you may need to specify a listening port other than 1337 (it is used by default) by using "-p" option. Examples:
     idpstealer.exe idps.bin
     idpstealer.exe -p 30274 idps.bin
2. If you have a firewall or an antivirus with the firewall module you need to add the tool to the white list or enable network use. Also some antivirus softwares can say that the tool is a virus/trojan, it is not true, just ignore it or add it to the ignore list. It happens because the executable file is obfuscated and the tool itself intercepts a network traffic while working.
3. If you have decided to use a new PSN account for this then create it (or use the one you have created earlier), if you want to use your real PSN account then skip this step.
4. Go to the network settings on your console. You need to specify a proxy server which you have launched before. Make sure you have specified a correct IP address and a port number (1337 is default).
5. Log into the PSN and navigate to the "PlayStation Network" column on XMB and launch "What's New" item (if you are not logged then it asks you to log in, just do it and try again).
6. Wait some time until news appears. If everything is ok, then you should see "IDPS have been successfully written to" message on the app's console screen. Now you can disable using a proxy in the network settings.

Congratulations, your IDPS have been dumped to the file you have specified.
@echo off

chcp 65001

netsh advfirewall firewall set rule group="windows management instrumentation (wmi)" new enable=no
netsh advfirewall firewall set rule group="Инструментарий управления Windows (WMI)" new enable=no
netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=TCP localport=135 enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP localport=any enable=yes

netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=UDP localport=135 enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP localport=any enable=yes


netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=any localport=135 enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any localport=any enable=yes

netsh advfirewall add rule dir=in name ="%RANDOM%UnsecApp%RANDOM%" program="%systemroot%\system32\wbem\unsecapp.exe" action=block enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP localport=any enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP localport=any enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP localport=any enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP localport=any enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any localport=any enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any localport=any enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP enable=yes

netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any enable=yes
netsh advfirewall add rule dir=out name ="%RANDOM%WMI_OUT%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any enable=yes


netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=TCP enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=TCP enable=yes

netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=UDP enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=UDP enable=yes


netsh advfirewall firewall add rule dir=in name="%RANDOM%DCOM%RANDOM%" program="%systemroot%\system32\svchost.exe" service=rpcss action=block protocol=any enable=yes
netsh advfirewall firewall add rule dir=in name ="%RANDOM%WMI%RANDOM%" program="%systemroot%\system32\svchost.exe" service=winmgmt action=block protocol=any enable=yes


cls

exit
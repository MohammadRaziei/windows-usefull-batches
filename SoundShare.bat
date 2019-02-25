@echo off
netsh wlan set hostednetwork ssid=%USERNAME%-SoundWire key=$oundwire mode=allow
netsh wlan start hostednetwork 
netsh wlan show hostednetwork
echo Password changed to : $oundwire
START /B "" "C:\Program Files (x86)\SoundWire Server\SoundWireServer.exe"
(timeout 5 > NUL)
exit
::netsh wlan stop hostednetwork 
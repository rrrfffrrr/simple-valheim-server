@echo off
echo "Simple server starter for windows"
echo "https://github.com/rrrfffrrr/Simple-valheim-server"
REM Server config start

set ServerName=Server
set ServerPort=2456
set ServerFile=Dedicated
set Password=password

REM Server config end



set SteamAppId=892970

echo "Updating server"
START /WAIT steamcmd/steamcmd +login anonymous +force_install_dir ../valheim +app_update 896660 +quit

set ServerData=./server_data/%ServerName%

echo "Starting server PRESS CTRL-C to exit"

REM Tip: Make a local copy of this script to avoid it being overwritten by steam.
REM NOTE: Minimum password length is 5 characters & Password cant be in the server name.
REM NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
START valheim/valheim_server -nographics -batchmode -name %ServerName% -port %ServerPort% -world %ServerFile% -password %Password% -savedir %ServerData%


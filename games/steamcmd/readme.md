# Command list of steamcmd server :

1. Satisfactory
```bash
/usr/games/steamcmd +@sSteamCmdForcePlatformBitness 64 +force_install_dir /home/steam/steam-servers/SatisfactoryDedicatedServer +login anonymous +app_update 1690800 -beta public validate +quit
```
```yaml
    ports:
      - 15777:15777/udp
      - 7777:7777/udp
      - 15000:15000/udp
```

2. Unturned
```bash
/usr/games/steamcmd +@sSteamCmdForcePlatformBitness 64 +force_install_dir /home/steam/steam-servers/unturned_server +login anonymous +app_update 1110390 validate +quit
```

3. Ark Survival Ascenced
```bash
/usr/games/steamcmd +@sSteamCmdForcePlatformBitness 64 +force_install_dir /home/steam/steam-servers/ark_survival_ascender_server +login anonymous +app_update 2430930 validate +quit
```


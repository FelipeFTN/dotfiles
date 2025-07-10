# Jobs :bricks:

## Health Check Service

This is a simple program i built to check the health of my CPU and get errors like this:

```bash
[Hardware Error]: Machine check events logged
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c80c2d8300800093
[Hardware Error]: TSC 0 MISC d221040000004600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829441 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: 8800004300800093
[Hardware Error]: TSC 0 MISC 5221040004000600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829456 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c800108300800093
[Hardware Error]: TSC 0 MISC d229000044004600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829464 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c8001f0300800093
[Hardware Error]: TSC 0 MISC d221004000400600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829465 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c80024c300800093
[Hardware Error]: TSC 0 MISC d229040004000600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829475 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c8000bc300800093
[Hardware Error]: TSC 0 MISC d229004004000600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829477 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c800164300800093
[Hardware Error]: TSC 0 MISC d229000040040600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829479 SOCKET 0 APIC 0 microcode 71a
[Hardware Error]: CPU 0: Machine Check: 0 Bank 11: c802474300800093
[Hardware Error]: TSC 0 MISC d229400040004600
[Hardware Error]: PROCESSOR 0:206d7 TIME 1751829483 SOCKET 0 APIC 0 microcode 71a
```

---

This is just like a cronjob, but made to run with sustemd timer services

1. Place the **health.service** file in `~/.config/systemd/user/health.service`
2. Place the **health.timer** file in `~/.config/systemd/user/health.timer`
3. Enable the service with `systemctl --user daemon-reexec && systemctl --user enable --now health.timer`
4. Check the status with `systemctl --user status health.service` || `systemctl --user list-timers`

## Battery Percentage Service

Just a quick low battery warning script

1. Place the **battery.service** file in `~/.config/systemd/user/battery.service`
2. Place the **battery.timer** file in `~/.config/systemd/user/battery.timer`
3. Enable the service with `systemctl --user daemon-reexec && systemctl --user enable --now battery.timer`
4. Check the status with `systemctl --user status battery.service` || `systemctl --user list-timers`

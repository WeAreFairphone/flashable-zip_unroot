Unroot
---

**Flashable ZIP** to unroot Android. This was created originally as a clean way to unroot Fairphone 2 [Open OS](http://code.fairphone.com/projects/fp-osos/index.html#id2), that comes prerooted and with TWRP.

Removes `bin/su` and `xbin/su` binaries from `/system`, and some other configuration files if they exist.
Unrooting is needed to pass SafetyNet requirements for some apps. [Guide](https://forum.fairphone.com/t/pencil2-how-to-install-any-app-on-fp-open-os-for-beginners-and-experts/22516) and [motivation behind](https://forum.fairphone.com/t/how-to-be-able-to-install-and-use-any-app-on-fp-open-os-experimental/22327/34?u=roboe).

Build
===

Run the `build-zip.sh` shell script:
```
source build-zip.sh
```

This will generate a `unroot_YYYY-MM-DD.zip` file.


Install
===

You'll need a custom recovery installed on your device, such as [TWRP](https://twrp.me/).

Restart your device into recovery and start `ADB sideload`. Then run:
```
adb sideload <flashable-zip-name>
```

Alternatively, copy the resulting ZIP to your device storage, restart your device into recovery and use the GUI `Install` or `Install ZIP` option.

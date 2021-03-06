## Installation {#installation}

`Highlighted text` is used to denote window, menu, button, file or directory names.

*Little Navmap* for Windows is a 32-bit application and was tested with Windows 7, Windows 8, Windows 10 (32-bit and 64-bit).

The macOS and Linux versions are both 64-bit and were tested with macOS Sierra and Ubuntu Linux.

### Updating {#installation-updating}
Delete all installed files of a previous _Little Navmap_ version before installing a new version. All files from the previous ZIP archive can be deleted since settings are stored in separate directories (except [custom map themes](MAPTHEMES.md)). In any case do not merge the installation directories.

There is no need to delete the old settings directory. The program is written in a way that it can always work with old setting files.

### Windows

The installation of _Little Navmap_ does not change any registry entries (in Windows) and involves a simple copy of files therefore an installer or setup program is not required.

Do not extract the archive into the directory `c:\Program Files\` or `c:\Program Files (x86)\` since this requires administrative privileges. Windows keeps control of these directories, therefore other problems might occur like replaced or deleted files.

Extract the Zip archive into a directory like `c:\Users\YOURNAME\Documents\Little Navmap`, `c:\Users\YOURNAME\Programs\Little Navmap` or `c:\Little Navmap`. Then start the program by double-clicking `littlenavmap.exe`. The extension `.exe` might be hidden in Windows Explorer depending on settings. In that case look for a file `littlenavmap` having a light blue globe icon.

**See [First Start](INTRO.md#first-start) for more information on the first start after installation.**

I recommend to install the [Visual C++ Runtime Installer (All-In-One) v56](https://www.majorgeeks.com/files/details/visual_c_runtime_installer.html) package from MajorGeeks.Com but only if you get errors when starting _Little Navmap_.

_Little Navmap_ is a 32-bit application and was tested with Windows 7, Windows 8 and Windows 10 (32-bit and 64-bit). Windows XP is not supported.

#### Other Simulators than FSX SP2 {#other-simulators-than-fsx-sp2}

This program was compiled using plain FSX SP2 (no Acceleration) SimConnect version 10.0.61259.0.

You might have to install an older version of SimConnect if you use _Prepar3D_ or _FSX Steam Edition_. If not sure about this simply try _Little Navmap_ out. If it fails with an error message follow the instructions below:

_**Prepar3D**_: In the same directory as `Prepar3D.exe` is a `redist\Interface` directory (normally `C:\Program Files (x86)\Lockheed Martin\Prepar3D v4\redist\Interface`). There are multiple legacy versions of SimConnect available. You have to install `FSX-SP2-XPACK.msi` for _Little Navmap_.

_**FSX Steam Edition**_: The installation adds the directory `C:\Program Files (x86)\Steam\SteamApps\common\FSX\SDK\Core Utilities Kit\SimConnect SDK\LegacyInterfaces` where you can find the legacy SimConnect interfaces.

#### Improve Start-up Time {#improve-start-up-time}

Anti-virus program can significantly slow down the startup and execution of the program in Windows.

Therefore, it is recommended to exclude the following directories from scanning:

* Disk cache for map tiles: `C:\Users\YOURUSERNAME\AppData\Local\.marble\data`
* Scenery library and userdata databases`C:\Users\YOURUSERNAME\AppData\Roaming\ABarthel\little_navmap_db`

These directories to not contain executable files and are accessed frequently by _Little Navmap_.

### macOS

Extract the ZIP file and copy the `Little Navmap` application to the directory `Applications` or any other directory.

**Note on first start on macOS:** When starting the application you will get a message `Little Navmap is from an unidentified developer. Are you sure you want to open it?` or similar.

To bypass this right click or `Ctrl+Click` on the application and select open. You probably have to enter an administrator name and password once. The program can be started normally after this procedure.

### Linux

Extract the tar archive to any place and run the executable `littlenavmap` to start the program from a terminal:

`./littlenavmap`

Most file managers will start the program if double-clicked.

### X-Plane

*Little Navmap* **can only connect to X-Plane using the *Little Xpconnect* X-Plane plugin which has to be installed as well.**

The *Little Xpconnect* plugin is included in the *Little Navmap* archive but can also be downloaded separately. See the included `README.txt` in the `Little Xpconnect` directory for installation instructions.

The plugin 64-bit only and is available for Windows, macOS and Linux.

### Additional Programs

The downloaded *Little Navmap* archive contains two additional directories (or applications for macOS):

`Little Navconnect`: A complete copy of the program allowing remote flight simulator connections for FSX, P3D and X-Plane.

`Little Xpconnect`: This is the 64-bit plugin that is needed for *Little Navmap* or *Little Navconnect* to connect to X-Plane.

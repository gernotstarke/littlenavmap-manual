## Menus and Toolbars {#menus-and-toolbars}

This chapter describes all the menu items of _Little Navmap_. You will find most of this functionality on the toolbars as well which are not be described separately. Key combinations can be seen on the menu items and are not listed in this manual.

![Little Navmap Menu and Toolbars](../images/menutoolbar.jpg "Little Navmap Menu and Toolbars")

_**Picture above:** Menu and toolbars docked in default positions._

### File Menu {#file-menu}

#### ![New Flight Plan](../images/icons/filenew.png "New Flight Plan") New Flight Plan {#new-flight-plan}

Erases the current flight plan and shows the flight plan table.

You have to use the [Search Result Table View Context Menu](SEARCH.md#search-result-table-view-context-menu),  the [Map Context Menu](MAPDISPLAY.md#map-context-menu) or the [Flight Plan Route Description](ROUTEDESCR.md) dialog to create a new flight plan.

#### ![Open Flight Plan](../images/icons/fileopen.png "Open Flight Plan") Open Flight Plan {#open-flight-plan}

Opens an FSX PLN, an FS9 PLN, an FSC PLN, an X-Plane FMS or an FLP flight plan file and shows the flight plan table. The type of file is determined by content and not file extension. See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information.

An opened flight plan file will be reloaded on start up (reload and centering can be switched off in the `Options` dialog on the `Startup` and `User Interface` tab).

Procedure information and ground speed will be added to the flight plan if a PLN file is saved by _Little Navmap_. The additional information will be ignored by FSX or P3D but allows to reload all information by _Little Navmap_.

You can also **drag and drop files from a file manager** like Windows Explorer or macOS Finder into the _Little Navmap_ main window to load them.
Single flight plans and all allowed formats for loading (`FMS`, `FLP`, `PLN`) as well as aircraft performance files (`lnmperf`) are accepted.

**Always save a copy of the flight plan in PLN format to be able to reload all information. Writing to and reading from other formats like X-Plane PLN might result in information loss.**

#### ![Append flight plan](../images/icons/fileappend.png "Append flight plan") Append Flight Plan {#append-flight-plan}

Adds departure, destination and all waypoints to the current flight plan.

Using `Append Flight Plan` allows to load or merge complete flight plans or flight plan snippets into a new plan. All waypoints are added at the end of the current flight plan. Then you can use the `Delete selected Legs` and `Move selected Legs up/down` context menu items to arrange the waypoints and airports as required. See [Flight Plan Table View Context Menu](FLIGHTPLAN.md#flight-plan-table-view-context-menu).

All arrival procedures will be removed when appending a flight plan. The new flight plan will use arrival and approach procedures from the loaded plan.

The appended legs are selected after loading the flight plan.

#### Recent Flight Plan (Sub-Menu) {#recent-flight-plan}

Shows all recently loaded flight plans for quick access. You can clear the list by selecting  `Clear Menu`.

#### ![Reset all for a new Flight](../images/icons/reload.png "Reset all for a new Flight") Reset all for a new Flight {#reset-for-new-flight}

Opens a dialog which allows to reset functions in _Little Navmap_ for a new flight.

See [Reset all for a new Flight](RESET.md) for more information on limitations.

#### ![Save Flight Plan](../images/icons/filesave.png "Save Flight Plan") Save Flight Plan {#save-flight-plan}

#### ![Save Flight Plan as PLN](../images/icons/filesaveas.png "Save Flight Plan as PLN") Save Flight Plan as PLN {#save-flight-plan-as}

Saves the flight plan to an FSX/P3D PLN file (XML format). This annotated format allows to save all flight plan attributes of *Little Navmap*.

`Save Flight Plan as PLN` changes the current file type and name in *Little Navmap* which means that all further saves will go into the new PLN file.

**Note that you can save the flight plan files in any place if not used by a simulator. I recommend a directory in **`Documents`** like **`Documents\Little Navmap\Flight Plans`**.**

**Always save a copy of the flight plan in the default PLN format to be able to reload all information. Writing to and reading from other formats like X-Plane PLN might result in information loss. See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information.**

_Little Navmap_ will allow flight plans to be created that may be useful as a flight plan snippet but are unusable by the flight simulator. This occurs if a flight plan does not have a departure or destination airport. A warning dialog will be shown when saving an incomplete flight plan.

A warning dialog will also be shown if the departure airport has parking positions but none is assigned in the flight plan.

Procedures will be saved as an annotation in the flight plan file if the flight plan contains any. This causes no problem for the simulators and most other programs. Use [Export clean Flight Plan](MENUS.md#export-clean-flight-plan) if a program has problems reading the PLN files saved by _Little Navmap_.

Note that the waypoints of a procedure are not saved with the flight plan. This is not supported by FSX or P3D. Use the GPS, FMC or other ways to select a procedure in your aircraft.

The set ground speed is also saved with the flight plan.

#### ![Save Flight Plan as X-Plane FMS 11](../images/icons/saveasfms.png "Save Flight Plan as X-Plane FMS 11") Save Flight Plan as X-Plane FMS 11 {#save-flight-plan-as-fms11}

Saves the flight plan using the new X-Plane FMS 11 format.

A warning dialog will be shown with the warning above when saving.

See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information on limitations.

This function changes the current file type and name which means that all further saves will go into the new FMS file and the file will be reloaded on next start.

Store FMS files into the `Output/FMS plans` directory inside the X-Plane directory if you would like to use the flight plan in the X-Plane GPS, the G1000 or the FMS.

**Always save a copy of the flight plan in the default PLN format to be able to reload all information. Writing to and reading from other formats like X-Plane PLN might result in information loss.**

#### ![Save Flight Plan as FlightGear FGFP](../images/icons/saveasfg.png "Save Flight Plan as FlightGear FGFP") Save Flight Plan as FlightGear FGFP {#save-flight-plan-as-fgfp}

FlightPlan format which can be loaded into the RouteManager of the free flight simulator [FlightGear](http://www.flightgear.org).

_Little Navmap_ can read and write this format.

A warning dialog will be shown with the warning above when saving.

See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information on limitations.

This function changes the current file type and name which means that all further saves will go into the new FGFP file and the file will be reloaded on next start.

You can save the files into any directory and load it within FlightGear.

#### ![Save Flight Plan FLP](../images/icons/saveasflp.png "Save Flight Plan FLP") Save Flight Plan as FLP {#save-flight-plan-as-flp}

Exports the current flight plan as an FLP file usable by the X-Plane FMS, Aerosoft Airbus and other add-on aircraft. This format is limited so a dialog is shown if any unsupported features are detected in the current flight plan.

See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information on limitations.

This function changes the current file type and name which means that all further saves will go into the new FLP file and the file will be reloaded on next start.

Store FLP files into the `Output/FMS plans` directory inside the X-Plane directory if you want to load it into the FMS.

#### ![Export as Clean PLN](../images/icons/filesaveclean.png "Export as Clean PLN") Export as Clean PLN {#export-clean-flight-plan}

Saves a flight plan without any procedure or speed annotations if programs have problems reading the PLN files saved by _Little Navmap_. This is rarely needed.

Like any other export function this does not change the current file name and type. Further saves will still use the same file name and format as before.

See also [Flight Plan Formats](FLIGHTPLANFMT.md).

#### Export Flight Plan to Aircraft Formats (Sub-Menu) {#export-submenu-aircraft}

See [Flight Plan Formats](FLIGHTPLANFMT.md) for more detailed information on the available export formats.

All export functions do not change the current file name and type. Further saves will still use the same file name and format as before.

##### Export Flight Plan as X-Plane FMS 3 {#export-flight-plan-as-fms3}

Saves the flight plan using the older X-Plane FMS 3 format which is limited but can be loaded by X-Plane 10 and X-Plane 11.05. A warning dialog is shown if any unsupported features are detected in the current flight plan.

See [Flight Plan Formats](FLIGHTPLANFMT.md) for more information on limitations.

This export function this does not change the current file name and type. Further saves will still use the same file name and format as before.

Store FMS files into the `Output/FMS plans` directory inside the X-Plane directory if you would like to use the flight plan in the X-Plane GPS or FMS.

##### Export Flight Plan as PMDG RTE {#export-flight-plan-as-rte}

Exports the current flight plan as a PMDG RTE file.

Procedures or their respective waypoints are not included in the exported file.

##### Export Flight Plan as TXT {#export-flight-plan-as-txt}

Exports the current flight plan as a TXT file usable by JARDesign or Rotate Simulations aircraft

Neither procedures nor their respective waypoints are included in the exported file.

##### Export Flight Plan as Majestic Dash FPR {#export-flight-plan-as-fpr}

Exports the current flight plan for the Majestic Software MJC8 Q400. Note that the export is currently limited to a list of waypoints.

The flight plan has to be saved to `FSXP3D\SimObjects\Airplanes\mjc8q400\nav\routes`.

##### Export Flight Plan as IXEG FPL {#export-flight-plan-as-fpl}

Exports the current flight plan as an FPL file usable by the IXEG Boeing 737 classic.

SIDs, STARs or approach procedures are not exported.

The file should be saved to `XPLANE\Aircraft\X-Aviation\IXEG 737 Classic\coroutes`. You might have to create the directory manually if it does not exist.

##### Export Flight Plan to corte.in for Flight Factor Airbus {#export-flight-plan-as-fpl}

Appends the flight plan to a new or already present `corte.in` company routes file for the Flight Factor Airbus aircraft.

The file will be automatically created if it does not exist. Otherwise the flight plan will be appended to the file. You have to remove the flight plan manually from the `corte.in` file with a simple text editor if you wish to get rid of it.

Location of the file depends on aircraft type.

##### Export Flight Plan as FLTPLAN for iFly {#export-flight-plan-as-ifly}

Save flight plan as FLTPLAN file for the iFly 737NG. The format does not allow saving of procedures.

Save the file to `FSXP3D\iFly\737NG\navdata\FLTPLAN`.

##### Export Flight Plan for ProSim {#export-flight-plan-as-prosim}

Appends flight plan to the `companyroutes.xml` file for [ProSim](https://prosim-ar.com) simulators. The format does not allow saving of procedures.

Creates a backup file named `companyroutes.xml_lnm_backup` before modifying the file.

##### Export Flight Plan as PLN for BBS Airbus {#export-flight-plan-as-bbs}

Save flight plan as PLN file for the Blackbox Simulations Airbus. The format does not allow saving of procedures.

Save the file to `FSXP3D\BlackBox Simulation\Airbus A330` or `FSXP3D\Blackbox Simulation\Company Routes` depending on aircraft.

##### Export Flight Plan as Level-D RTE {#flight-plan-formats-leveld-rte}

Flight plan for Level-D aircraft. This format cannot save procedures. Save this to `FSXP3D\Level-D Simulations\navdata\Flightplans`.

##### Export Flight Plan as Feelthere FPL {#flight-plan-formats-feelthere}

This format cannot save procedures. The location depends on the aircraft.

##### Export Flight Plan as QualityWings RTE  {#flight-plan-formats-qw-rte}

Export plan for QualityWings aircraft. Saving of procedures is not supported. The file location depends on the aircraft.

##### Export Flight Plan as Maddog X MDX {#flight-plan-formats-mdx}

Flight plan for the Leonardo MaddogX aircraft. Saving of procedures is not supported.

##### Export Flight Plan for TFDi Design 717 {#flight-plan-formats-tfdi}

Flight plan for the TFDi Design Boeing 717 aircraft.

#### Export Flight Plan to Garmin Formats (Sub-Menu) {#export-submenu-garmin}

##### Export Flight Plan as Garmin GTN GFP {#save-flight-plan-as-gfp}

Exports the flight plan in GFP format used by the _Flight1 GTN 650/750_.

Procedures are not included in the exported file.

See [Flight Plan Formats](FLIGHTPLANFMT.md#flight-plan-formats-gfp) for more information about this export format and how to work around locked waypoints.

##### Export Flight Plan as GFP for Reality XP GTN {#save-flight-plan-as-rxpgtn}

Save flight plan as GFP file usable by the _Reality XP GTN 750/650 Touch_. This format allows to save procedures and airways.

See also [Notes about the Garmin Formats GFP and FPL](FLIGHTPLANFMT.md#garmin-notes) for information about paths and other remarks.

##### Export Flight Plan to FPL for the Reality XP GNS {#save-flight-plan-as-rxpgns}

Save flight plan as FPL file usable by the _Reality XP GNS 530W/430W V2_.

Procedures or their respective waypoints are not included in the exported file.

The default directory to save the flight plans for the GNS units is
`C:\ProgramData\Garmin\GNS Trainer Data\GNS\FPL`
for all simulators. The directory will be created automatically by _Little Navmap_ on first export if it does not exist.

See also [Notes about the Garmin Formats GFP and FPL](FLIGHTPLANFMT.md#garmin-notes).

#### Export Flight Plan to Online Formats (Sub-Menu) {#export-submenu-online}

##### Export Flight Plan as vPilot VFP {#flight-plan-formats-vpilot}

Export the flight plan for the VATSIM [vPilot](https://www.vatsim.net/pilots/software) online network client.

The [Flight Plan Online Export](ROUTEEXPORT.md) dialog will appear before where you can add all needed information.

##### Export Flight Plan as IvAp FPL {#flight-plan-formats-ivap}
##### Export Flight Plan as X-IvAp FPL {#flight-plan-formats-xivap}

Export flight plan format for IVAO online network clients [IvAp or X-IvAp](https://www.ivao.aero/softdev/ivap.asp).

The [Flight Plan Online Export](ROUTEEXPORT.md) dialog will appear before where you can add all needed information.

#### Export Flight Plan to other Formats (Sub-Menu) {#export-submenu-other}

##### Export Flight Plan for UFMC {#export-flight-plan-as-ufmc}

Save flight plan as [UFMC](http://ufmc.eadt.eu) file. The format does not allow saving of procedures.

Save the flight plan to `XPLANE\Custom Data\UFMC\FlightPlans`.

##### Export Flight Plan for X-FMC {#export-flight-plan-as-xfmc}

Save flight plan as FPL file usable by [X-FMC](https://www.x-fmc.com). The format does not allow saving of procedures.

The file should be saved to Path to `XPLANE\Resources\plugins\XFMC\FlightPlans`.

##### Export Flight Plan as  EFBR {#flight-plan-formats-efbr}

Export flight plan for the [AivlaSoft Electronic Flight Bag](https://aivlasoft.com). Saving of procedures is not supported.

##### Export Flight Plan as HTML Page {#export-flight-plan-as-html}

Saves the flight plan table as shown to HTML file which can be viewed in a web browser. Icons are embedded in the page.

##### Export Flight Plan as GPX {#export-flight-plan-as-gpx}

Exports the current flight plan into a GPS Exchange Format file which can be read by Google Earth and most other GIS applications.

The flight plan is exported as a route and the flown aircraft trail as a track including simulator time and altitude.

The route has departure and destination elevation and cruise altitude set for all waypoints. Waypoints of all procedures are included in the exported file. Note that the waypoints will not allow to reproduce all parts of a procedure like holds or procedure turns.

**Do not forget to clear the aircraft trail ([Delete Aircraft Trail](MENUS.md#delete-aircraft-trail)) before a flight to avoid old trail segments in the exported GPX file. Or, disable the reloading of the trail in the options dialog on page **`Startup`**.**

##### Show Flight Plan in SkyVector {#export-flight-plan-as-skyvector}

Opens the default web browser and shows the current flight plan in [SkyVector](https://skyvector.com). Procedures are not shown.

Note that the flight plan will not be displayed if a small airport is unknown to SkyVector.

Example: [ESMS NEXI2B NILEN L617 ULMUG M609 TUTBI Z101 GUBAV STM7C ENBO](https://skyvector.com/?fpl=ESMS%20NILEN%20L617%20ULMUG%20M609%20TUTBI%20Z101%20GUBAV%20ENBO). Note missing SID and STAR in SkyVector.

#### Save Waypoints for Approaches {#export-flight-plan-approach-waypoints}
#### Save Waypoints for SID and STAR {#export-flight-plan-sid-star-waypoints}

Save procedure waypoints instead of procedure information if checked. This affects all flight plan export and save formats.

Use this if your simulator, GPS or FMC does not support loading or display of approach procedures, SID or STAR.

Procedure information is replaced with respective waypoints that allow to display procedures in limited GPS or FMS units.

**Note that saving flight plans with this method has several limitations:**

* Several approach leg types like holds, turns and procedure turns cannot be displayed properly by using just waypoints/coordinates.
* Speed and altitude limitations are not included in the exported legs.
* The procedure information is dropped from the saved flight plan and cannot be reloaded properly in _Little Navmap_. Thus, you will see the waypoints of a SID or STAR but not the detailed procedure information. You have to delete the added waypoints and re-select the procedures after loading.

Due to these limitations it is recommended to save a copy of the flight plan with full information before enabling one of these options.

#### ![Add Google Earth KML](../images/icons/kmlfileopen.png "Add Google Earth KML") Add Google Earth KML {#add-google-earth-kml}

Allows addition of one or more Google Earth KML or KMZ files to the map display. All added KML or KMZ files will be reloaded on start up. Reload and centering can be switched off in the `Options` dialog on the `Startup` and `User Interface` tab.

Due to the variety of KML files it is not guaranteed that all files will show up properly on the map.

#### ![Clear Google Earth KML from Map](../images/icons/cancel.png "Clear Google Earth KML from Map") Clear Google Earth KML from Map {#clear-google-earth-kml-from-map}

Removes all loaded KML files from the map.

#### ![Offline](../images/icons/offline.png "Offline") Work Offline {#work-offline}

Stops loading of map data from the Internet. This affects the _OpenStreetMap_, _OpenTopoMap_ and all the other online map themes as well as the elevation data.
A red `Offline.` indication is shown in the status bar if this mode is enabled.

You should restart the application after going online again.

### ![Save Map as Image](../images/icons/mapsaveasimage.png "Save Map as Image") Save Map as Image {#save-map-as-image}

Saves the current map view as an image file. Allowed formats are JPEG, PNG and BMP.  The image does not include the map overlays.

The [Image Export Dialog](IMAGEEXPORT.md) will show up before saving which allows to select the image size.

### ![Save Map as Image for AviTab](../images/icons/mapsaveasimage.png "Save Map as Image for AviTab") Save Map as Image for AviTab {#save-map-as-avitab}

Saves the current map view as an image file for [AviTab](https://github.com/fpw/avitab). Allowed formats are JPEG and PNG.

The [Image Export Dialog](IMAGEEXPORT.md) will show up before saving which allows to select the image size.

The saved file is accompanied by a calibration file in JSON format. It has the same name as the image with an additional `.json` extension.

The files have to be saved to `.../X-Plane 11/Resources/plugins/AviTab/MapTiles/Mercator`.

See here in the AviTab documentation for more information how to load the map image: [Map App - Mercator](https://github.com/fpw/avitab/wiki/Map-App#mercator).

### Copy Map Image to Clipboard {#save-map-to-clipboard}

Copies the current map image to the clipboard. The image does not include the map overlays.

The [Image Export Dialog](IMAGEEXPORT.md) will show up before copying the image to the clipboard which allows to select the image size.

### ![Print Map](../images/icons/printmap.png "Print Map") Print Map {#print-map}

Allows to print the current map view. See [Printing the Map](PRINT.md#printing-the-map) for more information.

### ![Print Flight Plan](../images/icons/printflightplan.png "Print Flight Plan") Print Flight Plan {#print-flight-plan}

Opens a print dialog that allows you to select flight plan related information to be printed. See [Map Flight Plan Printing](PRINT.md#printing-the-flight-plan) for more information.

### ![Quit](../images/icons/application-exit.png "Quit") Quit {#file-quit}

Exits the application. Will ask for confirmation if there is a changed flight plan.

### Flight Plan Menu {#flight-plan-menu}

#### Flight Plan

Opens and raises the flight planning dock window and flight plan tab. Also activates the flight plan table for quick navigation. Same as `Window` -> `Shortcuts` -> `Airport Search` or pressing `F4`.

See [Shortcuts - Window Menu](SHORTCUTS.md#shortcuts-main-window) for a full list or shortcuts.

#### Fuel Report

Opens and raises the flight planning dock window and Fuel Report tab. Same as `Window` -> `Shortcuts` -> `Fuel Report` or pressing `F8`.

See [Shortcuts - Window Menu](SHORTCUTS.md#shortcuts-main-window) for a full list or shortcuts.

#### ![Undo](../images/icons/undo.png "Undo")![Redo](../images/icons/redo.png "Redo") Undo/Redo {#undo-redo}

Allows undo and redo of all flight plan changes.

#### ![Select a Start Position for Departure](../images/icons/parkingstartset.png "Select a Start Position for Departure") Select a Start Position for Departure {#select-a-start-position-for-departure}

A parking spot (gate, ramp or fuel box), runway or helipad can be selected as a start position at the departure airport. A parking position can also be selected in the map context menu item [Set as Flight Plan Departure](MAPDISPLAY.md#set-as-flight-plan-departure) when right-clicking on a parking position. If no position is selected the longest primary runway end is selected automatically as start.

![Select Start Position Dialog](../images/selectstartposition.jpg "Select Start Position Dialog")

_**Picture above:** The start position selection dialog for EDDN._

#### ![Edit Flight Plan on Map](../images/icons/routeedit.png "Edit Flight Plan on Map") Edit Flight Plan on Map {#edit-flight-plan-on-map}

Toggles the flight plan drag and drop edit mode on the map. See [Flight Plan Editing](MAPFPEDIT.md#map-flight-plan-editing).

#### ![New Flight Plan from Route Description](../images/icons/newroutefromstring.png "New Flight Plan from Route Description") New Flight Plan from Route Description {#new-flight-plan-from-description}

Opens a dialog with the route description of the current flight plan that also allows to modify the current flight plan or enter a new one.
[Flight Plan from Route Description](ROUTEDESCR.md) gives more information about this topic.

#### ![Copy Flight Plan Route to Clipboard](../images/icons/routestring.png "Copy Flight Plan Route to Clipboard") Copy Flight Plan Route to Clipboard {#flight-plan-route-clipboard}

Copies the route description of the current flight plan to the clipboard using the settings from the [Flight Plan from Route Description](ROUTEDESCR.md#flight-plan-from-route-description) dialog.

#### ![Calculate Direct](../images/icons/routedirect.png "Calculate Direct") Calculate Direct {#calculate-direct}

Deletes all intermediate waypoints and connects departure and destination using a great circle line.

You can calculate a flight plan between any kind of waypoints, even user-defined waypoints (right-click on the map and select `Add Position to Flight plan` to create one). This allows the creation of snippets that can be merged into flight plans. For example you can use this feature for crossing the North Atlantic with varying departures and destinations. This applies to all flight plan calculation modes.

#### ![Calculate Radionav](../images/icons/routeradio.png "Calculate Radionav") Calculate Radionav {#calculate-radionav}

Creates a flight plan that uses only VOR and NDB stations as waypoints and tries to ensure reception of at least one station along the whole flight plan. Note that VOR stations are preferred before NDB and DME only stations are avoided if possible. Calculation will fail if not enough radio navaids can be found between departure and destination. Build the flight plan manually if this is the case.

This calculation can also be used to create a flight plan snippet between any kind of waypoint.

#### ![Calculate high Altitude](../images/icons/routehigh.png "Calculate high Altitude") Calculate high Altitude {#calculate-high-altitude}

Uses Jet airways to create a flight plan.

Calculated flight plans along airways will obey all airway restrictions like minimum and maximum altitude. The program will also adhere to one-way restrictions for X-Plane and Navigraph based navdata.

Cruise altitude is corrected to the next sensible value (1000 ft for IFR and 500 ft for VFR) if it violates airway altitude restrictions.

A simplified east/west rule is optionally used to adjust the cruise altitude to odd/even values (this can be switched off in the `Options` dialog on the `Flight Plan` tab). This correction is always applied if enabled.

The default behavior is to jump from the departure airport to the next waypoint of a suitable airway and vice versa for the destination. This can be changed in `Options` dialog on the `Flight Plan` tab if VOR or NDB stations are preferred as transition points to airways.

The airway network does not cover all areas (the north Atlantic tracks are missing for example - these change daily), therefore calculation across large ocean areas can fail.

Create the airway manually as a workaround or use an online planning tool to obtain a route string and use the `New Flight Plan from String` option to create the flight plan.

This calculation can also be used to create a flight plan snippet between any kind of waypoint.

Use `Calculate based on given Altitude` below if you think that the result is not optimal. This might be a result of limiting the flight plan to jet airways or using a wrong cruise altitude which is not allowed due to airway restrictions.

Note that changing the cruise altitude after calculation might result in errors shown in the flight plan table. See [Error Display](FLIGHTPLAN.md#flight-plan-table-error) for more information about restriction errors. Using `Calculate based on given Altitude` after setting the desired cruise altitude can solve this problem.

#### ![Calculate low Altitude](../images/icons/routelow.png "Calculate low Altitude") Calculate low Altitude {#calculate-low-altitude}

Uses Victor airways to create a flight plan. Everything else is the same as in `Calculate high Altitude`.

#### ![Calculate based on given Altitude](../images/icons/routealt.png "Calculate based on given Altitude") Calculate based on given Altitude {#calculate-based-on-given-altitude}

Use the value in the altitude field of the flight plan to find a flight plan along Victor and/or Jet airways. Calculation will fail if the altitude value is too low. Everything else is the same as in `Calculate high Altitude`.

#### ![Reverse Flight Plan](../images/icons/routereverse.png "Reverse Flight Plan") Reverse Flight Plan {#reverse-flight-plan}

Swaps departure and destination and reverses order of all intermediate waypoints. A default runway is assigned for the new departure start position.

Note that this function does not consider one-way airways in the X-Plane database and might result in an invalid flight plan.

#### ![Adjust Flight Plan Altitude](../images/icons/routeadjustalt.png "Adjust Flight Plan Altitude") Adjust Flight Plan Altitude {#adjust-flight-plan-alt}

Changes the flight plan altitude according to a simplified East/West rule and the current route type (IFR or VFR). Rounds the altitude up to the nearest even 1000 feet (or meter) for westerly flight plans or odd 1000 feet (or meter) for easterly flight plans. Adds 500 feet for VFR flight plans.

### Map Menu {#map-menu}

#### ![Goto Home](../images/icons/home.png "Goto Home") Goto Home {#goto-home}

Jumps to the home area that was set using [Set Home](MAPDISPLAY.md#set-home) using the saved position and zoom distance. The center of the home area is highlighted by a ![Home Symbol](../images/icons/home.png "Home Symbol") symbol.

#### ![Go to Center for Distance Search](../images/icons/centermark.png "Go to Center for Distance Search") Go to Center for Distance Search {#go-to-center-for-distance-search}

Go to the center point used for distance searches. See [Set Center for Distance Search](MAPDISPLAY.md#set-center-for-distance-search).The center for the distance search is highlighted by a ![Distance Search Symbol](../images/icons/distancemark.png "Distance Search Symbol") symbol.

#### ![Center Flight Plan](../images/icons/centerroute.png "Center Flight Plan") Center Flight Plan {#center-flight-plan}

Zooms out the map (if required) to display the whole flight plan on the map.

#### ![Remove all Highlights and Selections](../images/icons/clearselection.png "Remove all Highlights and Selections") Remove all Highlights and Selections {#remove-highlights}

Deselect all entries in the flight plan table, all search result tables and remove all highlight marks from the map. Use this to get a clean view of the map while flying.

#### ![Remove all Ranges, Measurements, Patterns and Holdings](../images/icons/rangeringsoff.png "Remove all Ranges, Measurements, Patterns and Holdings") Remove all Ranges, Measurements, Patterns and Holdings {#remove-marks}

Removes all user features which are range rings, navaid range rings, measurement lines, airport traffic patterns and holdings from the map. This cannot be undone.

#### ![Center Aircraft](../images/icons/centeraircraft.png "Center Aircraft") Center Aircraft {#center-aircraft}

Zooms to the user aircraft if directly connected to a flight simulator or remotely connected using [Little Navconnect](https://albar965.github.io/littlenavconnect.html) and keeps the aircraft centered on the map.

The centering of the aircraft can be changed in the [Simulator Aircraft](OPTIONS.md#simulator-aircraft) tab in dialog `Options`.

#### ![Delete Aircraft Trail](../images/icons/aircrafttraildelete.png "Delete Aircraft Trail") Delete Aircraft Trail {#delete-aircraft-trail}

The aircraft trail is saved and will be reloaded on program startup.

This menu item removes the user aircraft trail from both the map and the elevation profile.

The trail can be exported together with the flight plan into a `GPX` file by using [Export Flight Plan as GPX](MENUS.md#export-flight-plan-as-gpx).

#### ![Map Position Back](../images/icons/back.png "Map Position Back") ![Map Position Forward](../images/icons/next.png "Map Position Forward") Map Position Back/Forward {#map-position-back-forward}

Jumps forward or backward in the map position history. The complete history is saved and restored when starting _Little Navmap_.

### View Menu {#view-menu}

#### ![Reset Display Settings](../images/icons/centeraircraft.png "Reset Display Settings") Reset Display Settings {#reset-display-settings}

Resets all map display settings which can be changed in the menu `View` back to default.

#### Details (Sub-Menu)

##### ![More Details](../images/icons/detailmore.png "More Details") More Details {#more-details}

##### ![Default Details](../images/icons/detaildefault.png "More Details") Default Details {#default-details}

##### ![Less Details](../images/icons/detailless.png "Less Details") Less Details {#less-details}

Increases or decreases the detail level for the map. More details means more airports, more navaids, more text information and bigger icons.

Note that map information will be truncated if too much detail is chosen. A red warning message will be shown in the statusbar if this is the case.

The detail level is shown in the statusbar. Range is -5 for least detail to +5 for most detail.

#### Airports (Sub-Menu)

##### ![Force Show Addon Airports](../images/icons/airportaddon.png "Force Show Addon Airports") Force Show Addon Airports {#force-show-addon-airports}

Add-on airports are always shown independently of the other airport map settings if this option is selected. This allows viewing only add-on airports by checking this option and disabling the display of hard, soft and empty airports.

##### ![Show Airports with hard Runways](../images/icons/airport.png "Show Airports with hard Runways") Show Airports with hard Runways {#show-airports-with-hard-runways}

Show airports that have at least one runway with a hard surface.

##### ![Show Airports with soft Runways](../images/icons/airportsoft.png "Show Airports with soft Runways") Show Airports with soft Runways {#show-airports-with-soft-runways}

Show airports that have only soft surfaced runways or only water runways. This type of airport might be hidden on the map depending on zoom distance.

##### ![Show empty Airports](../images/icons/airportempty.png "Show empty Airports") Show empty Airports {#show-empty-airports}

Show empty airports. This button or menu item might not be visible depending on settings in the `Options` dialog on the `Map Display` tab. The status of this button is combined with the other airport buttons. This means, for example: You have to enable soft surfaced airport display and empty airports to see empty airports having only soft runways.

An empty airport is defined as one which has neither parking nor taxiways nor aprons and is not an add-on. These airports are treated differently in _Little Navmap_ since they are the most boring of all default airports. Empty airports are drawn gray and behind all other airports on the map.

Airports having only water runways are excluded from this definition to avoid unintentional hiding.

###### X-Plane and 3D airports

The function can be extended to X-Plane airports which are not marked as `3D`. This can be done by checking `Consider all X-Plane airports not being 3D empty` in the `Options` dialog on the `Map Display` tab. All airports not being marked as `3D` will be shown in gray on the map and can be hidden like described above if enabled.

An airport is considered 3D if its source file contains `3D` in the `gui_label`.

The definition of `3D` is arbitrary, though. A `3D` airport may contain just a single object, such as a light pole or a traffic cone or it may be a fully constructed major airport.

#### Navaids (Sub-Menu)

##### ![Show VOR Stations](../images/icons/vor.png "Show VOR Stations") Show VOR Stations {#show-vor-stations}

##### ![Show NDB Stations](../images/icons/ndb.png "Show NDB Stations") Show NDB Stations {#show-ndb-stations}

##### ![Show Waypoints](../images/icons/waypoint.png "Show Waypoints") Show Waypoints {#show-waypoints}

##### ![Show ILS Feathers](../images/icons/ils.png "Show ILS Feathers") Show ILS Feathers {#show-ils-feathers}

##### ![Show Victor Airways](../images/icons/airwayvictor.png "Show Victor Airways") Show Victor Airways {#show-victor-airways}

##### ![Show Jet Airways](../images/icons/airwayjet.png "Show Jet Airways") Show Jet Airways {#show-jet-airways}

Show or hide these facilities or navaids on the map. Navaids might be hidden on the map depending on zoom distance.

#### Airspaces (Sub-Menu) {#airspaces}

Note that airspaces are hidden if the airport diagram is shown.

##### ![Show Airspaces](../images/icons/airspace.png "Show Airspaces") Show Airspaces {#show-airspaces}

Allows to enable or disable the display of all airspaces with one click. Use the menu items below this one or the toolbar buttons to display or hide the various airspace types.

The airspaces toolbar contains buttons each having a drop down menu that allows to configure the airspace display like showing or hiding certain airspace types. Each drop down menu also has `All` and `None` entries to select or deselect all types in the menu.

##### ![ICAO Airspaces](../images/icons/airspaceicao.png "ICAO Airspaces") ICAO Airspaces {#icao-airspaces}

Allows selection of Class A to Class E airspaces.

##### ![FIR Airspaces](../images/icons/airspacefir.png "FIR Airspaces") FIR Airspaces {#fir-airspaces}

Allows selection of the Class F and Class G airspaces or flight information regions.

##### ![Restricted Airspaces](../images/icons/airspacerestr.png "Restricted Airspaces") Restricted Airspaces {#restricted-airspaces}

Show or hide MOA (military operations area), restricted, prohibited and danger airspaces.

##### ![Special Airspaces](../images/icons/airspacespec.png "Special Airspaces") Special Airspaces {#special-airspaces}

Show or hide warning, alert and training airspaces.

##### ![Other Airspaces](../images/icons/airspaceother.png "Other Airspaces") Other Airspaces {#other-airspaces}

Show or hide center, tower, mode C and other airspaces.

##### ![Airspace Altitude Limitations](../images/icons/airspacealt.png "Airspace Altitude Limitations") Airspace Altitude Limitations {#airspace-altitude-limitations}

Allows filtering of the airspace display by altitude. Either below or above 10000 ft or 18000 ft or only airspaces intersecting with the flight plan altitude.

#### Airspace Source (Sub-Menu) {#airspace-source}

Enables or disables various airspace databases for display.

##### Simulator

Toggles display of simulator airspaces. These also change when changing the simulator database in the `Scenery Library` menu.

See also [X-Plane Airspaces](SCENERY.md#load-scenery-library-xplane-airspaces) and  [Prepar3D and FSX Airspaces](SCENERY.md#load-scenery-library-p3d-fsx-airspaces).

##### Navigraph

Shows the airspaces from the included or updated Navigraph database. This is independent of the selected simulator.

##### User

Selects user airspaces for display. This source is independent of the selected simulator.

See also [User Airspaces](SCENERY.md#load-scenery-library-user-airspaces) and [Load User Airspaces](MENUS#load-user-airspaces).

##### Online

#### User Features (Sub-Menu) {#user-features}

#### ![Range Rings](../images/icons/rangerings.png "Range Rings") Range Rings
#### ![Measurement Lines](../images/icons/distancemeasure.png "Measurement Lines") Measurement Lines
#### ![Traffic Patterns](../images/icons/trafficpattern.png "Traffic Patterns") Traffic Patterns
#### ![Holdings](../images/icons/hold.png "Holdings") Holdings

Hides or shows the respective user feature.

Note that the menu item to add an user feature is disabled if the respective user feature is hidden on the map. The menu item is suffixed with the text `hidden on map` if this is the case.

#### Userpoints (Sub-Menu) {#userpoints}

Allows to hide or show user-defined waypoints by type.

The menu item `Unknown Types` shows or hides all types which do not belong to a known type.

The type `Unknown` ![Unknown](../images/icons/userpoint_Unknown.png "Airspace Altitude Limitations")
 shows or hides all userpoints which are exactly of type `Unknown`.

See [User-defined Waypoints](USERPOINT.md) for more information on user-defined waypoints.

#### ![Show Flight Plan](../images/icons/route.png "Show Flight Plan") Show Flight Plan {#show-flight-plan}

Show or hide the flight plan. The flight plan is shown independently of the zoom distance.

#### ![Show Missed Approaches](../images/icons/missed.png "Show Missed Approaches") Show Missed Approaches {#show-missed-approaches}

Show or hide the missed approaches of the current flight plan. This does not affect the preview in the search tab `Procedures`.

**Note that this function changes the active flight plan leg sequencing:** Sequencing the active leg will stop if the destination is reached and missed approaches are not displayed. Otherwise sequencing will continue with the missed approach and the simulator aircraft progress will show the remaining distance to the end of the missed approach instead.

#### ![Show Aircraft](../images/icons/aircraft.png "Show Aircraft") Show Aircraft {#show-aircraft}

Shows the user aircraft and keeps it centered on the map if connected to the simulator. The user aircraft is always shown independently of the zoom distance.

The icon color and shape indicates the aircraft type and whether the aircraft is on ground (gray border).

![User Aircraft](../images/icons/aircraft_small_user.png "User Aircraft") User aircraft in flight.

A click on the user aircraft shows more information in the `Simulator Aircraft` dock window.

More options to change the map behavior while flying can be found in the dialog `Options` on the tab [Simulator Aircraft](OPTIONS.md#simulator-aircraft).

The aircraft centering will be switched off when using one of the following functions. Note that this default behavior can be modified in the options dialog.

* Double-click into a table view or map display to zoom to an airport or a navaid.
* Context menu item `Show on map`.
* `Goto Home` or `Goto Center for Distance Search`.
* `Map` link in `Information` dock window.
* `Show Flight Plan`, when selected manually, or automatically after loading a flight plan.
* Centering a Google Earth KML/KMZ file after loading

This allows a quick inspection of an airport or navaid during flight. To display the aircraft again use `Map Position Back` or enable `Show Aircraft` again.

#### ![Show Aircraft Trail](../images/icons/aircrafttrail.png "Show Aircraft Trail") Show Aircraft Trail {#show-aircraft-trail}

Show the user aircraft trail. The trail is always shown independently of the zoom distance. It is saved and will be reloaded on program startup.

The trail can be deleted manually by selecting `Map` -> `Delete Aircraft Trail` in the main menu.

The length of the trail is limited for performance reasons. If it exceeds the maximum length, the trail is truncated and the oldest segments are lost.

The trail can be exported together with the flight plan into a `GPX` file by using [Export Flight Plan as GPX](MENUS.md#export-flight-plan-as-gpx).

#### ![Show Compass Rose](../images/icons/compassrose.png "Show Compass Rose") Show Compass Rose {#show-compass-rose}

Show a compass rose on the map which indicates true north and magnetic north. Aircraft heading and aircraft trail are shown if connected to a simulator.

The rose is centered around the user aircraft if connected. Otherwise it is centered on the map view.

See [Compass Rose](COMPASSROSE.md) for details.

#### ![Show AI and Multiplayer Aircraft](../images/icons/aircraftai.png "Show AI and Multiplayer Aircraft") ![Show AI and Multiplayer Ships](../images/icons/boatai.png "Show AI and Multiplayer Ships") Show AI and Multiplayer Aircraft or Ships {#show-map-ai-aircraft}

Shows AI and multiplayer aircraft or ships on the map. Multiplayer vehicles can be displayed from e.g. FSCloud, VATSIM or Steam sessions.

The icon color and shape indicates the aircraft type and whether the aircraft is on ground (gray border).

![AI or Multiplayer Aircraft](../images/icons/aircraft_small.png "AI or Multiplayer Aircraft") AI or multiplayer aircraft from the simulator. This includes aircraft that are injected by the various online network clients. A click on the AI aircraft or ship shows more information in the `Simulator Aircraft` dock window in the tab `AI / Multiplayer`.

![Online Multiplayer Aircraft](../images/icons/aircraft_online.png "User Aircraft") Multiplayer aircraft/client from an online network. See [Online Networks](ONLINENETWORKS.md). A click on the online  aircraft shows information in the `Information` dock window in the separate tab `Online Clients`.

Note that, in X-Plane, ship traffic is not available and AI aircraft information is limited.

The displayed vehicles are limited by the used multiplayer system if _Little Navmap_ is not connected to an online network like VATSIM or IVAO. Multiplayer aircraft will disappear depending on distance to user aircraft. For AI in FSX or P3D this is currently about 100 nautical miles or around 200 kilometers.

Smaller ships are only generated by the simulator within a small radius around the user aircraft.

_Little Navmap_ limits the display of AI vehicles depending on size. Zoom close to see small aircraft or boats.

On the lowest zoom distance all aircraft and ships are drawn to scale on the map.

Aircraft labels are forced to show independently of zoom level for the next five AI/multiplayer aircraft closest to the user that are within 20 nm distance and 5000 ft elevation.

All aircraft icons can be customized: [User, AI and Multiplayer Aircraft Icons](CUSTOMIZE.md#customize-aircraft-icons).

#### ![Show Map Grid](../images/icons/mapgrid.png "Show Map Grid") Show Map Grid {#show-map-grid}

Show a latitude/longitude grid as well as the [meridian](https://en.wikipedia.org/wiki/Prime_meridian) and [antimeridian](https://en.wikipedia.org/wiki/180th_meridian) (near the date line) on the map.

#### ![Show Country and City Names](../images/icons/cities.png "Show Country and City Names") Show Country and City Names {#show-country-and-city-names}

Show country, city and other points of interest. Availability of these options depends on the selected map theme. See [Theme](MENUS.md#theme).

#### ![Show Hillshading](../images/icons/hillshading.png "Show Hillshading") Show Hillshading {#show-hillshading}

Show hill shading on the map. Availability of these options depends on the selected map theme. See [Theme](MENUS.md#theme).

#### ![Show Minimum Altitude](../images/icons/minaltitude.png "Show Minimum Altitude") Show Minimum Altitude {#show-mora-grid}

Toggles the display of minimum off-route altitude grid on the map.

The minimum off-route altitude grid provides an obstacle clearance altitude within an one degree grid. The altitudes clear all terrain and obstructions by 1000 feet in areas where the highest elevations are 5000 feet MSL or lower. Where the highest elevations are above 5000 feet MSL or higher terrain is cleared by 2000 feet.

The large number is 1000 feet and small number 100 feet minimum altitude.

![MORA Grid](../images/legend/map_mora.png)

_**Picture above:** MORA grid: 3300, 4400, 6000, 9900 and 10500 feet._

#### ![Show Airport Weather](../images/icons/weather.png "Show Airport Weather") Show Airport Weather {#show-airport-weather}

Shows icons for airport weather where a weather station is available. Select source for display with [Airport Weather Source](MENUS.md#airport-weather-source) below.

See [Legend - Airport Weather](LEGEND.md#airport-weather) for an explanation of the symbols and
[Airport Weather](WEATHER.md#airport-weather) for more information.

#### Wind levels (Sub-Menu) {#wind-levels}

Enables or disables wind aloft display for different layers as well as at flight plan waypoints. Select wind data source for display with [Wind Source](MENUS.md#wind-source) below.

See [Legend - Winds Aloft](LEGEND.md#high-alt-wind) for an explanation of the wind symbols and
[Weather - Winds Aloft](WEATHER.md#wind) for more information.

#### ![Show Sun Shading](../images/icons/mapshadow.png "Show Sun Shading") Show Sun Shading {#show-sun-shading}

Enables the display of sun shading on the globe. This works in both projections `Mercator` and `Spherical`.

You can change the time source with the `Sun Shading Time` menu below. The shadow darkness can be changed in the dialog `Options` on tab `Map Display`.

See [Sun Shading](SUNSHADOW.md) for more information.

#### Sun Shading Time {#show-sun-shading-time}

You can choose between three time sources for the sun shadow.

##### Simulator

Uses the time of the connected flight simulator and falls back to real time if not connected. Updates the shadow if the simulator time changes.

##### Real UTC Time

Use real time.

##### User defined Time

Allows to use the user defined time as set by using `Set User defined Time` below.

##### Set User defined Time

Opens a dialog to set an user defined time in UTC as a source for the sun shading.

See [Sun Shading - Set User defined Time](SUNSHADOW.md#sun-shadow-user-defined) for more information.

#### Projection {#projection}

##### Mercator {#mercator}

A flat projection that gives the most fluid movement and the sharpest map when using picture tile based online maps themes like _OpenStreetMap_ or _OpenTopoMap_.

##### Spherical {#spherical}

Shows earth as a globe which is the most natural projection. Movement can stutter slightly when using the picture tile based online maps themes like _OpenStreetMap_ or _OpenTopoMap_. Use the `Simple`, `Plain` or `Atlas` map themes to prevent this.

Online maps can appear slightly blurred when using this projection. This is a result from converting the flat image tiles to the spherical display.

![Little Navmap Spherical projection and Simple Map Theme](../images/sphericalpolitical.jpg "Little Navmap Spherical projection and Simple Map Theme")

_**Picture above:** Spherical map projection with `Simple` offline map theme selected._

#### Theme {#theme}

Please note that all the online maps are delivered from free services therefore fast download speeds and high availability cannot be guaranteed. In any case it is easy to deliver and install a new online map source without creating a new _Little Navmap_ release. See [Creating or adding Map Themes](MAPTHEMES.md) for more information.

Custom map themes are prefixed with a `*` in the drop down box in the toolbar and with the word `Custom` in the menu.

**Check out the [Little Navmap Support Forum at AVSIM](https://www.avsim.com/forums/forum/780-little-navmap-little-navconnect-little-logbook-support-forum/) for more map themes.**


##### OpenStreetMap {#openstreetmap}

This is an online raster (i.e. based on images) map that includes a hill shading option. Note that the _OpenStreetMap_ hill shading does not cover the whole globe.

![OpenStreetMap and Hill shading](../images/osmhillshading.jpg "OpenStreetMap and Hill shading")

_**Picture above:** View at an Italian airport using OpenStreetMap theme and hill shading._

##### OpenTopoMap {#opentopomap}

An online raster map that mimics a topographic map. Includes hill shading and elevation contour lines at lower zoom distances.

The tiles for this map are provided by [OpenTopoMap](https://www.opentopomap.org).

![OpenTopoMap](../images/otm.jpg "OpenTopoMap")

_**Picture above:** View at the eastern Alps using OpenTopoMap theme. A flight plan is shown north of the Alps._

##### Stamen Terrain {#stamen-terrain}

A terrain map featuring hill shading and natural vegetation colors. The hill shading is available worldwide.

Map tiles by [Stamen Design](https://stamen.com), under [CC BY 3.0](https://creativecommons.org/licenses/by/3.0). Data by [OpenStreetMap](https://www.openstreetmap.org), under [ODbL](https://www.openstreetmap.org/copyright).

![Stamen Terrain](../images/stamenterrain.jpg "Stamen Terrain")

_**Picture above:** View showing Stamen Terrain theme._

##### CARTO Light {#carto-light} (New in version 1.4.4)

A very bright map called *Positron* which allows to concentrate on the aviation features on the map display. The map includes the same hill shading option as the _OpenStreetMap_.

Map tiles and style by [CARTO](https://carto.com/). Data by [OpenStreetMap](https://www.openstreetmap.org), under [ODbL](https://www.openstreetmap.org/copyright).

##### CARTO Dark {#carto-light} (New in version 1.4.4)

A dark map called *Dark Matter*. The map includes the same hill shading option as the _OpenStreetMap_.

Map tiles and style by [CARTO](https://carto.com/). Data by [OpenStreetMap](https://www.openstreetmap.org), under [ODbL](https://www.openstreetmap.org/copyright).

##### Simple (Offline) {#simple-offline}

This is a political map using colored country polygons. Boundaries and water bodies are depicted coarse. The map included in _Little Navmap_ has an option to display city and country names.

##### Plain (Offline) {#plain-offline}

A very simple map. The map is included in _Little Navmap_ and has an option to display city and country names. Boundaries and water bodies are depicted coarse.

##### Atlas (Offline) {#atlas-offline}

A very simple map including coarse hill shading and land colors. The map is included in _Little Navmap_ and has an option to display city and country names. Boundaries and water bodies are depicted coarse.

### Weather Menu {#scenery-library-menu}

#### Airport Weather Source (Sub-Menu) {#airport-weather-source}

Selects the source for the airport weather symbol display on the map. See also [Airport Weather](WEATHER.md#airport-weather) and [Options - Weather](OPTIONS.md#weather).

The following options are available:

##### Flight Simulator

FSX, Prepar3D or X-Plane. Display for FSX/Prepar3D and on remote connections is slower and might cause stutters when scrolling.

Display for X-Plane remote connections is not supported except by sharing the X-Plane `METAR.rwx` weather file on the network.

##### Active Sky

Use Active Sky as source for weather display.

##### NOAA

Most up-to-date option for weather ([National Oceanic and Atmospheric Administration](https://www.noaa.gov/)).

##### VATSIM

Same as NOAA but weather information might be older than NOAA. Use this for online flying in the VATSIM network.

##### IVAO

Same as NOAA weather but information might be older. Use this for online flying in the IVAO network.

#### Wind source (Sub-Menu) {#wind-source}

Choose the source for winds aloft data here. This will affect the calculation of top of descent, top of climb and fuel planning. See also [Weather - Winds Aloft](WEATHER.md#wind) and [Options - Weather](OPTIONS.md#weather)..

A manual wind setting for cruise altitude can also be used. See [Aircraft Performance - Buttons] (AIRCRAFTPERF.md#aircraft-performance-buttons).

The selected wind source is shown in the tab `Fuel Report` in the `Average wind` line as well as in all tooltips on wind barbs.

##### Disabled

No wind will be downloaded and processed.

##### Flight Simulator (X-Plane only)

Uses the `global_winds.grib` file which is downloaded and used by X-Plane. This file uses only two wind layers and is therefore less accurate than the NOAA option.

##### NOAA

Downloads weather files from [National Oceanic and Atmospheric Administration](https://www.noaa.gov/). This is the most accurate option since it downloads data for several wind layers.

### Userdata Menu {#userdata-menu}

See [User-defined Waypoints](USERPOINT.md) for more information on user-defined waypoints.

#### Userpoint Search {#userdata-menu-show-search}

Raise the dock window `Search` and the tab `Userpoints` where you can edit, add delete and search user-defined waypoints.

#### Import CSV {#userdata-menu-import-csv}

Import a CSV file that is compatible with the widely used format from Plan-G and adds all the content to the database.

Note that the CSV format is the only format which allows to write and read all supported data fields.

See [CSV Data Format](USERPOINT.md#userpoints-csv) for a more detailed description.

#### Import X-Plane user_fix.dat {#userdata-menu-import-user-fix}

Import user-defined waypoints from the file `user_fix.dat`. The file does not exist by default in X-Plane and has to be created either manually or by exporting from _Little Navmap_.

The default location is `XPLANE/Custom Data/user_fix.dat`.

The imported userpoints are of type `Waypoint` ![Waypoint](../images/icons/userpoint_Waypoint.png "Waypoint") which can be changed after import using the bulk edit functionality.

The format is described by Laminar Research here: [XP-FIX1101-Spec.pdf](https://developer.x-plane.com/wp-content/uploads/2016/10/XP-FIX1101-Spec.pdf).

See [X-Plane user_fix.dat Data Format](USERPOINT.md#userpoints-xplane) for more information.

#### Import Garmin GTN {#userdata-menu-import-garmin-gtn}

Reads user-defined waypoints from the Garmin `user.wpt` file. Refer to the manual of the Garmin unit you are using for more information about format and file location.

The imported userpoints are of type `Waypoint` ![Waypoint](../images/icons/userpoint_Waypoint.png "Waypoint") which can be changed after import using the bulk edit functionality.

See [Garmin user.wpt Data Format](USERPOINT.md#userpoints-garmin) for more information.

#### Export CSV {#userdata-menu-export-csv}

Create or append user-defined waypoints to a CSV file. A dialog asks if only selected userpoints should be exported and if the userpoints should be appended to an already present file.

Note that the exported file contains an extra column `Region` compared to the Plan-G format. The description field supports more than one line of text and special characters. Therefore, not all programs might be able to import this file. If needed, adapt the user-defined waypoints.

#### Export X-Plane user_fix.dat {#userdata-menu-export-user-fix}

Only selected userpoints or all can be exported. The exported data can optionally be appended to an already present file.

Not all data fields can be exported to this format. The ident field is required for export.

Also, you have to make sure that the user waypoint ident is unique within the `user_fix.dat`.

See [X-Plane user_fix.dat Data Format](USERPOINT.md#userpoints-xplane) for more information about limitations.

#### Export Garmin GTN {#userdata-menu-export-garmin-gtn}

Only selected userpoints or all can be exported. The exported data can optionally be appended to an already present file.

Not all data fields can be exported to this format. The ident field is required for export.
Some fields like the name are adapted to limitations.

See [X-Plane user_fix.dat Data Format](USERPOINT.md#userpoints-xplane) for more information about limitations.

#### Export XML for FSX/P3D BGL Compiler {#userdata-menu-export-bgl}

This export options creates an XML file which can be compiled into an BGL file containing waypoints.

The region and ident fields are required for this export option.

See the Prepar3D SDK documentation for information on how to compile the BGL and how to add this to the simulator.

#### Clear database {#userdata-menu-clear-database}

Remove all user-defined waypoints from the database.

A CSV backup file named `little_navmap_userdata_backup.csv` is created in the settings directory `C:\Users\YOURUSERNAME\AppData\Roaming\ABarthel` before deleting all user-defined waypoints.

_Little Navmap_ also creates a full database backup on every start. See [Files](FILES.md#userdata).

### Logbook Menu {#logbook-menu}

#### Logbook Search {#logbook-search}

Raise the dock window `Search` and the tab `Logbook` where you can edit, add delete and search logbook entries.

#### Show Statistics {#logbook-statistics}

Shows the logbook statistics dialog. See [Logbook Statistics](LOGBOOK.md#statistics).

#### Import CSV {#logbook-import-csv}
#### Export CSV {#logbook-export-csv}

Allows to import and export the full logbook to a CSV (comma separated value) text file which can be loaded in _LibreOffice Calc_ or _Microsoft Excel_. See [Import and Export](LOGBOOK.md#import-export).

#### Import X-Plane Logbook {#logbook-import-xplane}

Import the X-Plane logbook file `.../X-Plane 11/Output/logbooks/X-Plane Pilot.txt` into the _Little Navmap_ logbook database. Note that the X-Plane logbook format is limited and does not provide enough information to fill all _Little Navmap_ logbook fields.

See [X-Plane Import](LOGBOOK.md#import-xplane).

#### Convert Log Entries from Userdata {#logbook-convert-userdata}

Automatically converts all legacy log entries that were collected as userpoints and copies them to the new logbook.

See [Conversion](LOGBOOK.md#convert) for details.

#### Create Logbook entries {#logbook-create-entries}

_Little Navmap_ creates logbook entries for each flight automatically if this menu item is checked. A logbook entry containing only departure is created on takeoff and finalized with destination and more information on landing.

Use [Reset all Settings and Restart](#reset-and-restart) to be sure that the logbook flight detection is set up for a new flight.

See also [Logbook](LOGBOOK.md).

### Aircraft Menu {#aircraft-menu}

This menu contains functionality for aircraft performance profiles which allow fuel planning and traveling time estimation.

See [Aircraft Performance](AIRCRAFTPERF.md) and [Edit Aircraft Performance](AIRCRAFTPERFEDIT.md) for more information.

#### ![New Aircraft Performance](../images/icons/aircraftperfnew.png "New Aircraft Performance") New Aircraft Performance {#aircraft-menu-new}

Creates a new performance profile with default values, shows the fuel report and opens the edit dialog. A profile with 3 nm per 1000 ft for descent and climb rules and no fuel consumption is default. Red warning messages will be shown since the profile is not complete.

#### ![Open Aircraft Performance](../images/icons/aircraftperfload.png "Open Aircraft Performance") Open Aircraft Performance {#aircraft-menu-load}

Loads a `lnmperf` aircraft performance profile and shows the fuel report. You can also load a profile by dragging the file from a file manager like Windows Explorer into the main window of _Little Navmap_.

#### ![Save Aircraft Performance](../images/icons/aircraftperfsave.png "Save Aircraft Performance") Save Aircraft Performance {#aircraft-menu-save}

Saves the current profile. Opens a file dialog if not saved before.

#### ![Save Aircraft Performance as](../images/icons/aircraftperfsaveas.png "Save Aircraft Performance as") Save Aircraft Performance as {#aircraft-menu-save-as}

Allows to save the current profile using a new filename.

#### Recent Performance Files (Sub-Menu) {#aircraft-menu-recent}

Shows all recently loaded aircraft performance files for quick access. You can clear the list by selecting the sub-menu item `Clear Menu`.

#### ![Edit Aircraft Performance](../images/icons/aircraftperfedit.png "Edit Aircraft Performance as") Edit Aircraft Performance {#aircraft-menu-edit}

Opens the [Edit Aircraft Performance](AIRCRAFTPERFEDIT.md) dialog for the current performance profile.

#### ![Open Aircraft Performance and Merge](../images/icons/aircraftperfload.png "Open Aircraft Performance and Merge") Open Aircraft Performance and Merge {#aircraft-menu-open-merge}

Opens a file loading dialog and subsequently the [Aircraft Performance Merge](AIRCRAFTPERFMERGE.md) dialog which allows to merge or copy data from the opened file to the current aircraft performance.

#### ![Merge collected Aircraft Performance](../images/icons/aircraftperfmerge.png "Merge collected Aircraft Performance") Merge collected Aircraft Performance {#aircraft-menu-merge}

Opens the [Aircraft Performance Merge](AIRCRAFTPERFMERGE.md) dialog which allows to merge or copy data from the collected aircraft performance to the currently loaded aircraft performance.

See also [Aircraft Performance Collection](AIRCRAFTPERFCOLL.md).

#### ![Restart Aircraft Performance Collection](../images/icons/aircraftperfreset.png "Restart Aircraft Performance Collection") Restart Aircraft Performance Collection {#aircraft-menu-restart}

Resets all collected values for aircraft performance to zero and starts the performance collection over.

See also [Aircraft Performance Collection](AIRCRAFTPERFCOLL.md).

### Scenery Library Menu {#scenery-library-menu}

#### Flight Simulators {#flight-simulators}

One menu item is created for each Flight Simulator installation or database found. These menu items allow switching of databases on the fly. The menu item is disabled if only one Flight Simulator was found.

The loaded AIRAC cycle is displayed only for X-Plane and Navigraph data since the information is not available for FSX or P3D simulators.

**You have to set the base path to the X-Plane directory in the **`Load Scenery Library Dialog`** first to enable the X-Plane menu item.**

This menu is synchronized with simulator selection in the [Load Scenery Library Dialog](SCENERY.md#load-scenery-library-dialog). Once a database is successfully loaded, the display, flight plan and search will switch over to the newly loaded simulator data.

**Note that the program does not keep you from using a X-Plane scenery database while being connected to FSX/Prepar3D or vice versa. You will get unwanted effects like wrong weather information if using such a setup.**

The program might change a loaded flight plan if you switch between different databases. This can happen if a departure position is set in the plan which does not exist in the other database. Click `New Flight Plan` before switching to avoid this.

#### Navigraph {#navigraph}

This sub menu also indicating the AIRAC cycle is added if a Navigraph database is found in the database directory.

See the chapter [Navigation Databases](NAVDATA.md) for more information about these databases and the three different display modes shown below.

##### Use Navigraph for all Features {#navigraph-all}

Completely ignores the simulator database and takes all information from the Navigraph database.

##### Use Navigraph for Navaids and Procedures {#navigraph-navaid-proc}

This mode blends navaids and more from the Navigraph database with the simulator database. This affects the map display, all information and all search windows.

##### Do not use Navigraph Database {#navigraph-none}

Ignores the Navigraph database and shows only information read from the simulator scenery.

#### Show Database Files {#show-database-files}

Open _Little Navmap_'s database directory in a file manager. See [Running without Flight Simulator Installation](RUNNOSIM.md#running-without-flight-simulator-installation) for more information on copying database files between different computers. This allows _Little Navmap_ to be run on a remote computer (e.g. Windows, Mac or Linux) using the same database that was created on the computer running the flight simulator.

#### ![Load User Airspaces](../images/icons/databaseairspace.png "Load User Airspaces") Load User Airspaces {#load-user-airspaces}

A directory selection dialog will show up when running this function the first time. Select a directory containing OpenAir airspace files with file ending `.txt`. All files in the directory will be read recursively into the user airspace database.

See also [User Airspaces](SCENERY.md#load-scenery-library-user-airspaces).

#### ![Load Scenery Library](../images/icons/database.png "Load Scenery Library") Load Scenery Library {#load-scenery-library}

Open the `Load Scenery Library` dialog. See [Load Scenery Library Dialog](SCENERY.md#load-scenery-library-dialog) for more information. This menu item is disabled if no flight simulator installations are found.

### Tools Menu {#tools-menu}

#### ![Flight Simulator Connection](../images/icons/network.png "Flight Simulator Connection") Flight Simulator Connection {#flight-simulator-connection}

Open the `Connect` dialog allowing _Little Navmap_ to connect directly to a Flight Simulator, the *Little Xpconnect* X-Plane plugin, or remotely using the [Little Navconnect](https://albar965.github.io/littlenavconnect.html) agent. See [Connecting to a Flight Simulator](CONNECT.md#connecting-to-a-flight-simulator) for more information.

#### Run Webserver {#run-webserver}

Starts the internal web server of _Little Navmap_. Access the web page using the menu item `Open Webserver Page in Browser` below.

See [Web Server](WEBSERVER.md) for detailed information and [Options - Web Server](OPTIONS.md#web-server) for configuration options.

#### Open Webserver Page in Browser {#open-webserver}

Only enabled if the web server is running. Opens the web server page in your default browser. The default address is like `http://YOUR_COMPUTER_NAME:8965`.

#### Reset all Settings and Restart {#reset-and-restart}

This will reset all options, window layout, dialog layout, aircraft trail, map position history and file histories  back to default values and restart _Little Navmap_ after showing a warning dialog.

User features like range rings, traffic patterns, holds as well as scenery, logbook and userpoint databases are not affected.

A backup copy of the settings file `little_navmap.ini` is created in the configuration directory. See [Files - Configuration](FILES.md#configuration).

Use this function instead of deleting the settings directory if you see crashes or other issues with the program.

#### Reset all Messages {#reset-all-messages}

Re-enable all dialogs that were disabled by selecting `Do not show this dialog again` or similar messages.

#### Save Options and State {#save-state}

Saves all options, dialog settings, tab arrangements and the window layout. This is normally only done when exiting _Little Navmap_.

#### ![Options](../images/icons/settings.png "Options") Options {#options}

Open the [Options dialog](OPTIONS.md#options-dialog).

### Window Menu {#window-menu}

#### Map Overlays (Sub-Menu) {#map-overlays}

Show or hide floating map overlays, like the overview on the top left or the compass on the top right corner of the map window.

#### Style (Sub-Menu) {#window-styles}

Allows to switch the style of the graphical user interface on the fly. A restart is not needed.

The user interface styles contain a `Night` mode that can be used for flights in a dark environment. You can also dim the map and elevation profile display for this style in the dialog `Options` on tab `Map Display` (`Map Dimming in Night Style` at the bottom of the dialog).

The colors for the styles `Fusion` and `Night` can be changed by editing configuration files. See [Customize](CUSTOMIZE.md) for more information.

The available styles depend on the operating system except for `Fusion` and `Night` which are always available.

#### Shortcuts (Sub-Menu) {#shortcuts}

A list of menu items that open and raise the respective dock window and tab. See [Shortcuts - Window Menu](SHORTCUTS.md#shortcuts-main-window) for a full list.

Some shortcuts also activate a search fields or tables like the airport ICAO search when using `Airport Search` or pressing `F4`. This allows to quickly look for an airport or other feature by just pressing a function key.

#### Show all floating Windows {#search}

Raises all undocked (i.e. floating) windows before the main window. This can be helpful if a window got lost.
See [Dock Windows](DOCKWINDOWS.md) for more information about floating dock windows.

#### ![Search](../images/icons/searchdock.png "Search") Search {#search}

#### ![Flight Plan](../images/icons/routedock.png "Flight Plan") Flight Plan {#flight-plan}

#### ![Information](../images/icons/infodock.png "Information") Information {#information}

#### ![Flight Plan Elevation Profile](../images/icons/profiledock.png "Flight Plan Elevation Profile") Flight Plan Elevation Profile {#flight-plan-elevation-profile}

#### ![Simulator Aircraft](../images/icons/aircraftdock.png "Simulator Aircraft") Simulator Aircraft {#simulator-aircraft}

#### ![Legend](../images/icons/legenddock.png "Legend") Legend {#legend}

Open or close these dock windows. The map dock window cannot be closed. The whole dock window stack is closed if a dock window is part of a stack. See [Dock Windows](DOCKWINDOWS.md) for more information about stacked dock windows.

#### Main Toolbar, Map Toolbar, Map Airspaces Toolbar, Map Options Toolbar, Flight Plan Toolbar, Dock Window Toolbar, Statusbar {#main-toolbar-options}

Show or hide these toolbars and the statusbar.

#### Reset Window Layout {#reset-layout}

Reset the main window layout back to default. This involves visibility, position and state of all dock windows as well as the toolbars. This function can be helpful if a dock window gets lost on multi monitor setups.

### Help Menu {#help-menu}

#### ![Contents (Online)](../images/icons/help.png "Contents (Online)") Contents (Online) {#help-contents}

Show the online user manual in the default web browser.

#### ![Tutorials (Online)](../images/icons/help.png "Tutorials (Online)") Tutorials (Online) {#help-tutorials}

Shows the online tutorials in the default web browser.

#### ![Frequently asked Questions (Online)](../images/icons/help.png "Frequently asked Questions (Online)") Frequently asked Questions (Online) {#help-faq}

Shows the frequently asked questions in the web browser.

#### ![Contents (Offline, PDF)](../images/icons/help.png "Contents (Offline, PDF)") Contents (Offline, PDF) {#help-contents-offline}

Show the included PDF user manual in the default PDF viewer.

#### ![NavMap Legend](../images/icons/help.png "NavMap Legend") NavMap Legend {#navmap-legend-map-legend}

Show the navigation related map legend in the `Legend` dock window. You can also access the legend here: [Navmap Legend](LEGEND.md).

#### ![Map Legend for current Map Theme](../images/icons/help.png "Map Legend for current Map Theme") Map Legend for current Map Theme {#navmap-legend-map-legend}

Show the map theme dependent base legend in the `Legend` dock window. Note that the legend is not available for all map themes.

#### ![About Little Navmap](../images/icons/littlenavmap.png "About Little Navmap") About Little Navmap {#about-little-navmap}

Show version and revision number for _Little Navmap_, also contains links to the database directory, configuration file, log file and the author's e-mail address.

#### ![About Marble](../images/icons/marble.png "About Marble") About Marble {#about-marble}

Display information about the [Marble widget](https://marble.kde.org) that is used to download and show the maps.

#### ![About Qt](../images/icons/qticon.png "About Qt") About Qt {#about-qt}

Display information about the [Qt application framework](https://www.qt.io) that is used by _Little Navmap_.

#### ![Donate for this Program](../images/icons/about.png "Donate for this Program") Donate for this Program {#donate}

Opens the donation web page in your default browser.

If you would like to show your appreciation you can donate using PayPal.

Donations are purely optional but greatly appreciated.

#### ![Check for Updates](../images/icons/revert.png "Check for Updates") Check for Updates {#check-updates}

Allows to manually check for updates. This will also show updates that were recently ignored by pressing the `Ignore this Update` on the notification dialog.

See [Checking for Updates](UPDATE.md) for more information.

## Statusbar {#statusbar}

The statusbar at the bottom of the main window shows various indications (from left to right):

* Last action or quick help explaining a menu item or toolbar button.
* Connection status for a local or remote connection. The tooltip provides more detail about the status, like the host name for remote connections.
  * `Connecting...`: The program is trying to establish a connection which was initiated either manually or automatically.
  * `Connected`: A connection was established.
  * `Disconnected`: The simulator or _Little Navconnect_ exited.
* Indicator that shows airport types, airspaces, navaids or AI vehicles currently visible on the map. The tooltip gives more details.
  * A red warning message `Too many objects` will be shown if too many objects are displayed on the map due to too high a detail level. The map display will be incomplete if this happens.
  * A red `Database empty` message will be shown if the currently selected database has no content and needs to be loaded.
* Map detail level. Range is -5 for least detail to +5 for most detail.
* Online map download progress indicator. This shows the state of the current map download. The text is prefixed with a red `Offline.` indication if offline mode is enabled.
  * `Done.`: All map data loaded successfully.
  * `Waiting for Data ...`: Map data is missing in the cache and was requested. Now waiting for reply.
  * `Waiting for Update ...`: Map data is already loaded but expired after two weeks. Waiting for new data after requesting an update.
  * `Incomplete.`: Download failed. Note that the progress indicator can look like it is stuck in the message `Waiting for Data ...` if no hill shading is available for a _OpenStreetMap_ region or if you zoom in too close when using certain online maps.
* Zoom distance (viewpoint distance to earth surface) in nautical miles or kilometers.
* Cursor position on map as latitude and longitude depending on selected unit in the dialog `Options`.
  * Ground elevation below the cursor after a short delay if the [GLOBE](https://ngdc.noaa.gov/mgg/topo/globe.html) offline elevation data is selected.
  * Magnetic declination at the cursor position in degrees West or East.
* Current date of month and Zulu/UTC time `hours:minutes:seconds`. This is the real world time and not the simulator time. The tooltip gives more date and time information.

![Statusbar](../images/statusbar.jpg "Statusbar")

_**Picture above:** Status bar message about the last action on the left side (`Options changed.`), the connection status `Disconnected` and a tooltip that indicates what is currently shown on the map. The map detail level is unchanged and the map coordinates at the cursor position are shown on the bottom right. Altitude at cursor is shown too since offline elevation data is installed. The online map download progress indicator shows `Done.` indicating all map tiles were downloaded. Zoom distance is 14.7 nautical miles._

Online Networks
---------------

The online network functionality allows to connect to
`VATSIM <https://www.vatsim.net>`__, `IVAO <https://ivao.aero>`__ or
other online networks which publish ``whazzup.txt`` files. This covers
display of information for centers, clients and servers on the map.

Network specific information like user names, active centers/towers,
frequencies, flight plans and much more are displayed world wide without
limits like distance to the user aircraft.

**Note that all related window tabs, menu items and toolbar buttons are
hidden if online networks are disabled which is the default.**

Access to online networks can be enabled and configured in the dialog
``Options`` on tab `Online Flying <OPTIONS.html#online-flying>`__.
Predefined options for the well known networks are available as well as
freely configurable ones.

|Overview of Online Network Functions|

**Picture above:**\ *An overview of all online network related windows,
tabs and buttons.*

.. _online-networks-duplicates:

Simulator and Online Aircraft Duplicates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*Little Navmap* fetches data from online networks using an interval of
three minutes depending on settings and network.

The program also fetches AI or multiplayer aircraft from the simulator
which are updated about two times a second. These aircraft are injected
into the simulator by the various online clients so they are visible
within the simulator.

Therefore, the user aircraft and other client aircraft can appear
duplicated on the map.

*Little Navmap* tries to remove these duplicates by matching the
aircraft registration (simulator) and the client callsign (online
network). Aircraft can appear duplicated if this information is not
available which is the case for X-Plane. Refer to the configuration of
your online network tool how to add this information.

.. _online-networks-mapdisplay:

Map Display
~~~~~~~~~~~

.. _online-networks-clients:

Clients
^^^^^^^

Online network clients or their aircraft are displayed on the map using
the |Online in Flight| symbol. This includes simulator aircraft that
were recognized as online network clients.

The user aircraft is always displayed using the yellow |Small GA| or a
similar symbol depending on aircraft type and simulator. Use the
``Show in Search`` map context menu item to see your own aircraft in the
list of online clients.

Information for online aircraft is shown on the tab ``Online Clients``
in the `Information Dock Window <INFO.html>`__.

All other functionality like context menu, double-click, tooltips, map
highlights and other are the same as for the other aircraft.

See `Aircraft and Ships <LEGEND.html#vehicles>`__ in the legend for all
symbols.

|Online Network Aircraft|

**Picture above:**\ *Online network clients/aircraft in search tab, map,
tooltip and information window.*

.. _online-networks-centers:

Centers
^^^^^^^

Online centers are displayed as circular airspaces in *Little Navmap*
and provide the same functionality as the other airspaces (tooltips,
information and more). They can be enabled separately from the other
airspaces by using the button |Show Online Network Airspaces| or menu
item `Show Online Network Airspaces <MENUS.html#show-online-airspaces>`__.

**Note that the circles do not represent the real airspaces and are only
used to indicate the presence of an active center, tower, ground or
other position.**

Detailed information for online centers/airspaces is shown on the tab
``Online Centers`` in the `Information Dock Window <INFO.html>`__.

The following types are available and can be enabled in the drop down
menus on the airspace toolbar or sub menu
`Airspaces <MENUS.html#airspaces>`__:

-  **Observer:** Circle size is taken from the ``Visual Range`` value of
   the center.
-  **Flight Information (Center):** Uses ``Visual Range``.
-  **Delivery (Clearance):** Uses ``Visual Range``.
-  **Ground:** Shows a circle with a diameter of 10 nm.
-  **Tower:** 20 nm circle.
-  **Approach:** 40 nm circle.
-  **ACC (Center):** Uses ``Visual Range``.
-  **Departure:** Uses ``Visual Range``.

The size of the circle shapes can be changed in the configuration file.
See `Online Network Center <CUSTOMIZE.html#customize-online-center>`__.

|Customize Online Network Centers|

**Picture above:**\ *Online network center/ATC in search tab, map,
tooltip and information window.*

.. _search-client:

Online Network Client Search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. _search-center:

Online Network Center Search
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The functionality of the search filters in these two tabs and the result
tables are similar to the airport and navaid search. See `Search Dock
Window <SEARCH.html>`__ for information about search filters, buttons and
context menu items.

.. _search-server:

Online Server Search
~~~~~~~~~~~~~~~~~~~~

Displays all online servers in a table and has no search functionality.
You can use the context menu to copy parts of the result table like the
IP address.

.. |Overview of Online Network Functions| image:: ../images/online_overview.jpg
.. |Online in Flight| image:: ../images/icon_aircraft_online.png
.. |Small GA| image:: ../images/icon_aircraft_small_user.png
.. |Online Network Aircraft| image:: ../images/online_aircraft.jpg
.. |Show Online Network Airspaces| image:: ../images/icon_airspaceonline.png
.. |Customize Online Network Centers| image:: ../images/online_center.jpg


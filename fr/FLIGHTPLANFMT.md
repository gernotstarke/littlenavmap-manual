## Formats de Plan de Vol {#flight-plan-formats}

_Little Navmap_ supporte plusieurs formats de plans de vol qui ont tous des limitations différentes. Seuls certains de ces formats peuvent être chargés et sauvegardés.

Le programme utilise différents `Sauver vers ....` dialogues de fichier au lieu d'un seul. Ceci permet de mémoriser le répertoire pour chaque format de fichier séparément.

Il n'est donc pas nécessaire de sauter entre le répertoire des plans de vol FSX, le répertoire des plans de vol P3D et le répertoire de sortie X-Plane FMS.

Notez la différence entre `Sauver plan de vol au format ...`et `Exporter plan de vol au format...` : l'exportation ne change pas le nom du fichier courant tandis que `Sauver au format...`.

### Tableau des Caractéristiques {#flight-plan-formats-feature}

| Format                        | Lecture | Ecriture | Airw. | VFR/<br/>IFR| User<br/>Wpt.<br/>Names| Dep.<br/>Parking| Croisière<br/>Alt. | Vitesse<br/>Sol  | Proc. |
| ----------------------------- | ---- | ----- | ----- | ----------- | ---------------------- | --------------- | --------------- | ----------------- | ----  |
| FSX PLN<br/>annoté         | X    | X     | X     | X           | X                      | X               | X               | X                 | X     |
| FSX PLN                       | X    | X     | X     | X           | X                      | X               | X               | 0                 | 0     |
| FS9 PLN<br/>propre             | X    | 0     | X     | X           | X                      | X               | X               | 0                 | 0     |
| FSC PLN                       | X    | 0     | X     | 0           | X                      | 0               | 0               | 0                 | 0     |
| X-Plane<br/>FMS 11            | X    | X     | X     | 0           | X                      | 0               | X               | 0                 | X     |
| X-Plane<br/>FMS 3             | X    | X     | 0     | 0           | X                      | 0               | X               | 0                 | 0     |
| FLP                           | X    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | X     |
| Reality XP<br/>GNS FPL        | 0    | X     | 0     | 0           | X                      | 0               | 0               | 0                 | 0     |
| Reality XP<br/>GTN GFP        | 0    | X     | X     | 0           | X[^2]                  | 0               | 0               | 0                 | X     |
| Flight1 GTN                   | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| PMDG RTE                      | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| TXT                           | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| Majestic Dash<br/>FPR [^1]    | 0    | X     | 0     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| IXEG 737 FPL                  | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| FLTPLAN<br/>pour iFly          | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| ProSim<br/>`companyroutes.xml`| 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| PLN pour<br/>BBS Airbus        | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| UFMC                          | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| FPL pour<br/>XFMC              | 0    | X     | X     | 0           | 0                      | 0               | 0               | 0                 | 0     |
| Flight Factor<br/>`corte.in`  | 0    | X     | X     | 0           | 0                      | 0               | X               | 0                 | X [^3] |
| GPX                           | 0    | X     | 0     | 0           | 0                      | 0               | 0               | 0                 | 0     |

Les waypoints de procédure sont exclus par défaut de tous les formats de fichiers, sauf GPX. Vous devez utiliser le GPS ou le FMS dans le simulateur pour sélectionner les procédures.

Une boîte de dialogue s'affiche si des caractéristiques non prises en charge sont détectées dans le plan de vol en cours lors de l'enregistrement d'un plan de vol. Vous pouvez désactiver cette boîte de dialogue pour des sauvegardes futures si vous savez ce que vous faites.

Votre nom et votre type de fichier actuel changeront si vous enregistrez un plan dans un format lisible et inscriptible. Cela ne se produit pas lors de l'exportation..

Un exemple montre comment le programme traite les formats limités :

1. Créez un plan de vol, y compris les procédures.
2. Sauver au format PLN - le nom de fichier actuel change au nouveau nom de fichier `NOM.pln`.
3. Sauver au format FMS - un avertissement est affiché et après avoir enregistré le nom de fichier actuel change en nouveau `NOM.fms`.
4. Redémarrer le programme - `NOM.fms` sera rechargé et les procédures seront perdues.
5. Maintenant exporter au format GFP - Le nom de fichier actuel reste `NOM.fms`.

### Noms des Waypoints Utilisateur {#flight-plan-formats-user-waypoints}

Les noms des waypoints utilisateur seront adaptés aux limitations de format lors de l'enregistrement. Cela signifie que les noms des waypoints peuvent changer lors du rechargement d'un plan de vol.

* **PLN:** La longueur maximale pour FSX ou Prepar3D est de 10 caractères et aucun caractère spécial n'est autorisé. Les caractères non pris en charge seront supprimés et la longueur sera tronquée.
* **FMS:** Aucun espace n'est permis. Ceux-ci seront remplacés par des soulignés \(`_`\).
* **FLP:** Tous les noms de waypoints utilisateur seront remplacés par des coordonnées.

### ![FSX PLN](../images/icons/filesave.png "FSX PLN") FSX PLN {#flight-plan-formats-fsx-pln}

Le format FSX PLN est utilisé comme format par défaut car il supporte la plupart des fonctionnalités et permet d'inclure des informations supplémentaires sous forme d'annotations qui seront ignorées par les simulateurs de vol et la plupart des autres outils.

**Notez que P3D v4.2 écrase le plan de vol lors du chargement, ce qui efface toutes les annotations. Sauvegardez une copie du plan à un autre endroit si vous souhaitez conserver toutes les informations sur les procédures ou la vitesse..**

### ![FS9 PLN](../images/icons/filesave.png "FS9 PLN") FS9 PLN {#flight-plan-formats-fs9-pln}

Format de fichier du Flight Simulator 2004. Utilise la même extension PLN que le format FSX PLN._Little Navmap_ ne peut lire que ce format. Par conséquent, une boîte de dialogue d'avertissement s'affiche avant l'écrasement d'un fichier au format FSX PLN le plus récent.

### ![Clean PLN](../images/icons/filesaveclean.png "Clean PLN") PLN sans annotations (clean) {#flight-plan-formats-clean-pln}

C'est la même chose que le FSX PLN mais sans annotations supplémentaires qui contiennent des informations sur les procédures sélectionnées ou la vitesse sol. Utilisez ce format si une demande ne peut pas traiter le format annoté.

### ![FMS 11](../images/icons/saveasfms.png "FMS 11") FMS 11 \(X-Plane\) {#flight-plan-formats-fms11}

Nouveau format X-Plane FMS qui peut être chargé dans le GPS de stock, le G1000 et le FMS de X-Plane 11.10. C'est le format d'enregistrement par défaut pour X-Plane FMS maintenant. Utilisez la fonction d'exportation pour enregistrer les anciens fichiers FMS version 3.

**Ce format est supporté à partir de X-Plane 11.10. Il peut déjà être utilisé dans les versions bêta mais pourrait crasher X-Plane version 11.05 et inférieur.**

_Little Navmap_ peut lire et écrire ce format.

Stockez ces fichiers dans le répertoire `Output/FMS plans` à l'intérieur du répertoire X-Plane.

### ![FMS 3](../images/icons/saveasfms.png "FMS 3") FMS 3 \(X-Plane\) {#flight-plan-formats-fms3}

X-Plane FMS format qui peut être chargé dans le stock GPS et FMS de X-Plane 10 et 11.05. Le format est très limité et ne stocke essentiellement qu'une liste des waypoints.

_Little Navmap_ peut lire et écrire ce format.

Stockez ces fichiers dans le répertoire `Output/FMS plans` à l'intérieur du répertoire X-Plane.

### FLP {#flight-plan-formats-flp}

Un format qui peut être lu par le FMS X-Plane \(pas le GPS X-Plane\), Aerosoft Airbus et d'autres aéronefs supplémentaires. Supporte les voies aériennes et les procédures.

Vous pouvez charger ces fichiers dans le FMS X-Plane, y compris les informations sur les voies aériennes. Les procédures sont sauvegardées dans le FLP mais ne peuvent pas encore être chargées par le FMS. Vous devez les sélectionner manuellement après avoir chargé le plan de vol.

Stockez ces fichiers dans le répertoire `Output/FMS plans` à l'intérieur du répertoire X-Plane si vous voulez les utiliser dans X-Plane.


### FPL \(Reality XP Garmin GNS\) {#flight-plan-formats-rxpgns}

Format du plan de vol sous forme de fichier FPL utilisable par l'utilisateur. _Reality XP GNS 530W/430W V2_.

Ce format de fichier peut seulement être exporté. La lecture n'est pas prise en charge.

Voir [ci-dessous](#garmin-notes) pour plus d'informations sur les problèmes connus lors de l'exportation des données de plan de vol pour le GNS.

_Little Navmap_ considère la variable d'environnement `GNSAPPDATA` si elle est définie. Voir le manuel GNS pour plus d'informations.

Le répertoire par défaut pour sauvegarder les plans de vol des unités GNS est le suivant `C:\ProgramData\Garmin\GNS Trainer Data\GNS\FPL`
pour tous les simulateurs. Le répertoire sera créé automatiquement par _Little Navmap_ lors de la première exportation s'il n'existe pas

### GFP \(Reality XP Garmin GTN\) {#flight-plan-formats-rxpgtn}

Sauvegarder le plan de vol comme fichier GFP utilisable par le _Reality XP GTN 750/650 Touch_.

Ce format de fichier peut uniquement être exporté. La lecture n'est pas prise en charge.

Voir [en dessous](#garmin-notes) pour obtenir des informations sur les problèmes connus lors de l'exportation des données de plan de vol pour le GTN.

_Little Navmap_ considère la variable d'environnement `GTNSIMDATA` si elle est définie. Pour plus d'informations, reportez-vous au manuel GTN.

#### Garmin GTN Trainer 6.41

Le répertoire par défaut pour sauvegarder les plans de vol des unités GTN est le suivant `C:\ProgramData\Garmin\Trainers\GTN\FPLN` pour tous les simulateurs. Le répertoire sera créé automatiquement par _Little Navmap_ lors de la première exportation s'il n'existe pas.

#### Garmin GTN Trainer 6.21

Si vous utilisez la version 6.21 Trainer, le chemin par défaut est `C:\ProgramData\Garmin\GTN Trainer Data\GTN\FPLN`. Vous devez créer ce répertoire manuellement, puis y accéder dans la boîte de dialogue de fichier lors de l'enregistrement. _Little Navmap_ se souviendra du répertoire sélectionné.

### GFP \(Flight1 Garmin GTN\) {#flight-plan-formats-gfp}

Il s'agit du format de plan de vol utilisé par le _Flight1 GTN 650/750_.

Ce format de fichier peut uniquement être exporté. La lecture n'est pas prise en charge.

Voir [en dessous](#garmin-notes) pour obtenir des informations sur les problèmes rencontrés lors de l'exportation des données de plan de vol pour le GTN.

Les répertoires par défaut pour sauvegarder les plans de vol des unités GTN sont :

* **Prepar3D v3:** `C:\Program Files (x86)\Lockheed Martin\Prepar3D v3\F1TGTN\FPL`.
* **Prepar3D v4:** `C:\Program Files\Lockheed Martin\Prepar3D v4\F1TGTN\FPL`.
* **Flight Simulator X:** `C:\ProgramFiles(x86)\Microsoft Games\Flight Simulator X\F1GTN\FPL`

Vous devrez peut-être modifier les privilèges d'utilisateur de ce répertoire si vos plans de vol enregistrés n'apparaissent pas dans le GTN. Donnez-vous le plein contrôle et/ou la pleine propriété de ce répertoire pour éviter cela.

Un symptôme typique est que vous pouvez enregistrer le plan de vol dans _Little Navmap_ et vous pouvez également voir le plan enregistré dans les boîtes de dialogue ouvertes de _Little Navmap_ mais il n'apparaît pas dans l'unité GTN. Modifiez les privilèges du répertoire d'exportation comme mentionné ci-dessus si c'est le cas.

Le fichier est un format texte simple contenant une seule ligne de texte. Exemple pour le contenu d'un fichier de plan de vol nommé `KEAT-CYPU.gfp`:

`FPN/RI:F:KEAT:F:EAT.V120.SEA.V495.CONDI.V338.YVR.V330.TRENA:F:N50805W124202:F:N51085W124178:F:CAG3:F:N51846W124150:F:CYPU`

### RTE \(PMDG\) {#flight-plan-formats-rte}

Un fichier PMDG RTE. L'emplacement du fichier dépend de l'aéronef utilisé mais est généralement `PMDG\FLIGHTPLANS` dans le répertoire de base du simulateur.

### TXT \(JARDesign et Rotate Simulations\) {#flight-plan-formats-txt}

Un format de fichier simple utilisable par les aéronefs JARDesign ou Rotate Simulations. L'emplacement dépend de l'aéronef utilisé qui se trouve habituellement dans le répertoire X-Plane `aircraft`.

Le fichier est un format texte simple contenant une seule ligne de texte. Exemple pour le contenu d'un fichier `TXT` nommé `CBZ9CYDC.txt` :

`CBZ9 SID AIRIE V324 YKA B8 DURAK STAR CYDC`

### FPR \(Majestic Dash\) {#flight-plan-formats-fpr}

Format de plan de vol pour le Majestic Software MJC8 Q400. Notez que l'exportation est actuellement limitée à une liste de waypoints.

Le plan de vol doit être sauvegardé dans le format `YOURSIMULATOR\SimObjects\Airplanes\mjc8q400\nav\routes`.

Notez que le FMC dans le tableau de bord affichera des coordonnées invalides lorsque vous appuyez sur `INFO` sur un waypoint ou un aérodrome. Sinon, le plan de vol, la navigation et le pilote automatique ne sont pas affectés.

### FPL \(IXEG Boeing\) {#flight-plan-formats-fpl}

Exporte le plan de vol actuel sous forme de fichier FPL utilisable par le IXEG Boeing 737. Le format est le même que TXT mais avec une extension de fichier différente.

Le fichier doit être enregistré au format `XPLANE\Aircraft\X-Aviation\IXEG 737 Classic\coroutes`. Vous devez créer le répertoire manuellement s'il n'existe pas.

### corte.in \(Flight Factor Airbus\) {#flight-plan-formats-cortein}

Un format pour l'Airbus Flight Factor Airbus. Le fichier n'est pas tronqué et les plans de vol sont ajoutés lors de l'enregistrement.

Les plans de vol sont sauvegardés dans une notation de route ATS légèrement étendue, ce qui permet également de sauvegarder l'altitude de croisière et les procédures d'approche. Editez le fichier à l'aide d'un simple éditeur de texte si vous souhaitez supprimer des plans de vol.

Bien que ce format permette d'enregistrer les SID et les STAR, l'option pour les approches a été supprimée car elle n'est pas fiable.

**Exemple:**

```
RTE ETOPS002 EINN 06 UNBE2A UNBEG DCT 5420N DCT NICSO N236A ALLEX Q822 ENE DCT CORVT KJFK I22R JFKBOS01 CI30 FL360
RTE EDDFEGLL EDDF 25C BIBT4G BIBTI UZ29 NIK UL610 LAM EGLL I27R LAM CI25 FL330
```

### FLTPLAN \(iFly 737NG\) {#flight-plan-formats-ifly}

Format de plan de vol pour l'iFly 737NG pour FSX ou P3D. Le fichier doit être enregistré dans `YOURSIMULATOR/iFly/737NG/navdata/FLTPLAN`.

Les procédures ne peuvent pas être sauvegardées.

### companyroutes.xml \(ProSim\) {#flight-plan-formats-prosim}

Un format de plan de vol pour [ProSim](https://prosim-ar.com). Le plan de vol est ajouté au fichier `companyroutes.xml` lors de  l'enregistrement. Suppression manuelle des plans de vol dans un éditeur de texte.

_Little Navmap_ crée jusqu'à deux fichiers de sauvegarde lors de l'enregistrement du plan de vol: `companyroutes.xml_lnm_backup` et `companyroutes.xml_lnm_backup.1`.

Les procédures ne peuvent pas être sauvegardées.

**Exemple:**

```
<?xml version="1.0" encoding="UTF-8"?>
<companyroutes>
  <route name="EFMAESGT">EFMA RUNGA N872 TEB N623 BEDLA N866 NEGIL ESGT</route>
  <route name="LGIRLEDA">LGIR SUD UJ65 TRL UM601 RUTOM M601 QUENN Q123 LULIX P167 GINOX UM601 BCN UN975 SELVA LEDA</route>
</companyroutes>
```

### PLN \(BBS Airbus\) {#flight-plan-formats-bbs}

Ce format est pour les Blackbox Simulations Airbus pour FSX ou P3D. Sauvegarder ceci dans `YOURSIMULATOR/Blackbox Simulation/Company Routes` ou `YOURSIMULATOR/BlackBox Simulation/Airbus A330` selon le type d'aéronef.

Ce format ne peut pas sauvegarder les procédures.

### UFMC \(Universal Flight Management Computer\) {#flight-plan-formats-ufmc}

Un format de plan de vol pour le [UFMC](http://ufmc.eadt.eu). Le format ne permet pas de sauvegarder les procédures.

Sauvegardez le plan de vol sous `XPLANE\Custom Data\UFMC\FlightPlans`.

### FPL pour X-FMC \(Universal FMC pour X-Plane\) {#flight-plan-formats-xfmc}

Enregistrer le plan de vol sous forme de fichier FPL pour le [X-FMC](https://www.x-fmc.com). Le format ne permet pas de sauvegarder les procédures.

Le fichier doit être enregistré dans le chemin d'accès à `XPLANE\Resources\plugins\XFMC\FlightPlans`.

### GPX {#flight-plan-formats-gpx}

GPX n'est pas un format de plan de vol.

Le format GPS Exchange peut être lu par Google Earth et la plupart des autres applications SIG.

Le plan de vol est intégré en tant que route et la traînée de l'aéronef volé en tant que trajectoire, y compris le temps et l'altitude du simulateur.

L'altitude de départ et de destination et l'altitude de croisière sont réglées pour tous les waypoints. Les waypoints de toutes les procédures sont inclus dans le fichier exporté. Notez que les waypoints ne permettront pas de reproduire toutes les parties d'une procédure comme les mises en attente ou les virages.

## Notes sur les formats Garmin GFP et FPL {#garmin-notes}

Divers problèmes peuvent apparaître lors de la lecture des plans de vol exportés dans les unités Garmin.
La plupart d'entre eux sont le résultat de la base de données de navigation Garmin qui utilise les données d'un cycle AIRAC plus ancien \(principalement 1611 au moment d'écrire\).
Un simulateur mis à jour ou des bases de données complémentaires \(comme celui de _Little Navmap_\) peuvent utiliser les dernières données de navigation ou les anciennes données de FSX ou de P3D. X-Plane 11.10 stock navdata est actuellement basé sur 1611.

Tout waypoints, voie aérienne ou procédure qui est retiré, ajouté ou renommé au fil du temps peut entraîner le blocage de waypoints ou d'autres messages lors de la lecture d'un plan de vol dans le GNS ou le GTN.

Il est facile d'enlever les waypoints verrouillés dans le GNS ou le GTN pour permettre l'activation du plan de vol. Reportez-vous à la documentation de l'unité Garmin.

_Little Navmap_ permet de modifier l'exportation Garmin pour remplacer tous les waypoints par des waypoints définis par l'utilisateur afin d'éviter le verrouillage. Bien qu'il s'agisse d'une approche suffisante pour éviter les waypoints verrouillés, elle comporte quelques limitations :

* Les aérodromes de départ et de destination ne sont pas sauvegardés en tant que waypoints définis par l'utilisateur. Ceux-ci doivent exister dans la base de données de navigation Garmin.
* Il n'est pas possible d'afficher des informations sur la navigation comme les fréquences, car le waypoint ne peut pas être relié à la navigation radio.
* Les procédures telles que SID et STAR ne peuvent pas être sauvegardées avec le plan de vol et doivent être sélectionnées manuellement.
* Le GTN \(pas le GNS\) change tous les noms en un schéma générique `USERWPT...`.

L'exportation des waypoints définis par l'utilisateur peut être activée dans la boîte de dialogue des options de l'onglet `Plan de Vol`.

[^1]: Le format FPR permet d'économiser les voies aériennes et les procédures, mais cela sera mis en œuvre dans une version ultérieure de  _Little Navmap_.
[^2]: Les waypoints définis par l'utilisateur seront renommés lors du chargement dans le GTN.
[^3]: Seulement SID et STAR. La sauvegarde ou les approches ne sont pas prises en charge.

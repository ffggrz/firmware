**__veraltet, ab 2023 mit den Firmware-Versionen 1.4.0 bzw. 20230605-exp nutzen wir keine eigene angepaßte Gluon-Version, sondern das unveränderte offizielle Gluon.__**

# Firmware für Router in der Freifunk-Community Gera-Greiz

## Firmware erstellen

Um aus diesem Repository die Firmware für die Router der Community Gera-Greiz zu erstellen, wird wie folgt vorgegangen:

- Repository clonen (inkl. Submodule):
  ```
  git clone --recurse-submodules https://github.com/ffggrz/firmware.git
  ```
- gewünschte Version auschecken:
  ```
  cd firmware
  git checkout <Version-Tag>
  ```
- Community-spezifische Änderungen anwenden:
  ```
  cd gluon
  git apply ../gluon-ffggrz.diff
  export GLUON_SITEDIR="../site/"
  ```
- Firmware für alle unterstützten Routermodelle erstellen
  ```
  make update
  ../buildalltargets.sh
  ```

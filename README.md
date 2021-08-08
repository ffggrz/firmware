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
  cp -r ../site site
  patch -p1 < ../gluon-ffggrz.diff
  ```
- Firmware für alle unterstützten Routermodelle erstellen
  ```
  make update
  ../buildalltargets
  ```

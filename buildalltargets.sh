#!/bin/sh
#
OPTIONS=""
REPORT_FILE="/tmp/buildalltargets.log"
start=$(date +%s)
CORES=$(expr $(nproc) + 1)
for TARGET in $(make list-targets); do
  echo "################# $(date) start building target $TARGET ###########################"
  make -j$CORES $OPTIONS GLUON_TARGET=$TARGET || { echo "--- Erstellung des Targets $TARGET fehlgeschlagen!" >> ${REPORT_FILE} ; continue; }
  echo "+++ Erstellung des Targets $TARGET erfolgreich!" >> ${REPORT_FILE}
done && echo "Alle Targets wurden im ordner output/ erstellt."
echo -n "beendet: "; date
echo "Dauer: $((($(date +%s)-start)/60)) Minuten"
echo
echo "Ergebnis:"
echo "---------"
cat ${REPORT_FILE}
rm ${REPORT_FILE}

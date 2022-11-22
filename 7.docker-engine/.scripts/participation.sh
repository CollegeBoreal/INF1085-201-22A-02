#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only
   
echo "# Participation au `date +"%d-%m-%Y %H:%M"`"
echo ""


echo "| Table des matières            | Description                                             |"
echo "|-------------------------------|---------------------------------------------------------|"
echo "| :a: [Présence](#a-présence)   | L'étudiant.e a fait son travail    :heavy_check_mark:   |"
echo "| :b: [Précision](#b-précision) | L'étudiant.e a réussi son travail  :tada:               |"

echo ""
echo "## Légende"
echo ""

echo "| Signe              | Signification                 |"
echo "|--------------------|-------------------------------|"
echo "| :heavy_check_mark: | Prêt à être corrigé           |"
echo "| :x:                | Projet inexistant             |"


echo ""
echo "## :a: Présence"
echo ""
echo "|:hash:| Boréal :id:                | Interne            | Docker Machine |"
echo "|------|----------------------------|--------------------|----------------|"

i=0

for id in "${ETUDIANTS[@]}"
do
   rm -rf ~/.docker/machine/machines/machine-${IPS[${i}]}
   docker-machine create --driver generic \
                        --generic-ip-address=${IPS[${i}]} \
                        --generic-ssh-user=${IDS[${i}]} \
                        --generic-ssh-key ~/.ssh/b300098957\@ramena.pk \
                        machine-${IPS[${i}]} > /dev/null 2>&1
   DOCKER_STATUS=`docker-machine status machine-${IPS[${i}]} 2> /dev/null`
   OK="| ${i} | ${id} - <image src='https://avatars.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image> | \`ssh ${SERVERS[$i]}\` | :heavy_check_mark: | "
   KO="| ${i} | ${id} - <image src='https://avatars.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image> | \`ssh ${SERVERS[$i]}\` | :x: | "
   if [[ $DOCKER_STATUS == "Running" ]]; then
       echo ${OK}
   else
       echo ${KO}
   fi
   let "i++"
done

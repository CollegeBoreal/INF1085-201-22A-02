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
echo "|:hash:| Boréal :id:                | README.md   | :wheel_of_dharma: DNS |"
echo "|------|----------------------------|-------------|------------------------|"

i=0

for id in "${ETUDIANTS[@]}"
do
   U_AVATAR="<image src='https://avatars0.githubusercontent.com/u/${AVATARS[$i]}?s=460&v=4' width=20 height=20></image>"
   F_SCHEMA=${id}/README.md
   if [ -f "$F_SCHEMA" ]; then
       OK_SCHEMA="[:heavy_check_mark:](../${F_SCHEMA})"
   else
       OK_SCHEMA=":x:"
   fi
   F_DATA=`ssh -i ~/.ssh/b300098957@ramena.pk \
        -o StrictHostKeyChecking=no \
        -o PasswordAuthentication=no \
        -o ConnectTimeout=5 ${DNS[${i}]} lsb_release -a 2>/dev/null`
   if [[ $F_DATA == *"Ubuntu"* ]]; then
         OK_DATA=":tada: - ssh ${DNS[${i}]}"
   else
       OK_DATA=":x: - ssh ${DNS[${i}]}"
   fi
   OK="| ${i} | [${id}](../${id}) - ${U_AVATAR} | ${OK_SCHEMA} | ${OK_DATA} |"
   echo ${OK}
   let "i++"
done

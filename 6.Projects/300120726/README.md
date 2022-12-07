## Comment installer mediawiki dans un serveur Ubuntu-22

MediaWiki est un logiciel permettant de réaliser des sites Internet de type wiki. Il s'agit d'un système de gestion de contenu de site Web qui rend les pages Web librement et également modifiables par tous les visiteurs autorisés. Le site Wikibooks, sur lequel vous lisez actuellement cette page, ou encore Wikipédia sont des wikis. C'est un site de ce genre que nous allons apprendre à installer et à configurer.

Ce logiciel est sous licence GPL, c'est-à-dire que vous pouvez l'utiliser gratuitement, que vous avez accès au code et que vous pouvez le modifier.

## les étapes à suivre pour l'installation


1. Mettre à jour Ubuntu 22.04
2. Installez Apache
3. Installez PHP et les extentions requises
4. Installez MariaDB et Créer une nouvelles base de donées
5. Créer une base de donné pour Mediawiki
6. Télechargez le fichier mediawiki
7. installez MediaWiki sur Ubuntu

## 1.  Mettre à jour Ubuntu 22.04

La mise à jour permet de vous assurer que vos packages systèmes et le cache 
``
sudo apt update && sudo apt upgrade
``



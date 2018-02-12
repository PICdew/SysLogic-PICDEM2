/*****************************************************************************/
/*Fichier d'entête picdem2p.h                                                */
/*Auteur: Sami Metoui                                                        */
/*Contient les prototypes de fonction de la bibliothèque picdem2p.lib        */
/*de gestion du contrôleur Lcd HD44780Ude la carte PicDem2 Plus de Microchip */
/*****************************************************************************/

#ifndef PICDEM2P_H_INCLUDED
#define PICDEM2P_H_INCLUDED

#include "types.h"
/************************************************************************/
/*Fonction qui écrit un octet de contrôle dans l'afficheur LCD          */
/*Entrée: Commande 8 octets non signés                                  */
/************************************************************************/
void LcdWrCmd(U8);

/*************************************************************************/
/*Fonction qui écrit une data 8 bite (2 cycles de 4 bits sur l'écran LCD */
/*Entrée: Data 8 octets non signés                                       */
/*************************************************************************/
void LcdWrDat(U8);

/************************************************************************/
/*Fonction qui scrute l'état du busy flag de l'afficheur LCD            */
/*Sortie: 1 lorsque l'afficheur LCD busy flag est à 1                   */
/************************************************************************/
U8 BusyXLCDx(void);

/************************************************************************/
/*Fonction qui initialise l'afficheur LCD                               */
/************************************************************************/
void OpenXLCDx(void);

/************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini en     */
/*10x microsecondes                                                     */
/*Entrée: durée en 10x microsecondes                                    */
/************************************************************************/
void Delay10Us(U16);

/*********************************************************************************/
/*Fonction qui interromp le programme durant un délais prédéfini en milisecondes */
/*Entrée: durée en milli de secondes                                             */
/*********************************************************************************/
void DelayMs(U16);

#endif
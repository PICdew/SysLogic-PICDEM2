/*****************************************************************************/
/*Fichier d'ent�te picdem2p.h                                                */
/*Auteur: Sami Metoui                                                        */
/*Contient les prototypes de fonction de la biblioth�que picdem2p.lib        */
/*de gestion du contr�leur Lcd HD44780Ude la carte PicDem2 Plus de Microchip */
/*****************************************************************************/

#ifndef PICDEM2P_H_INCLUDED
#define PICDEM2P_H_INCLUDED

#include "types.h"
/************************************************************************/
/*Fonction qui �crit un octet de contr�le dans l'afficheur LCD          */
/*Entr�e: Commande 8 octets non sign�s                                  */
/************************************************************************/
void LcdWrCmd(U8);

/*************************************************************************/
/*Fonction qui �crit une data 8 bite (2 cycles de 4 bits sur l'�cran LCD */
/*Entr�e: Data 8 octets non sign�s                                       */
/*************************************************************************/
void LcdWrDat(U8);

/************************************************************************/
/*Fonction qui scrute l'�tat du busy flag de l'afficheur LCD            */
/*Sortie: 1 lorsque l'afficheur LCD busy flag est � 1                   */
/************************************************************************/
U8 BusyXLCDx(void);

/************************************************************************/
/*Fonction qui initialise l'afficheur LCD                               */
/************************************************************************/
void OpenXLCDx(void);

/************************************************************************/
/*Fonction qui interromp le programme durant un d�lais pr�d�fini en     */
/*10x microsecondes                                                     */
/*Entr�e: dur�e en 10x microsecondes                                    */
/************************************************************************/
void Delay10Us(U16);

/*********************************************************************************/
/*Fonction qui interromp le programme durant un d�lais pr�d�fini en milisecondes */
/*Entr�e: dur�e en milli de secondes                                             */
/*********************************************************************************/
void DelayMs(U16);

#endif
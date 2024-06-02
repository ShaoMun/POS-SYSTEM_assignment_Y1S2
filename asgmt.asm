.MODEL SMALL
.STACK 64
.DATA
;==================================================================
;MAINPAGE DESIGN
;==================================================================
MPG  DB 13, 10,"*******************************************************************************" 
     DB 13, 10,"*                                                                             *" 
     DB 13, 10,"*                     _____ _         _         _____                         *" 
     DB 13, 10,"*                    / ____| |       | |       / ____|                        *" 
     DB 13, 10,"*                   | (___ | |_ _   _| | ___  | |     ___                     *" 
     DB 13, 10,"*                    \___ \| __| | | | |/ _ \ | |    / _ \                    *" 
     DB 13, 10,"*                    ____) | |_| |_| | |  __/ | |___| (_) |                   *" 
	 DB 13, 10,"*                   |_____/ \__|\__, |_|\___|  \_____\___(_)                  *" 
	 DB 13, 10,"*                                __/ |                                        *" 
	 DB 13, 10,"*                               |___/                                         *" 
	 DB 13, 10,"*******************************************************************************$"
;=================================================================
;STAFF LOGIN 
;=================================================================
OUSERNAME DB 13,10,"                       Username (ex: ADMIN01): $"
IUSERNAME DB 7 DUP(0)
USERNAME1 DB "ADMIN01$"
OPASSWORD DB "                       Password (ex: 12345)  : $"
IPASSWORD DB 5 DUP(0)
PASSWORD1 DB "12345$"
VMSG DB 13,10,13,10,"LOGIN SUCCESSFUL."
     DB 13,10,"PRESS ENTER TO CONTINUE...$"
IVMSG DB 13,10,13,10,"wRONG USERNAME/PASSWORD. PLEASE TRY AGAIN."
      DB 13,10,"PRESS ENTER TO CONTINUE...$"       
;==================================================================
;MENU
;==================================================================
MENU1 DB 13,10, 80 DUP ('*')
	  DB 13,10, 35 DUP (' '), "MENU"
	  DB 13,10, 80 DUP ('*')
	  DB 13,10,"[1]Checkout Items"
      DB 13,10,"[2]Membership Registration"
      DB 13,10,"[3]Generate Report"
      DB 13,10,"[4]Exit"
	  DB 13,10, 80 DUP ('*')
	  DB 13,10,"ENTER OPTION(EX 1): $"
MENUS DB ?					;MENU SELECTION
;==================================================================
;CHECKOUT ITEMS
;==================================================================	  
ICAT DB	13,10, 80 DUP ('*')					;ITEM CATEGORY
	 DB 13,10, 35 DUP (' '), "CATEGORY"
	 DB 13,10, 80 DUP ('*')
	 DB 13,10,"1.MEN"							
	 DB	13,10,"2.WOMEN"
	 DB	13,10,"3.KIDS"
	 DB 13,10,"[4]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT BY CATEGORY(EX 1): $" 
MCAT DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "PRODUCT"
	 DB 13,10, 80 DUP ('*')
	 DB 13,10,"1.T-SHIRTS"
	 DB	13,10,"2.TROUSERS"
	 DB	13,10,"3.SHORTS"
	 DB 13,10,"[4]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT BY PRODUCT(EX 1): $"
WCAT DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "PRODUCT"
	 DB 13,10, 80 DUP ('*')
	 DB 13,10,"1.DRESSES"
	 DB	13,10,"2.BLOUSES"
	 DB	13,10,"3.SKIRTS"
	 DB 13,10,"[4]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT BY PRODUCT(EX 1): $"
KCAT DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "PRODUCT" 
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.CLOTHING"
	 DB	13,10,"2.ACCESSORIES"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT BY PRODUCT(EX 1): $"
MI1  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "T-SHIRT"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.LOOSE FIT T-SHIRT"
 	 DB	13,10,"2.REGULAR FIT T-SHIRT"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
 	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
MI2  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "TROUSERS"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.SLIM FIT JOGGERS"
	 DB	13,10,"2.LOOSE FIT CARGO TROUSERS"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
 	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
MI3  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "SHORTS"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.REGULAR FIT CHINO SHORTS"
	 DB	13,10,"2.RELAXED FIT SHORTS"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
WI1  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "DRESSES"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.LINEN SHIRT DRESS"
	 DB	13,10,"2.COTTON DRESS"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
WI2  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "BLOUSES"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.V-NECK BLOUSE"
	 DB	13,10,"2.CAP-SLEEVED BLOUSE"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
 	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
WI3  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "SKIRTS"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.PLEATED SKIRT"
	 DB	13,10,"2.COATED SKIRT"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
KI1  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "CLOTHING"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.PRINTED T-SHIRT"
	 DB	13,10,"2.JERSEY PYJAMAS"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
KI2  DB 13,10, 80 DUP ('*')
	 DB 13,10, 35 DUP (' '), "ACCESORIES"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"1.IRIDESCENT BACKPACK"
	 DB	13,10,"2.PRINTED CAP"
	 DB 13,10,"[3]BACK"
	 DB 13,10, 80 DUP ('*')
	 DB	13,10,"SELECT ITEMS PURCHASED(EX 1): $"
BUYC DB 13,10, 80 DUP ('*')
	 DB 13,10,"PROCEED TO CHECKOUT?"
	 DB 13,10,"[1]YES"
	 DB 13,10,"[2]NO"
	 DB 13,10, 80 DUP ('*')
	 DB 13,10,"ENTER OPTION(EX 1): $"
ICATS DB ?									;CATEGORY SELECTION
CATS DB ?									;CATEGORY SELECTION
ITS DB ?									;ITEM SELECTION
BUYCS DB ?									;BUY CONFIRMATION SELECTION
;MEMBERSHIP VALIDATION
MEMCON DB 13,10,"IS CUSTOMER IS A REGISTERED STYLE CO. MEMBER? (Y/N) : $"
MEMCONS DB ?
CRTNUM1 DB 13,10,"WELCOME $"
CRTNUM2 DB 13,10,"NOW YOU CAN ENJOY 10% DISCOUNT OF YOUR TOTAL BILL!$"
WRGNUM DB 13,10,"THE PHONE NUMBER IS NONE OF THE STYLE CO. MEMBERS."
	   DB 13,10,13,10,"DO YOU WANT TO TRY AGAIN?"
	   DB 13,10,"[1]YES"
	   DB 13,10,"[2]CONTINUE AS GUEST"
	   DB 13,10,"ENTER OPTION(EX 1): $"
WRGNUMS DB ?
;==================================================================
;CALCULATION
;==================================================================	  
QUANT DW ?									;QUANTITY
IQUANT1 DW ?								;QUANTITY FIRST DIGIT
IQUANT2 DW ?								;QUANTITY SECOND DIGIT
TTL DW ?									;ITEM TOTAL
STTL1 DW ?									;(ITEM TOTAL1+ITEM TOTAL2+...)
STTL2 DW ?
DISCOUNT1 DW ?								;SUBTOTAL*10%
DISCOUNT2 DW ?
DISPRICE1 DW ?								;SUBTOTAL-DISCOUNT
DISPRICE2 DW ?
TAX1 DW ?									;DISCOUNTED PRICE*6%
TAX2 DW ?
FPRICE1 DW ?								;DISCOUNTED PRICE + TAX
FPRICE2 DW ?
ROUNDING1 DW ?
AMTDUE1 DW ?								;FINAL PRICE +/- ROUNDING
AMTDUE2 DW ?
IQUANT DB 13,10,"ENTER QUANTITY(MAX 25): $"
OTTL DB 13,10,"TOTAL: RM$"
OSTTL DB 13,10,"SUBTOTAL: RM$"
Q DW ?										;QUOTIENT
R DW ?										;REMAINDER
SIX DW 6
TEN DW 10
HUNDRED DW 100
THOUSAND DW 1000
TTHOUSAND DW 10000
;OUTPUT NUMBER
N1 DW ?
N2 DW ?
N3 DW ?
N4 DW ?
N5 DW ?
N6 DW ?
N7 DW ?
N8 DW ?
N9 DW ?
;==================================================================
;MEMBERSHIP REGISTRATION
;==================================================================	
;OUTPUT MESSAGE
OCPNUM DB 13,10,"ENTER CUSTOMER'S PHONE NUMBER (11 DIGIT) : $"
OCNAME DB 13,10,"ENTER CUSTOMERS' NAME (MAX 15 DIGITS)    : $"
MEMLIMIT DB 13,10,"MEMBERSHIP LIMIT REACHED, PRESS ENTER BACK TO MAIN MENU...$"
MEMDETAILS1 DB 13,10,"BEFORE PAYMENT, PLEASE KINDLY CHECK YOUR INFORMATION BELOW: "
			DB 13,10,"PHONE NUMBER: $"
MEMDETAILS2 DB 13,10,"NAME        : $"
DETAILSCON DB 13,10,"DO THE DETAILS SHOWN ARE CORRECT? (Y/N) : $"
DETAILSCONS DB ?
BUYMEM DB 13,10,"CONFIRM PROCEED TO CHECKOUT FOR MEMBER REGISTRATION? (Y/N) : $"
BUYMEMS DB ?
NUMONLYMSG DB 13,10,"ERROR!! ENTER ONLY DIGIT."
		   DB 13,10,"PRESS ENTER TO TRY AGAIN...$"
COUNTER DB 1
;INPUT PHONE NUMBER
PHONENUM1 DB 11 DUP (0)
PHONENUM2 DB 11 DUP (0)
PHONENUM3 DB 11 DUP (0)
;INPUT NAME
NAME1 DB 15 DUP (' ')
NAME2 DB 15 DUP (' ')
NAME3 DB 15 DUP (' ')
;USED TO VALIDATE PHONE NUMBER
PHONENUMCHCK DB 11 DUP (0)
;==================================================================
;REPORT GENERATING
;==================================================================	
;REPORT LAYOUT
LAYOUT1 DB 13,10, 80 DUP ('*'), '$'
LAYOUT2 DB 13,10, 80 DUP ('='), '$'
LAYOUT3 DB 13,10, 80 DUP ('-'), '$'
REPORTMSG DB 30 DUP (' '), 'REPORT SUMMARY $'
;OUTPUT MESSAGE
ITEMSOLDMSG DB 'ITEMS SOLD:$'
;MEN
 LFTSHIRTMSG 	DB 13,10, 'LOOSE FIT T-SHIRT		: $'
 RFTSHIRTMSG 	DB 13,10, 'REGULAR FIT T-SHIRT		: $'
 SFJOGGERMSG 	DB 13,10, 'SLIM FIT JOGGERS		: $'
 LFCTMSG 	DB 13,10, 'LOOSE FIT CARGO TROUSERS	: $'
 RFCSHORTMSG 	DB 13,10, 'REGULAR FIT CHINO SHORTS	: $'
 RFSHORTMSG	DB 13,10, 'RELAXED FIT SHORTS		: $'
;WOMEN
 LSDRESSMSG 	DB 13,10, 'LINEN SHIRT DRESS		: $'
 CDRESSMSG 	DB 13,10, 'COTTON DRESS			: $'
 VNBLOUSEMSG 	DB 13,10, 'V-NECK BLOUSE			: $'
 CSBLOUSEMSG	DB 13,10, 'CAP-SLEEVED BLOUSE		: $'
 PSKIRTMSG	DB 13,10, 'PLEATED SKIRT 			: $'
 CSKIRTMSG	DB 13,10, 'COATED SKIRT			: $'
;KID
 PTSHIRTMSG	DB 13,10, 'PRINTED T-SHIRT			: $'
 JPYJAMASMSG	DB 13,10, 'JERSEY PYJAMAS			: $'
 IBACKPACKMSG	DB 13,10, 'IRIDESCENT BACKPACK		: $'
 PCAPMSG	DB 13,10, 'PRINTED CAP			: $'
;TOTAL
 TOTALITEMSOLDMSG DB 'TOTAL ITEMS SOLD		: $'
 TOTALAMTMSG DB 13,10, 'TOTAL AMOUNT (RM)		: $'
BTMENU DB 13,10,"PRESS ENTER BACK TO MENU... $"
;ITEM SOLD
;MEN
TEMPMI1Q DW 0	;LOOSE FIT T-SHIRT
TEMPMI2Q DW 0	;REGULAR FIT T-SHIRT
TEMPMI3Q DW 0	;SLIM FIT JOGGERS
TEMPMI4Q DW 0	;LOOSE FIT CARGO TROUSERS
TEMPMI5Q DW 0	;REGULAR FIT CHINO SHORTS
TEMPMI6Q DW 0	;RELAXED FIT SHORTS
;WOMEN
TEMPWI1Q DW 0	;LINEN SHIRT DRESS
TEMPWI2Q DW 0	;COTTON DRESS
TEMPWI3Q DW 0	;V-NECK BLOUSE
TEMPWI4Q DW 0	;CAP-SLEEVED BLOUSE
TEMPWI5Q DW 0	;PLEATED SKIRT
TEMPWI6Q DW 0	;COATED SKIRT
;KIDS
TEMPKI1Q DW 0	;PRINTED T-SHIRT
TEMPKI2Q DW 0	;JERSEY PYJAMAS
TEMPKI3Q DW 0	;IRIDESCENT BACKPACK
TEMPKI4Q DW 0	;PRINTED CAP
;MEN
MI1Q DW 0	;LOOSE FIT T-SHIRT
MI2Q DW 0	;REGULAR FIT T-SHIRT
MI3Q DW 0	;SLIM FIT JOGGERS
MI4Q DW 0	;LOOSE FIT CARGO TROUSERS
MI5Q DW 0	;REGULAR FIT CHINO SHORTS
MI6Q DW 0	;RELAXED FIT SHORTS
;WOMEN
WI1Q DW 0	;LINEN SHIRT DRESS
WI2Q DW 0	;COTTON DRESS
WI3Q DW 0	;V-NECK BLOUSE
WI4Q DW 0	;CAP-SLEEVED BLOUSE
WI5Q DW 0	;PLEATED SKIRT
WI6Q DW 0	;COATED SKIRT
;KIDS
KI1Q DW 0	;PRINTED T-SHIRT
KI2Q DW 0	;JERSEY PYJAMAS
KI3Q DW 0	;IRIDESCENT BACKPACK
KI4Q DW 0	;PRINTED CAP
;TOTAL
ITEMTTLQ DW 0 ;TOTAL ITEM SOLD
TTLSALES1 DW 0 ;TOTAL SALES
TTLSALES2 DW 0

;==================================================================
;SALES PROCESSING
;==================================================================	
;PAYMENT
TTLIT DB 13,10,"PRICE(INC 6% TAX): RM$"
CHCKOUTMENU DB 13,10,13,10,"PAYMENT METHOD"
			DB 13,10,"1.CASH"
			DB 13,10,"2.E-WALLET"
			DB 13,10,"[3]CANCEL PAYMENT"
			DB 13,10,"CHOOSE A PAYMENT OPTION(EX 1): $"
PAYOPT DB ?		;PAYMENT OPTION
CASHMENU DB 13,10,"HAS CASH PAYMENT BEEN MADE?"
		 DB 13,10,"1.YES "
		 DB 13,10,"[2]CHANGE PAYMENT METHOD"
		 DB 13,10,"----------------------"
		 DB 13,10,"OPERATION SELECTION: $"
CASHOPT DB ?
EWALLMENU DB 13,10,"SELECT E-WALLET PAYMENT METHOD"
		  DB 13,10,"1.BARCODE SCAN"
		  DB 13,10,"2.SCAN QR"
		  DB 13,10,"[3]CHANGE PAYMENT METHOD"
		  DB 13,10,"----------------------"
		  DB 13,10,"OPERATION SELECTION: $"
EWLLTOPT1 DB ?
EWALLCON DB 13,10,"HAS E-WALLET PAYMENT BEEN MADE?"
		 DB 13,10,"1.YES "
		 DB 13,10,"[2]CHANGE PAYMENT METHOD"
		 DB 13,10,"----------------------"
		 DB 13,10,"OPERATION SELECTION: $"
EWLLTOPT2 DB ?
		 
;RECEIPT
RCPTSTART DB 13,10,"HERE IS THE RECEIPT :$"
RECEIPTHEADER DB 13,10,"____________________________________________________________________"
			  DB 13,10,"                               STYLE CO.                "
			  DB 13,10,"                     JALAN GENTING KELANG,SETAPAK,       "
			  DB 13,10,"                         53300 KUALA LUMPUR "
			  DB 13,10,"                        TEL: (6)03-41450123 "
			  DB 13,10,"--------------------------------------------------------------------"
			  DB 13,10,"CASHIER: ADMIN01"
			  DB 13,10,"--------------------------------------------------------------------$"
RECEIPTTITLE  DB 13,10,"   DESCRIPTION                               QTY     UNIT PRICE(RM) $"
ITEM1		  DB 13,10,"LOOSE FIT T-SHIRT                             $"
ITEM2		  DB 13,10,"REGULAR FIT T-SHIRT                           $"
ITEM3		  DB 13,10,"SLIM FIT JOGGERS                              $"
ITEM4		  DB 13,10,"LOOSE FIT CARGO TROUSERS                      $"
ITEM5		  DB 13,10,"REGULAR FIT CHINO SHORTS                      $"
ITEM6		  DB 13,10,"RELAXED FIT SHORTS                            $"
ITEM7		  DB 13,10,"LINEN SHIRT DRESS                             $"
ITEM8		  DB 13,10,"COTTON DRESS                                  $"
ITEM9		  DB 13,10,"V-NECK BLOUSE                                 $"
ITEM10		  DB 13,10,"CAP-SLEEVED BLOUSE                            $"
ITEM11		  DB 13,10,"PLEATED SKIRT                                 $"
ITEM12		  DB 13,10,"COATED SKIRT                                  $"
ITEM13		  DB 13,10,"PRINTED T-SHIRT                               $"
ITEM14		  DB 13,10,"JERSEY PYJAMAS                                $"
ITEM15		  DB 13,10,"IRIDESCENT BACKPACK                           $"
ITEM16		  DB 13,10,"PRINTED CAP                                   $"
RCPTF1		  DB 13,10,"====================================================================$"
STTL          DB 13,10,"                                         SUBTOTAL:  RM$"
DISCOUNT      DB 13,10,"                                     DISCOUNT 10%: -RM$"  
TTTL          DB 13,10,"                                    TAXABLE TOTAL:  RM$"
TAX           DB 13,10,"                                     SALES TAX 6%:  RM$"
RCPTF2        DB 13,10,"===================================================================="
              DB 13,10,"                                            TOTAL:  RM$"
AMTDUE        DB 13,10,"                             AMOUNT DUE(ROUNDING):  RM$"
RECEIPTFOOTER DB 13,10,"--------------------------------------------------------------------"
			  DB 13,10,"                  THANK YOU! GLAD TO SEE YOU AGAIN SOON "
			  DB 13,10,"____________________________________________________________________$"
RCPTEND DB 13,10,13,10,"PRESS ENTER BACK TO MAIN MENU...$"
MEMREGRCPT	  DB 13,10,13,10,"MEMBERSHIP REGISTRATION                           1       10.00     "
			  DB 13,10,13,10,"===================================================================="
			  DB 13,10,"                                             SUBTOTAL(RM):10.00$"
.CODE
MAIN PROC
MOV AX, @DATA
MOV DS, AX


START:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;==================================================================
;MAINPAGE DESIGN
;==================================================================
MOV AH, 09H
LEA DX, MPG
INT 21H

;######################################	;empty line
MOV AH, 02H
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H
;######################################

;==============================================
;STAFF LOGIN
;==============================================
;*******************************************
;USERNAME INPUT
;*******************************************
MOV AH, 09H
LEA DX, OUSERNAME
INT 21H

MOV CX,7
MOV SI,0
USERNAME:			;ADMIN01
 MOV AH, 01H
 INT 21H
 MOV IUSERNAME[SI], AL
 INC SI
 LOOP USERNAME


MOV AH, 02H
MOV DL, 0DH
INT 21H
MOV DL, 0AH
INT 21H

;*******************************************
;PASSWORD INPUT
;*******************************************
MOV AH, 09H
LEA DX, OPASSWORD
INT 21H

MOV CX,5
MOV SI,0
PASSWORD:			;12345
 MOV AH, 07H
 INT 21H
 MOV IPASSWORD[SI], AL
 MOV AH, 02H
 MOV DL,'*'
 INT 21H
 INC SI
 LOOP PASSWORD
 
;*******************************************
;VALIDATION
;*******************************************
MOV SI,0		;FOR USERNAME
MOV DI,0		;FOR PASSWORD

CHKUN:
 CMP SI,7
 JE CHKP
 MOV AL, IUSERNAME[SI]
 CMP AL,USERNAME1[SI]
 JE NNAME
 JNE ERROR


NNAME:
 INC SI
 JMP CHKUN

CHKP:
 CMP DI,5
 JE WELCOME
 MOV AL,IPASSWORD[DI]
 CMP AL,PASSWORD1[DI]
 JE NPSW
 JNE ERROR

NPSW:
 INC DI
 JMP CHKP

WELCOME:
 MOV AH,09H
 LEA DX,VMSG
 INT 21H
 MOV AH, 01H
 INT 21H
 JMP MENU

ERROR:
 MOV AH,09H
 LEA DX,IVMSG
 INT 21H
 MOV AH, 01H
 INT 21H
 JMP START
 
;=======================================================
;MENU
;========================================================
MENU:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;INITIALIZATION
MOV STTL1,0
MOV STTL2,0
MOV TEMPMI1Q,0
MOV TEMPMI2Q,0
MOV TEMPMI3Q,0
MOV TEMPMI4Q,0
MOV TEMPMI5Q,0
MOV TEMPMI6Q,0
MOV TEMPWI1Q,0
MOV TEMPWI2Q,0
MOV TEMPWI3Q,0
MOV TEMPWI4Q,0
MOV TEMPWI5Q,0
MOV TEMPWI6Q,0
MOV TEMPKI1Q,0
MOV TEMPKI2Q,0
MOV TEMPKI3Q,0
MOV TEMPKI4Q,0
MOV ITEMTTLQ,0
MOV N1,0
MOV N2,0
MOV N3,0
MOV N4,0
MOV N5,0
MOV N6,0
MOV N7,0
MOV N8,0
MOV N9,0
MOV DISCOUNT1,0
MOV DISCOUNT2,0
MOV DISPRICE1,0
MOV DISPRICE2,0
MOV TAX1,0
MOV TAX2,0
MOV FPRICE1,0
MOV FPRICE2,0
;======================================================
;MENU CONTENT
;======================================================
MOV AH, 09H
LEA DX, MENU1
INT 21H
;========================================================
;MENU SELECTION
;=======================================================
MOV AH, 01H
INT 21H
MOV MENUS,AL
CMP MENUS,'1'	;CHECKOUT ITEM
JE CHKI	
CMP MENUS,'2'	;MEMBERSHIP REGISTRATION
JE TEMPMEMREG
CMP MENUS,'3'	;GENERATE REPORT
JE TEMPREPORT
CMP MENUS,'4'
JE TEMP1START		;EXIT

TEMPMEMREG:
 JMP MEMREG
TEMPREPORT:
 JMP REPORT
TEMP1START:
 JMP START
 
;======================================================
;CHECKOUT ITEMS
;======================================================
CHKI:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,ICAT
  INT 21H
  MOV AH, 01H
  INT 21H
  MOV ICATS,AL
  CMP ICATS,'1'
  JE MEN
  CMP ICATS,'2'
  JE TEMPWOMEN
  CMP ICATS,'3'
  JE TEMPKIDS
  CMP ICATS,'4'
  JE TEMPMENU1
  
  TEMPMENU1:
   JMP MENU
  

;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 
 TEMPWOMEN:
  JMP WOMEN
 TEMPKIDS:
  JMP KIDS
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


;***************************************************
;MEN
;***************************************************
 MEN:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,MCAT
  INT 21H
  MOV AH, 01H
  INT 21H
  MOV CATS,AL
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  CMP CATS,'1'
  JE TSHIRTS
  CMP CATS,'2'
  JE TROUSERS
  CMP CATS,'3'
  JE TEMPSHORTS
  CMP CATS,'4'
  JE CHKI
  
  TEMPSHORTS:
   JMP SHORTS
  
  TSHIRTS:
   MOV AH,09H
   LEA DX,MI1
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPMEN1
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPMITEM1
   CMP ITS,'2'
   JE TEMPMITEM2
   
   TEMPMITEM1:
    JMP MITEM1
   TEMPMITEM2:
    JMP MITEM2
   TEMPMEN1:
    JMP MEN
   
  TROUSERS:
   MOV AH,09H
   LEA DX,MI2
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPMEN2
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPMITEM3
   CMP ITS,'2'
   JE TEMPMITEM4
   
   TEMPMITEM3:
    JMP MITEM3
   TEMPMITEM4:
    JMP MITEM4
   TEMPMEN2:
	JMP MEN
	
  SHORTS:
   MOV AH,09H
   LEA DX,MI3
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPMEN3
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPMITEM5
   CMP ITS,'2'
   JE TEMPMITEM6
     
   TEMPMITEM5:
    JMP MITEM5
   TEMPMITEM6:
    JMP MITEM6
   TEMPMEN3:
    JMP MEN
	
 ;*****************************************
 ;CALCULATION
 ;*****************************************
 ;TSHIRTS
  MITEM1:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1000	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPMI1Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  MITEM2:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1200	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPMI2Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
   
 ;TROUSERS
  MITEM3:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 2000	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPMI3Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  MITEM4:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 2200	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPMI4Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
   
 ;SHORTS
  MITEM5:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1500	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPMI5Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  MITEM6:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1400	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPMI6Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
   
;***********************************************
;WOMEN
;***********************************************   
 WOMEN:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,WCAT
  INT 21H
  MOV AH, 01H
  INT 21H
  MOV CATS,AL
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  CMP CATS,'1'
  JE DRESSES
  CMP CATS,'2'
  JE TEMPBLOUSES
  CMP CATS,'3'
  JE TEMPSKIRTS
  CMP CATS,'4'
  JE TEMPCHKI1
  
  TEMPBLOUSES:
   JMP BLOUSES
  TEMPSKIRTS:
   JMP SKIRTS
  TEMPCHKI1:
   JMP CHKI
   
  DRESSES:
   MOV AH,09H
   LEA DX,WI1
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPWOMEN1
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPWITEM1
   CMP ITS,'2'
   JE TEMPWITEM2  
   
   TEMPWITEM1:
    JMP WITEM1
   TEMPWITEM2:
    JMP WITEM2
   TEMPWOMEN1:
    JMP WOMEN
   
  BLOUSES:
   MOV AH,09H
   LEA DX,WI2
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPWOMEN2
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPWITEM3
   CMP ITS,'2'
   JE TEMPWITEM4 

   TEMPWITEM3:
    JMP WITEM3
   TEMPWITEM4:
    JMP WITEM4   
   TEMPWOMEN2:
    JMP WOMEN
	
  SKIRTS:
   MOV AH,09H
   LEA DX,WI3
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPWOMEN3
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE TEMPWITEM5
   CMP ITS,'2'
   JE TEMPWITEM6
 
   TEMPWITEM5:
    JMP WITEM5
   TEMPWITEM6:
    JMP WITEM6
   TEMPWOMEN3:
    JMP WOMEN
   
   
 ;*****************************************
 ;CALCULATION
 ;*****************************************
 ;DRESSES
  WITEM1:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 2600	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPWI1Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  WITEM2:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 2400	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPWI2Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY

   
 ;BLOUSES
  WITEM3:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 2000	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPWI3Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  WITEM4:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1900	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPWI4Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY


 ;SKIRTS
  WITEM5:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1400	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPWI5Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  WITEM6:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1500	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPWI6Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY



;***********************************************
;KIDS
;***********************************************
 KIDS:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,KCAT
  INT 21H
  MOV AH, 01H
  INT 21H
  MOV CATS,AL
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  CMP CATS,'1'
  JE CLOTHING
  CMP CATS,'2'
  JE ACCESSORIES
  CMP CATS,'3'
  JE TEMPCHKI2

  TEMPCHKI2:
   JMP CHKI
   
  CLOTHING:
   MOV AH,09H
   LEA DX,KI1
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPKIDS1
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE KITEM1
   CMP ITS,'2'
   JE KITEM2
  
   TEMPKIDS1:
    JMP KIDS
	
  ACCESSORIES:
   MOV AH,09H
   LEA DX,KI2
   INT 21H
   MOV AH, 01H
   INT 21H
   MOV ITS,AL
   CMP ITS,'3'
   JE TEMPKIDS2
   ; Prompt for input
    MOV AH, 09H
    LEA DX, IQUANT
    INT 21H

    ; Input first digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT1, AX
	
    SUB IQUANT1, 30H     ; Convert ASCII to numeric

    ; Input second digit
    MOV AH, 01H
    INT 21H
	XOR AH, AH
    MOV IQUANT2, AX
	
	SUB IQUANT2, 30H     ; Convert ASCII to numeric

    ; Combine input digits
    MOV AX, IQUANT1
    MOV BX, TEN
    MUL BX          ; BX = IQUANT1 * TEN
    ADD AX, IQUANT2   ; AL = (IQUANT1 * TEN) + IQUANT2
    MOV QUANT, AX    ; Store the result in QUANT 
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   CMP ITS,'1'
   JE KITEM3
   CMP ITS,'2'
   JE KITEM4
   
   TEMPKIDS2:
    JMP KIDS
   
 ;*****************************************
 ;CALCULATION
 ;*****************************************
 ;CLOTHING
  KITEM1:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1000	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPKI1Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  KITEM2:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1100	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPKI2Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
   
 ;ACCESSORIES
  KITEM3:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1000	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL
	MOV AX, QUANT	
	ADD TEMPKI3Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY
  KITEM4:
   ; Calculate total
    MOV AX, QUANT
    MOV BX, 1300	;ITEM PRICE
    MUL BX          ; BX = QUANT * ITEM PRICE
    MOV TTL, AX     ; Store the result in TTL 
	MOV AX, QUANT	
	ADD TEMPKI4Q,AX		;ITEM SOLD + QUANTITY
   JMP CONBUY


CONBUY:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;DISPLAY SUBTOTAL
XOR DX, DX
MOV AX, TTL
DIV TTHOUSAND
MOV Q, AX
MOV R,DX
	
MOV AX,Q
ADD STTL1,AX
MOV AX,R
ADD STTL2,AX
	
XOR DX, DX
MOV AX, STTL2
DIV TTHOUSAND
MOV Q, AX
MOV R,DX 
    
CMP Q,1				
JE CARRY
JNE DISPLAY

CARRY:
 ADD STTL1,1
 MOV AX,R
 MOV STTL2,AX

DISPLAY:
 XOR DX, DX
 MOV AX, STTL2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, STTL1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

; Output the total
MOV AH, 09H
LEA DX, OSTTL
INT 21H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9
CMP N2,30H
JNE DIGIT8
CMP N3,30H
JNE DIGIT7
CMP N4,30H
JNE DIGIT6
CMP N5,30H
JNE DIGIT5
CMP N6,30H
JNE DIGIT4

; Output each digit separately	
DIGIT9:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H

;CHECKOUT CONFIRMATION	
  MOV AH,09H
  LEA DX,BUYC
  INT 21H
  MOV AH, 01H
  INT 21H
  MOV BUYCS,AL
  CMP BUYCS,'1'
  JE CHECKOUT
  CMP BUYCS,'2'
  JE TEMPCHKI
 
TEMPCHKI:
 JMP CHKI

CHECKOUT:
;DISPLAY START HERE
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
MOV AH,09H
LEA DX,MEMCON
INT 21H

MOV AH,01H
INT 21H

MOV MEMCONS,AL
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
CMP MEMCONS,'Y'
JE YESMEM
CMP MEMCONS,'y'
JE YESMEM
CMP MEMCONS,'N'
JE TEMPCALTTL
CMP MEMCONS,'n'
JE TEMPCALTTL

TEMPCALTTL:
 JMP CALTTL

YESMEM:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
 MOV AH,09H
 LEA DX,OCPNUM
 INT 21H 
 
 ;INPUT PHONE NUMBER
 MOV CX,11
 MOV SI,0
 CPNUM:
  MOV AH,01H
  INT 21H
  CMP AL, 0DH    ; Check for carriage return
  JE OUTLOOP7
  CMP AL, 0AH    ; Check for line feed
  JE OUTLOOP7
  MOV PHONENUMCHCK[SI],AL
  INC SI
  LOOP CPNUM
 OUTLOOP7:
 
 ;PHONE NUMBER VALIDATION

;CHECK MEMBER 1
 MOV CX,11
 MOV SI,0
 CHECKCOUNT1:
  CMP SI,10
  JE MEMBER1VALID			;VALID
  JNE CHECKPNUM1		

 CHECKPNUM1:
  MOV AL, PHONENUMCHCK[SI]
  CMP PHONENUM1[SI],AL
  JE CONCHECK1
  JNE CHECKMEM2		;NOT VALID, CHECK MEMBER 2

 CONCHECK1:
  INC SI
  JMP CHECKCOUNT1
 
 
 ;CHECK MEMBER 2
 CHECKMEM2:
  MOV CX,11
  MOV SI,0
  CHECKCOUNT2:
   CMP SI,10
   JE MEMBER2VALID		;VALID
   JNE CHECKPNUM2

  CHECKPNUM2:
   MOV AL, PHONENUMCHCK[SI]
   CMP PHONENUM2[SI],AL
   JE CONCHECK2
   JNE CHECKMEM3	;NOT VALID, CHECK MEMBER 3

  CONCHECK2:
   INC SI
   JMP CHECKCOUNT2
 
 
;CHECK MEMBER3
 CHECKMEM3:
  MOV CX,11
  MOV SI,0
  CHECKCOUNT3:
   CMP SI,10
   JE MEMBER3VALID		;VALID
   JNE CHECKPNUM3

  CHECKPNUM3:
   MOV AL, PHONENUMCHCK[SI]
   CMP PHONENUM3[SI],AL
   JE CONCHECK3
   JNE TEMPMEMBERNVALID		;NOT VALID, NOT REGISTERED

  CONCHECK3:
   INC SI
   JMP CHECKCOUNT3
 
  TEMPMEMBERNVALID:
   JMP MEMBERNVALID
   
 MEMBER1VALID:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,CRTNUM1
  INT 21H
  
  MOV CX,15
  MOV SI,0
  PRINTNAMEMEM1:
   MOV AH,02H
   MOV DL,NAME1[SI]
   INT 21H
   INC SI
   LOOP PRINTNAMEMEM1
   
  MOV AH,09H
  LEA DX,CRTNUM2
  INT 21H
  JMP CALDIS
   
  MEMBER2VALID:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,CRTNUM1
  INT 21H
  
  MOV CX,15
  MOV SI,0
  PRINTNAMEMEM2:
   MOV AH,02H
   MOV DL,NAME2[SI]
   INT 21H
   INC SI
   LOOP PRINTNAMEMEM2
  
  MOV AH,09H
  LEA DX,CRTNUM2
  INT 21H
  JMP CALDIS
   
  MEMBER3VALID:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,CRTNUM1
  INT 21H
  
  MOV CX,15
  MOV SI,0
  PRINTNAMEMEM3:
   MOV AH,02H
   MOV DL,NAME3[SI]
   INT 21H
   INC SI
   LOOP PRINTNAMEMEM3
  
  MOV AH,09H
  LEA DX,CRTNUM2
  INT 21H
  JMP CALDIS
   
  MEMBERNVALID:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   MOV AH,09H
   LEA DX,WRGNUM
   INT 21H
   
   MOV AH,01H
   INT 21H
   
   MOV WRGNUMS,AL
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################   
   CMP WRGNUMS,'1'
   JE TEMPYESMEM
   CMP WRGNUMS,'2'
   JE CALTTL
   
   TEMPYESMEM:
    JMP YESMEM
 
CALDIS:				;DISCOUNT 10%
 XOR DX, DX
 MOV AX, STTL1
 DIV TEN          
 MOV DISCOUNT1, AX       
 MOV R, DX
 
 MOV AX, R
 MOV BX, THOUSAND
 MUL BX          
 ADD DISCOUNT2, AX 
 
 XOR DX, DX
 MOV AX, STTL2
 DIV TEN          
 ADD DISCOUNT2, AX    

CALTTL:
 MOV AX,STTL2
 MOV BX,STTL1
 CMP AX,DISCOUNT2
 JB BORROW
 JNB NOBORROW
 
 BORROW:        
  ADD AX, 10000
  SUB BX,1
 NOBORROW:
  SUB AX,DISCOUNT2
  MOV DISPRICE2,AX
  SUB BX,DISCOUNT1
  MOV DISPRICE1,BX
  
  CALTAX:
   ;DISCOUNTED PRICE / 100
   XOR DX, DX
   MOV AX, DISPRICE1
   DIV HUNDRED          
   MOV TAX1, AX  
   MOV R,DX
   
   XOR DX, DX
   MOV AX, R
   DIV TEN          
   MOV Q,AX  
   MOV R,DX
   
   MOV AX, Q
   MOV BX, THOUSAND
   MUL BX          
   ADD TAX2, AX 
   
   MOV AX, R
   MOV BX, HUNDRED
   MUL BX          
   ADD TAX2, AX 
   
   XOR DX, DX
   MOV AX, DISPRICE2
   DIV HUNDRED
   ADD TAX2,AX
   
   ;DISCOUNTED PRICE / 100 * 6
   MOV AX, TAX2
   MOV BX, SIX
   MUL BX          
   MOV TAX2, AX

   MOV AX, TAX1
   MOV BX, SIX
   MUL BX          
   MOV TAX1, AX 
   
   XOR DX, DX
   MOV AX, TAX2
   DIV TTHOUSAND
   ADD TAX1,AX
   MOV TAX2,DX
   
  CALFPRICE:
   MOV AX,DISPRICE2
   ADD FPRICE2,AX
   MOV AX,TAX2
   ADD FPRICE2,AX
   MOV AX,DISPRICE1
   ADD FPRICE1,AX
   MOV AX,TAX1
   ADD FPRICE1,AX
   
   XOR DX, DX
   MOV AX, FPRICE2
   DIV TTHOUSAND
   ADD FPRICE1,AX
   MOV FPRICE2,DX
   
  CALROUNDING:
   XOR DX, DX
   MOV AX, FPRICE2
   DIV TEN
   MOV R,DX
   
   CMP R,1
   JE ROUNDTO0
   CMP R,2
   JE ROUNDTO0
   CMP R,3
   JE ROUNDTO5
   CMP R,4
   JE ROUNDTO5
   CMP R,5
   JE ROUNDTO5
   CMP R,6
   JE ROUNDTO5
   CMP R,7
   JE ROUNDTO5
   CMP R,8
   JE ROUNDTO10
   CMP R,9
   JE ROUNDTO10
   
   ROUNDTO0:
    MOV AX,FPRICE2
	MOV BX,R
	MOV ROUNDING1,BX
	SUB AX,ROUNDING1
	MOV AMTDUE2,AX
	MOV AX,FPRICE1
	MOV AMTDUE1,AX
	JMP OUTROUNDING
   ROUNDTO5:
    MOV AX,FPRICE2
	SUB R,5
	MOV BX,R
	MOV ROUNDING1,BX
	SUB AX,ROUNDING1
	MOV AMTDUE2,AX
	MOV AX,FPRICE1
	MOV AMTDUE1,AX
	JMP OUTROUNDING
   ROUNDTO10:
    MOV AX,FPRICE2
    SUB R,10
    MOV BX,R
    MOV ROUNDING1,BX
    SUB AX,ROUNDING1
    MOV AMTDUE2,AX
    MOV AX,FPRICE1
    MOV AMTDUE1,AX
 
 OUTROUNDING:
 
;DISPLAY PRICE(INC TAX) BEFORE PAYMENT MADE
MOV AH,09H
LEA DX,TTLIT
INT 21H
   
 XOR DX, DX
 MOV AX, FPRICE2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, FPRICE1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9_1
CMP N2,30H
JNE DIGIT8_1
CMP N3,30H
JNE DIGIT7_1
CMP N4,30H
JNE DIGIT6_1
CMP N5,30H
JNE DIGIT5_1
CMP N6,30H
JNE DIGIT4_1
JE DIGIT3_1

; Output each digit separately	
DIGIT9_1:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8_1:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7_1:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6_1:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5_1:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4_1:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT3_1:
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H

 
 
 
PAYMENT1:
 MOV AH,09H
 LEA DX,CHCKOUTMENU
 INT 21H
 
 MOV AH,01H
 INT 21H
 
 MOV PAYOPT,AL
 
 CMP PAYOPT,'1'
 JE CASH1
 CMP PAYOPT,'2'
 JE EWALLET1
 CMP PAYOPT,'3'
 JE TEMPMENU5
 
 TEMPMENU5:
  JMP MENU
  
 CASH1:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,CASHMENU
  INT 21H
  
  MOV AH,01H
  INT 21H
 
  MOV CASHOPT,AL
 
  CMP CASHOPT,'1'
  JE RECEIPT
  CMP CASHOPT,'2'
  JE PAYMENT1
  
 EWALLET1:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,EWALLMENU
  INT 21H
  
  MOV AH,01H
  INT 21H
 
  MOV EWLLTOPT1,AL
 
  CMP EWLLTOPT1,'1'
  JE EPAYCON1
  CMP EWLLTOPT1,'2'
  JE EPAYCON1
  CMP EWLLTOPT1,'3'
  JE TEMPPAYMENT1
  
  TEMPPAYMENT1:
   JMP PAYMENT1
  
  EPAYCON1:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   MOV AH,09H
   LEA DX,EWALLCON
   INT 21H
   
   MOV AH,01H
   INT 21H
 
   MOV EWLLTOPT2,AL
 
   CMP EWLLTOPT2,'1'
   JE RECEIPT
   CMP EWLLTOPT2,'2'
   JE EWALLET1
 
RECEIPT:
;*****************************************
;ADD SUBTOTAL TO TOTAL SALES
;*****************************************
;------------------------------------------------- 
MOV AX,STTL1
ADD TTLSALES1,AX
MOV AX,STTL2
ADD TTLSALES2,AX
	
XOR DX, DX
MOV AX, TTLSALES2
DIV TTHOUSAND
ADD TTLSALES1,AX
MOV TTLSALES2,DX
;-------------------------------------------------

;*****************************************
;ADD TEMP QUANTITY TO ACTUAL QUANTITY SOLD
;*****************************************
;------------------------------------------------- 
MOV AX,TEMPMI1Q
ADD MI1Q,AX
MOV AX,TEMPMI2Q
ADD MI2Q,AX
MOV AX,TEMPMI3Q
ADD MI3Q,AX
MOV AX,TEMPMI4Q
ADD MI4Q,AX
MOV AX,TEMPMI5Q
ADD MI5Q,AX
MOV AX,TEMPMI6Q
ADD MI6Q,AX
MOV AX,TEMPWI1Q
ADD WI1Q,AX
MOV AX,TEMPWI2Q
ADD WI2Q,AX
MOV AX,TEMPWI3Q
ADD WI3Q,AX
MOV AX,TEMPWI4Q
ADD WI4Q,AX
MOV AX,TEMPWI5Q
ADD WI5Q,AX
MOV AX,TEMPWI6Q
ADD WI6Q,AX
MOV AX,TEMPKI1Q
ADD KI1Q,AX
MOV AX,TEMPKI2Q
ADD KI2Q,AX
MOV AX,TEMPKI3Q
ADD KI3Q,AX
MOV AX,TEMPKI4Q
ADD KI4Q,AX
;--------------------------------------------------------

;DISPLAY START HERE
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
MOV AH,09H
LEA DX,RCPTSTART
INT 21H
MOV AH,09H
LEA DX,RECEIPTHEADER
INT 21H
MOV AH,09H
LEA DX,RECEIPTTITLE
INT 21H



CMP TEMPMI1Q,0
JE P2
JNE TPITEM1
TPITEM1:
 JMP PITEM1
P2:
CMP TEMPMI2Q,0
JE P3
JNE TPITEM2
TPITEM2:
 JMP PITEM2
P3:
CMP TEMPMI3Q,0
JE P4
JNE TPITEM3
TPITEM3:
 JMP PITEM3
P4:
CMP TEMPMI4Q,0
JE P5
JNE TPITEM4
TPITEM4:
 JMP PITEM4
P5:
CMP TEMPMI5Q,0
JE P6
JNE TPITEM5
TPITEM5:
 JMP PITEM5
P6:
CMP TEMPMI6Q,0
JE P7
JNE TPITEM6
TPITEM6:
 JMP PITEM6
P7:
CMP TEMPWI1Q,0
JE P8
JNE TPITEM7
TPITEM7:
 JMP PITEM7
P8:
CMP TEMPWI2Q,0
JE P9
JNE TPITEM8
TPITEM8:
 JMP PITEM8
P9:
CMP TEMPWI3Q,0
JE P10
JNE TPITEM9
TPITEM9:
 JMP PITEM9
P10:
CMP TEMPWI4Q,0
JE P11
JNE TPITEM10
TPITEM10:
 JMP PITEM10
P11:
CMP TEMPWI5Q,0
JE P12
JNE TPITEM11
TPITEM11:
 JMP PITEM11
P12:
CMP TEMPWI6Q,0
JE P13
JNE TPITEM12
TPITEM12:
 JMP PITEM12
P13:
CMP TEMPKI1Q,0
JE P14
JNE TPITEM13
TPITEM13:
 JMP PITEM13
P14:
CMP TEMPKI2Q,0
JE P15
JNE TPITEM14
TPITEM14:
 JMP PITEM14
P15:
CMP TEMPKI3Q,0
JE P16
JNE TPITEM15
TPITEM15:
 JMP PITEM15
P16:
CMP TEMPKI4Q,0
JE TEMPENDRCPT
JNE TPITEM16
TPITEM16:
 JMP PITEM16
TEMPENDRCPT:
 JMP ENDRCPT




PITEM1:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM1
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P2
 
PITEM2:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM2
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H 
 MOV AH, 02H
 MOV DL, '2'
 INT 21H 
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H 
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P3
 
PITEM3:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM3
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '2'
 INT 21H 
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P4
 
PITEM4:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM4
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '2'
 INT 21H
 MOV AH, 02H
 MOV DL, '2'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P5
 
PITEM5:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM5
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI5Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '5'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P6
 
PITEM6:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM6
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPMI6Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '4'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P7
 
PITEM7:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM7
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '2'
 INT 21H
 MOV AH, 02H
 MOV DL, '6'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P8
 
PITEM8:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM8
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '2'
 INT 21H
 MOV AH, 02H
 MOV DL, '4'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P9
 
PITEM9:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM9
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '2'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P10
 
PITEM10:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM10
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '9'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P11
 
PITEM11:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM11
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI5Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '4'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P12
 
PITEM12:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM12
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPWI6Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '5'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P13
 
PITEM13:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM13
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPKI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P14
 
PITEM14:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM14
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPKI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P15
 
PITEM15:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM15
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPKI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 
 JMP P16
 
PITEM16:
;DESCRIPTION
 MOV AH,09H
 LEA DX,ITEM16
 INT 21H
 
 ;QUANTITY
 XOR DX, DX
 MOV AX, TEMPKI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 ;FORMAT
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, '*'
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 MOV AH, 02H
 MOV DL, ' '
 INT 21H
 
 ;PRICE
 MOV AH, 02H
 MOV DL, '1'
 INT 21H
 MOV AH, 02H
 MOV DL, '3'
 INT 21H
 MOV AH, 02H
 MOV DL, '.'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H
 MOV AH, 02H
 MOV DL, '0'
 INT 21H


;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
ENDRCPT:
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


MOV AH,09H
LEA DX,RCPTF1
INT 21H

MOV AH,09H
LEA DX,STTL			;SUBTOTAL
INT 21H

;SUBTOTAL
 XOR DX, DX
 MOV AX, STTL2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, STTL1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c1
CMP N2,30H
JNE DIGIT8c1
CMP N3,30H
JNE DIGIT7c1
CMP N4,30H
JNE DIGIT6c1
CMP N5,30H
JNE DIGIT5c1
CMP N6,30H
JNE DIGIT4c1

; Output each digit separately	
DIGIT9c1:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c1:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c1:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c1:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c1:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c1:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H




MOV AH,09H
LEA DX,DISCOUNT		;DISCOUNT
INT 21H


;DISCOUNT
 XOR DX, DX
 MOV AX, DISCOUNT2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, DISCOUNT1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c2
CMP N2,30H
JNE DIGIT8c2
CMP N3,30H
JNE DIGIT7c2
CMP N4,30H
JNE DIGIT6c2
CMP N5,30H
JNE DIGIT5c2
CMP N6,30H
JNE DIGIT4c2
JE DIGIT3c2


; Output each digit separately	
DIGIT9c2:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c2:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c2:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c2:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c2:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c2:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT3c2:	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H



MOV AH,09H
LEA DX,TTTL			;TAXABLE TOTAL
INT 21H


;DISCOUNTED PRICE
 XOR DX, DX
 MOV AX, DISPRICE2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, DISPRICE1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c3
CMP N2,30H
JNE DIGIT8c3
CMP N3,30H
JNE DIGIT7c3
CMP N4,30H
JNE DIGIT6c3
CMP N5,30H
JNE DIGIT5c3
CMP N6,30H
JNE DIGIT4c3

; Output each digit separately	
DIGIT9c3:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c3:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c3:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c3:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c3:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c3:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H



MOV AH,09H
LEA DX,TAX			;TAX
INT 21H


;TAX
 XOR DX, DX
 MOV AX, TAX2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, TAX1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c4
CMP N2,30H
JNE DIGIT8c4
CMP N3,30H
JNE DIGIT7c4
CMP N4,30H
JNE DIGIT6c4
CMP N5,30H
JNE DIGIT5c4
CMP N6,30H
JNE DIGIT4c4
JE DIGIT3c4

; Output each digit separately	
DIGIT9c4:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c4:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c4:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c4:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c4:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c4:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT3c4:	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H
  
  

MOV AH,09H
LEA DX,RCPTF2		;TOTAL
INT 21H


;TOTAL
 XOR DX, DX
 MOV AX, FPRICE2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, FPRICE1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c5
CMP N2,30H
JNE DIGIT8c5
CMP N3,30H
JNE DIGIT7c5
CMP N4,30H
JNE DIGIT6c5
CMP N5,30H
JNE DIGIT5c5
CMP N6,30H
JNE DIGIT4c5

; Output each digit separately	
DIGIT9c5:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c5:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c5:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c5:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c5:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c5:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H


MOV AH,09H
LEA DX,AMTDUE		;AMOUNT DUE
INT 21H


;SUBTOTAL
 XOR DX, DX
 MOV AX, AMTDUE2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, AMTDUE1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE DIGIT9c7
CMP N2,30H
JNE DIGIT8c7
CMP N3,30H
JNE DIGIT7c7
CMP N4,30H
JNE DIGIT6c7
CMP N5,30H
JNE DIGIT5c7
CMP N6,30H
JNE DIGIT4c7

; Output each digit separately	
DIGIT9c7:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
DIGIT8c7:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT7c7:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT6c7:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT5c7:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

DIGIT4c7:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H




MOV AH,09H
LEA DX,RECEIPTFOOTER
INT 21H
MOV AH,09H
LEA DX,RCPTEND
INT 21H
 
MOV AH,01H
INT 21H
JMP MENU
   
 

;======================================================
;MEMBERSHIP REGISTRATION
;======================================================
MEMREG:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
CMP COUNTER,1
JE MEMBER1
CMP COUNTER,2
JE TEMPMEMBER2
CMP COUNTER,3
JE TEMPMEMBER3
CMP COUNTER,4
JE TEMPSTOPMEMBER

TEMPMEMBER2:
 JMP MEMBER2
TEMPMEMBER3:
 JMP MEMBER3
TEMPSTOPMEMBER:
 JMP STOPMEMBER

MEMBER1:
;INITIALIZE PHONE NUMBER ARRAY
MOV CX,11
MOV SI,0
INIPNUM1:
 MOV PHONENUM1[SI],0
 INC SI
 LOOP INIPNUM1
;INITIALIZE NAME ARRAY
MOV CX,15
MOV SI,0
ININAME1:
 MOV NAME1[SI],0
 INC SI
 LOOP ININAME1
 
;PROMPT PHONE NUMBER
MOV AH,09H
LEA DX,OCPNUM
INT 21H
;INPUT PHONE NUMBER
MOV CX,11
MOV SI,0
GETNUM1:
 MOV AH,01H
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP1
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP1
 MOV PHONENUM1[SI],AL
 INC SI
 LOOP GETNUM1
OUTLOOP1:

;VALIDATE INPUT OF PHONE NUMBER IS NUMERIC DIGIT
MOV CX,11
MOV SI,0
VALIDNUM1:
 CMP PHONENUM1[SI],30H
 JB TEMPNUMONLY1
 CMP PHONENUM1[SI],39H
 JA TEMPNUMONLY1
 INC SI
 LOOP VALIDNUM1
JMP CONTINUE1

TEMPNUMONLY1:
 JMP NUMONLY
 
CONTINUE1:

;PROMT NAME
MOV AH,09H
LEA DX,OCNAME
INT 21H
;INPUT NAME
MOV CX,15
MOV SI,0
GETNAME1:
 MOV AH,01H		
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP2
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP2
 MOV NAME1[SI],AL
 INC SI
 LOOP GETNAME1
OUTLOOP2:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;DETAILS CONFIRMATION
MOV AH,09H
LEA DX,MEMDETAILS1
INT 21H
;OUTPUT PHONE NUMBER
MOV CX,11
MOV SI,0
PRINTNUM1:
 MOV AH,02H
 MOV DL,PHONENUM1[SI]
 INT 21H
 INC SI
 LOOP PRINTNUM1

MOV AH,09H
LEA DX,MEMDETAILS2
INT 21H
;PRINT NAME
MOV CX,15
MOV SI,0
PRINTNAME1:
MOV AH,02H
MOV DL,NAME1[SI]
INT 21H
INC SI
LOOP PRINTNAME1
JMP CONFIRMMEM

MEMBER2:
;INITIALIZE PHONE NUMBER ARRAY
MOV CX,11
MOV SI,0
INIPNUM2:
 MOV PHONENUM2[SI],0
 INC SI
 LOOP INIPNUM2
;INITIALIZE NAME ARRAY
MOV CX,15
MOV SI,0
ININAME2:
 MOV NAME2[SI],0
 INC SI
 LOOP ININAME2
 
;PROMPT PHONE NUMBER
MOV AH,09H
LEA DX,OCPNUM
INT 21H
;INPUT PHONE NUMBER
MOV CX,11
MOV SI,0
GETNUM2:
 MOV AH,01H
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP3
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP3
 MOV PHONENUM2[SI],AL
 INC SI
 LOOP GETNUM2
OUTLOOP3:

;VALIDATE INPUT OF PHONE NUMBER IS NUMERIC DIGIT
MOV CX,11
MOV SI,0
VALIDNUM2:
 CMP PHONENUM2[SI],30H
 JB TEMPNUMONLY2
 CMP PHONENUM2[SI],39H
 JA TEMPNUMONLY2
 INC SI
 LOOP VALIDNUM2
JMP CONTINUE2
 
TEMPNUMONLY2:
 JMP NUMONLY
 
CONTINUE2:

;PROMT NAME
MOV AH,09H
LEA DX,OCNAME
INT 21H
;INPUT NAME
MOV CX,15
MOV SI,0
GETNAME2:
 MOV AH,01H
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP4
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP4
 MOV NAME2[SI],AL
 INC SI
 LOOP GETNAME2
OUTLOOP4:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;DETAILS CONFIRMATION
MOV AH,09H
LEA DX,MEMDETAILS1
INT 21H
;OUTPUT PHONE NUMBER
MOV CX,11
MOV SI,0
PRINTNUM2:
 MOV AH,02H
 MOV DL,PHONENUM2[SI]
 INT 21H
 INC SI
 LOOP PRINTNUM2
 MOV AH,09H
 LEA DX,MEMDETAILS2
 INT 21H
;PRINT NAME
MOV CX,15
MOV SI,0
PRINTNAME2:
 MOV AH,02H
 MOV DL,NAME2[SI]
 INT 21H
 INC SI
 LOOP PRINTNAME2
 JMP CONFIRMMEM

MEMBER3:
;INITIALIZE PHONE NUMBER ARRAY
MOV CX,11
MOV SI,0
INIPNUM3:
 MOV PHONENUM3[SI],0
 INC SI
 LOOP INIPNUM3
;INITIALIZE NAME ARRAY
MOV CX,15
MOV SI,0
ININAME3:
 MOV NAME3[SI],0
 INC SI
 LOOP ININAME3
 
;PROMPT PHONE NUMBER
MOV AH,09H
LEA DX,OCPNUM
INT 21H
;INPUT PHONE NUMBER
MOV CX,11
MOV SI,0
GETNUM3:
 MOV AH,01H
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP5
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP5
 MOV PHONENUM3[SI],AL
 INC SI
 LOOP GETNUM3
OUTLOOP5:
 
 ;VALIDATE INPUT OF PHONE NUMBER IS NUMERIC DIGIT
MOV CX,11
MOV SI,0
VALIDNUM3:
 CMP PHONENUM3[SI],30H
 JB TEMPNUMONLY3
 CMP PHONENUM3[SI],39H
 JA TEMPNUMONLY3
 INC SI
 LOOP VALIDNUM3
JMP CONTINUE3
 
TEMPNUMONLY3:
 JMP NUMONLY
 
CONTINUE3:

;PROMT NAME
MOV AH,09H
LEA DX,OCNAME
INT 21H
;INPUT NAME
MOV CX,15
MOV SI,0
GETNAME3:
 MOV AH,01H
 INT 21H
 CMP AL, 0DH    ; Check for carriage return
 JE OUTLOOP6
 CMP AL, 0AH    ; Check for line feed
 JE OUTLOOP6
 MOV NAME3[SI],AL
 INC SI
 LOOP GETNAME3
OUTLOOP6:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
;DETAILS CONFIRMATION
MOV AH,09H
LEA DX,MEMDETAILS1
INT 21H
;OUTPUT PHONE NUMBER
MOV CX,11
MOV SI,0
PRINTNUM3:
 MOV AH,02H
 MOV DL,PHONENUM3[SI]
 INT 21H
 INC SI
 LOOP PRINTNUM3
 
MOV AH,09H
LEA DX,MEMDETAILS2
INT 21H
;PRINT NAME
MOV CX,15
MOV SI,0
PRINTNAME3:
MOV AH,02H
MOV DL,NAME3[SI]
INT 21H
INC SI
LOOP PRINTNAME3
JMP CONFIRMMEM

NUMONLY:
 MOV AH,09H
 LEA DX,NUMONLYMSG
 INT 21H
 
 MOV AH,01H
 INT 21H
 JMP MEMREG

STOPMEMBER:
 MOV AH,09H
 LEA DX,MEMLIMIT
 INT 21H
 MOV AH,01H
 INT 21H
 JMP MENU
 
CONFIRMMEM:
 MOV AH,09H
 LEA DX,DETAILSCON
 INT 21H
 
 MOV AH,01H
 INT 21H
 
 MOV DETAILSCONS,AL
 
 CMP DETAILSCONS,'Y'
 JE BUYMEMBER
 CMP DETAILSCONS,'y'
 JE BUYMEMBER
 CMP DETAILSCONS,'N'
 JE TEMPMEMREG1
 CMP DETAILSCONS,'n'
 JE TEMPMEMREG1
 
 TEMPMEMREG1:
  JMP MEMREG

BUYMEMBER: 
 MOV AH,09H
 LEA DX,BUYMEM
 INT 21H
 
 MOV AH,01H
 INT 21H
 
 MOV BUYMEMS,AL
 
 CMP BUYMEMS,'Y'
 JE PAYMENT
 CMP BUYMEMS,'y'
 JE PAYMENT
 CMP BUYMEMS,'N'
 JE TEMPMENU3
 CMP BUYMEMS,'n'
 JE TEMPMENU3

 TEMPMENU3:
  JMP MENU
  
PAYMENT:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
 MOV AH,09H
 LEA DX,CHCKOUTMENU
 INT 21H
 
 MOV AH,01H
 INT 21H
 
 MOV PAYOPT,AL
 
 CMP PAYOPT,'1'
 JE CASH
 CMP PAYOPT,'2'
 JE EWALLET
 CMP PAYOPT,'3'
 JE TEMPMENU4
 
 TEMPMENU4:
  JMP MENU
  
 CASH:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,CASHMENU
  INT 21H
  
  MOV AH,01H
  INT 21H
 
  MOV CASHOPT,AL
 
  CMP CASHOPT,'1'
  JE MEMRECEIPT
  CMP CASHOPT,'2'
  JE PAYMENT
  
 EWALLET:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
  MOV AH,09H
  LEA DX,EWALLMENU
  INT 21H
  
  MOV AH,01H
  INT 21H
 
  MOV EWLLTOPT1,AL
 
  CMP EWLLTOPT1,'1'
  JE EPAYCON
  CMP EWLLTOPT1,'2'
  JE EPAYCON
  CMP EWLLTOPT1,'3'
  JE TEMPPAYMENT
  
  TEMPPAYMENT:
   JMP PAYMENT
  
  EPAYCON:
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
   MOV AH,09H
   LEA DX,EWALLCON
   INT 21H
   
   MOV AH,01H
   INT 21H
 
   MOV EWLLTOPT2,AL
 
   CMP EWLLTOPT2,'1'
   JE MEMRECEIPT
   CMP EWLLTOPT2,'2'
   JE EWALLET
   


MEMRECEIPT:  
ADD COUNTER,1
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
MOV AH,09H
LEA DX,RCPTSTART
INT 21H
MOV AH,09H
LEA DX,RECEIPTHEADER
INT 21H
MOV AH,09H
LEA DX,RECEIPTTITLE
INT 21H
MOV AH,09H
LEA DX,MEMREGRCPT
INT 21H
MOV AH,09H
LEA DX,RECEIPTFOOTER
INT 21H
MOV AH,09H
LEA DX,RCPTEND
INT 21H
MOV AH,01H
INT 21H

JMP MENU

;======================================================
;GENERATE REPORT
;======================================================

REPORT:

;*****************************************
;SUM UP ACTUAL QUANTITY SOLD
;*****************************************
;-------------------------------------------------
MOV AX,MI1Q
ADD ITEMTTLQ,AX
MOV AX,MI2Q
ADD ITEMTTLQ,AX
MOV AX,MI3Q
ADD ITEMTTLQ,AX
MOV AX,MI4Q
ADD ITEMTTLQ,AX
MOV AX,MI5Q
ADD ITEMTTLQ,AX
MOV AX,MI6Q
ADD ITEMTTLQ,AX
MOV AX,WI1Q
ADD ITEMTTLQ,AX
MOV AX,WI2Q
ADD ITEMTTLQ,AX
MOV AX,WI3Q
ADD ITEMTTLQ,AX
MOV AX,WI4Q
ADD ITEMTTLQ,AX
MOV AX,WI5Q
ADD ITEMTTLQ,AX
MOV AX,WI6Q
ADD ITEMTTLQ,AX
MOV AX,KI1Q
ADD ITEMTTLQ,AX
MOV AX,KI2Q
ADD ITEMTTLQ,AX
MOV AX,KI3Q
ADD ITEMTTLQ,AX
MOV AX,KI4Q
ADD ITEMTTLQ,AX
;-------------------------------------------------
;##########################################		;clear screen
MOV AX,0600H
MOV CX,0000H
MOV DX,2580H
INT 10H
;##########################################
 MOV AH, 09H
 LEA DX, LAYOUT1
 INT 21H

 MOV AH, 09H
 LEA DX, REPORTMSG
 INT 21H

 MOV AH, 09H
 LEA DX, LAYOUT3
 INT 21H

 MOV AH, 09H 
 LEA DX, ITEMSOLDMSG
 INT 21H
;-------------------------------------------------DISPLAY MEN T-SHIRT SOLD
 MOV AH, 09H
 LEA DX, LFTSHIRTMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, RFTSHIRTMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY MEN TROUSERS SOLD
 MOV AH, 09H
 LEA DX, SFJOGGERMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, LFCTMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY MEN SHORTS SOLD
 MOV AH, 09H
 LEA DX, RFCSHORTMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI5Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, RFSHORTMSG
 INT 21H

 XOR DX, DX
 MOV AX, MI6Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY WOMEN DRESS SOLD
 MOV AH, 09H
 LEA DX, LSDRESSMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, CDRESSMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY WOMEN BLOUSE SOLD
 MOV AH, 09H
 LEA DX, VNBLOUSEMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, CSBLOUSEMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY WOMEN SKIRT SOLD
 MOV AH, 09H
 LEA DX, PSKIRTMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI5Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, CSKIRTMSG
 INT 21H

 XOR DX, DX
 MOV AX, WI6Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY KIDS CLOTHES SOLD
 MOV AH, 09H
 LEA DX, PTSHIRTMSG
 INT 21H

 XOR DX, DX
 MOV AX, KI1Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, JPYJAMASMSG
 INT 21H

 XOR DX, DX
 MOV AX, KI2Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY KIDS ACCESSORIES SOLD
 MOV AH, 09H
 LEA DX, IBACKPACKMSG
 INT 21H

 XOR DX, DX
 MOV AX, KI3Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, PCAPMSG
 INT 21H

 XOR DX, DX
 MOV AX, KI4Q
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
 
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H
;-------------------------------------------------DISPLAY TOTAL
 MOV AH, 09H
 LEA DX, LAYOUT2
 INT 21H

 MOV AH, 09H
 LEA DX, TOTALITEMSOLDMSG		;TOTAL ITEM SOLD
 INT 21H

;TOTAL ITEM SOLD 
 XOR DX, DX
 MOV AX, ITEMTTLQ
 DIV TEN          
 MOV Q, AX       
 MOV R, DX
 
 ADD Q,30H
 ADD R,30H
 
 MOV AX,Q
 MOV AH, 02H
 MOV DL, AL
 INT 21H
  
 MOV AX,R
 MOV AH, 02H
 MOV DL, AL
 INT 21H

 MOV AH, 09H
 LEA DX, TOTALAMTMSG			;TOTAL AMOUNT(RM)
 INT 21H

;TOTAL SALES 
 XOR DX, DX
 MOV AX, TTLSALES2
 DIV TEN          
 MOV Q, AX       
 MOV N9, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N8, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N6, AX       
 MOV N7, DX
	
 XOR DX, DX
 MOV AX, TTLSALES1
 DIV TEN          
 MOV Q, AX       
 MOV N5, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N4, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV Q, AX       
 MOV N3, DX
	
 XOR DX, DX
 MOV AX, Q
 DIV TEN          
 MOV N1, AX       
 MOV N2, DX
	
; Convert digits to ASCII
ADD N1, 30H
ADD N2, 30H
ADD N3, 30H
ADD N4, 30H
ADD N5, 30H
ADD N6, 30H
ADD N7, 30H
ADD N8, 30H
ADD N9, 30H

;AVOID MEANINGLESS '0'
CMP N1,30H
JNE TDIGIT9
CMP N2,30H
JNE TDIGIT8
CMP N3,30H
JNE TDIGIT7
CMP N4,30H
JNE TDIGIT6
CMP N5,30H
JNE TDIGIT5
CMP N6,30H
JNE TDIGIT4
CMP N7,30H
JE TDIGIT3

; Output each digit separately	
TDIGIT9:
  MOV AX,N1
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
TDIGIT8:
  MOV AX,N2
  MOV AH, 02H
  MOV DL, AL
  INT 21H

TDIGIT7:
  MOV AX,N3
  MOV AH, 02H
  MOV DL, AL
  INT 21H

TDIGIT6:
  MOV AX,N4
  MOV AH, 02H
  MOV DL, AL
  INT 21H

TDIGIT5:
  MOV AX,N5
  MOV AH, 02H
  MOV DL, AL
  INT 21H

TDIGIT4:	
  MOV AX,N6
  MOV AH, 02H
  MOV DL, AL
  INT 21H

TDIGIT3:	
  MOV AX,N7
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AH, 02H
  MOV DL,'.'
  INT 21H
	
  MOV AX,N8
  MOV AH, 02H
  MOV DL, AL
  INT 21H
	
  MOV AX,N9
  MOV AH, 02H
  MOV DL, AL
  INT 21H
 
 MOV AH, 09H
 LEA DX, LAYOUT1
 INT 21H
 
 MOV AH, 09H
 LEA DX, BTMENU
 INT 21H
 
 MOV AH, 01H
 INT 21H
 
 JMP MENU
 
EXIT:

MOV AH, 4CH
INT 21H
MAIN ENDP
END MAIN
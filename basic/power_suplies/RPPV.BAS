10 REM KEY 3, "GOTO10" + CHR$(10)
20 CLS
30 PRINT
40 PRINT " "
50 PRINT
60 PRINT " :"
70 PRINT
80 PRINT " :"
90 PRINT "O...1"
100 PRINT "...2"
110 PRINT "............3"
120 PRINT " .........4"
130 INPUT " ........5      "; T%
140 IF T% < 1 OR T% > 5 THEN 20
150 ON T% GOTO 170, 230, 290, 350, 1300
160 GOTO 20
170 M! = 1
180 KR! = 2.3
190 K1! = 1
200 K2! = 1
210 K3! = 1
220 GOTO 410
230 M! = 2
240 KR! = 4.7
250 K1! = 1
260 K2! = 1
270 K3! = .5
280 GOTO 410
290 M! = 2
300 KR! = 3.5
310 K1! = 2
320 K2! = 1
330 K3! = 1 / SQR(2)
340 GOTO 410
350 M! = 1
360 KR! = .9
370 K1! = 1
380 K2! = .5
390 K3! = SQR(2)
400 GOTO 410
410 INPUT " , "; E0!
420 IF E0! <= 0 THEN 410
430 INPUT " , "; I0!
440 IF I0! <= 0 THEN 430
450 INPUT " (-1,-2,-3)"; S!
460 IF S! < 1 OR S! > 3 THEN 450
470 IF S! = 3 THEN S! = 1
480 INPUT " ,% "; KP!
490 IF KP! < 1 THEN 480
500 KP! = KP! / 100
510 INPUT ","; F!
520 IF F! <= 0 THEN 510
530 INPUT "MAX   ,T "; BM!
540 IF BM! < 0 THEN 530
550 RT! = KR! * E0! * ((S! * F! * BM! / (E0! * I0!)) ^ .25) / (I0! * F! * BM!)
560 RI! = .7 * M! / (3 * I0!)
570 R! = RT! + K1! * RI!
580 A0! = I0! * R! / (M! * E0!)
585 A0! = A0! * 3.14159
590 O1! = 32
600 OD! = 32
610 O! = O1! * 3.14159 / 180
620 A! = TAN(O!) - O!
630 LET DA! = (A! - A0!) / A0!
640 S! = SGN(DA!)
650 AD! = ABS(DA!)
660 IF AD! <= .01 THEN 700
670 OD! = .5 * OD!
680 O1! = O1! - S! * OD!
690 GOTO 610
700 KO! = SIN(O!) - O! * COS(O!)
710 LET FO! = 3.14159 * (1 - COS(O!)) / KO!
720 BO! = 1 / SQR(2) / COS(O!)
730 DO1! = SQR(3.14159 * (O! * (1 + COS(2 * O!) / 2) - 3 * SIN(2 * O!) / 4)) / KO!
740 U2! = E0! * BO! * K2!
750 IM! = I0! * FO! / M!
760 IV! = I0! * DO1! / M!
770 IS1! = I0! / M!
780 I2! = I0! * DO1! * K3!
790 C! = (1 / M! + O! / 3.14159) * I0! / (2 * M! * KP! * F! * E0!) * 1000000!
800 CLS
810 VV% = 0
820 INPUT "ซ๏ ข๋ขฎค  ญ  ฏเจญโฅเ ญ กฅเจโฅ [1]"; VV%
830 PRINT " :"
840 PRINT
850 PRINT "Uขๅ=";
860 IF T% = 2 THEN PRINT "2*";
870 PRINT U2!; ""
880 IF VV% = 1 THEN LPRINT "Uin=";  ELSE 910
890 IF T% = 2 THEN LPRINT "2*";
900 LPRINT U2!; "V"
910 PRINT "Iขๅ="; I2!; "A"
920 IF VV% = 1 THEN LPRINT "Iin="; I2!; "A"
930 PRINT "Id_max="; IM!; "A"
940 IF VV% = 1 THEN LPRINT "Id_max="; IM!; "A"
950 PRINT "Id_cp ="; IS1!; "A"
960 IF VV% = 1 THEN LPRINT "Id_cp ="; IS1!; "A"
970 PRINT "Id_ํไไ="; IV!; "A"
980 IF VV% = 1 THEN LPRINT "Id_aff="; IV!; "A"
990 PRINT "C="; C!; "ฌช"
1000 IF VV% = 1 THEN LPRINT "C="; C!; "mkF"
1010 PRINT
1020 IF VV% = 1 THEN LPRINT
1030 PRINT "  "
1040 PRINT "(   0.1  1.5 I . I<0-๋ๅฎค)"
1050 PRINT
1060 INPUT " ,"; I!
1070 IF I! >= 0 THEN 1090 ELSE CLS
1080 END
1090 IF (I! > (1.5 * I0!) OR I! < (.1 * I0!)) AND I! <> 0 THEN 1060
1100 D3! = 32
1110 UM! = U2! * SQR(2) / K2!
1120 IF I! > 0 THEN 1160
1130 O2! = 0
1140 O3! = 0
1150 GOTO 1260
1160 A1! = 3.14159 * I! * R! / M! / E0!
1170 O3! = O2! * 3.14159 / 180
1180 A2! = TAN(O3!) - O3!
1190 D2! = (A2! - A1!) / A1!
1200 S2! = SGN(D2!)
1210 D4! = ABS(D2!)
1220 IF D4! <= .01 THEN 1260
1230 D3! = .5 * D3!
1240 O2! = O2! - S2! * D3!
1250 GOTO 1170
1260 U3! = UM! * COS(O3!)
1270 PRINT ""; U3!; "B"
1280 IF VV% = 1 THEN LPRINT "I="; I!; "A"; TAB(20); "U="; U3!; "V"
1290 GOTO 1060
1300 CLS
1310 PRINT "     - ณณ +        - ณณ +"
1320 PRINT " 0ฤฤฤฤฤดรฤฤฤฤฤ ฤฤฤฤฤฤดรฤฤฤฤฤฤ ฤฤฤฤฤฤฤฤฤฤ>"
1330 PRINT "    C1 ณณ     ณ   C3 ณณ      ณ"
1340 PRINT "              ณ              ณ"
1350 PRINT "     ณ\ ณ     ณ ณ\ ณ    ณ\ ณ ณ ณ\ ณ"
1360 PRINT "   ฺฤลฤ>ลฤฤฤฤฤ ฤลฤ>ลฤ ฤฤลฤ>ลฤ ฤลฤ>ลฤฟ"
1370 PRINT "   ณ ณ/ ณ       ณ/ ณ ณ  ณ/ ณ   ณ/ ณ ณ"
1380 PRINT "   ณ                 ณ              ณ"
1390 PRINT "   ณ      - ณณ +     ณ    - ณณ +    ณ"
1400 PRINT " 0ฤ ฤฤฤฤฤฤฤฤดรฤฤฤฤฤฤฤ ฤฤฤฤฤฤดรฤฤฤฤฤฤ ฤฤฤ>"
1410 PRINT "    u    C2 ณณ           C4 ณณ"
1420 PRINT
1430 PRINT "   ณ<ฤฤฤฤฤฤ K ฤฤฤฤฤฤ>ณ<ฤฤฤฤ K ฤฤฤฤฤ>ณ"
1440 INPUT " , "; U0!
1450 INPUT " ,ฌ       "; I0!
1460 INPUT "H ,%   "; KP!
1470 INPUT "  (K)    "; K!
1480 U2! = .85 * U0! / K!
1490 UO! = 2.8 * U2!
1500 IO! = 5 * I0!
1510 C! = 200 * I0! * (K! + 2) / U2! / KP!
1520 CLS
1530 VV% = 0
1540 INPUT "ซ๏ ข๋ขฎค  ญ  ฏเจญโฅเ ญ กฅเจโฅ [1]"; VV%
1550 PRINT "Uขๅ="; U2!; "B"
1560 IF VV% = 1 THEN LPRINT "Uin="; U2!; "V"
1570 PRINT "Uฎกเ="; UO!; "B"
1580 IF VV% = 1 THEN LPRINT "Ud_obr="; UO!; "V"
1590 PRINT "Ioกเ="; IO!; "mA"
1600 IF VV% = 1 THEN LPRINT "Id_obr="; IO!; "mA"
1610 PRINT "C="; C!; "ฌช"
1620 IF VV% = 1 THEN LPRINT "C="; C!; "mkF"
1630 PRINT "U ญ  1"; CSNG(U0! / K!); "B"
1640 IF VV% = 1 THEN LPRINT "U(C1)="; CSNG(U0! / K!); "V"
1650 PRINT "U ญ  2"; CSNG(2 * U0! / K!); "B"
1660 IF VV% = 1 THEN LPRINT "U(C2)="; CSNG(2 * U0! / K!); "V"
1670 END


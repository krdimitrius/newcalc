10 CLS
20 PRINT "  "
30 PRINT
100 PRINT "  :"
110 NO% = 1
120 INPUT "  "; NO%
130 DIM UO!(NO%), IO!(NO%), WO!(NO%), DU!(NO%), DI!(NO%), NS%(NO%)
140 FOR I% = 1 TO NO%
150 PRINT "U("; I%; "),B  I("; I%; "),A";
160 INPUT UO!(I%), IO!(I%)
170 NEXT I%
180 FS! = 50
190 INPUT " ,"; FS!
200 INPUT " ,"; UO!(0)
300 PN! = 0
310 FOR I% = 1 TO NO%
320 PN! = PN! + IO!(I%) * UO!(I%)
330 NEXT I%
340 IO!(0) = 1.1 * PN! / UO!(0)
500 CLS
510 PRINT " ."
520 PRINT " "; PN!; "BT."
530 PRINT " KO";
531 GOSUB 4010
532 TM% = II% + 1
540 INPUT "  ,"; BM!
550 INPUT "   ,A/MM^2"; JJ!
560 INPUT "KO  OKHA"; KO!
570 INPUT "KO  "; KM!
580 SS! = 45 * PN! / FS! / BM! / JJ! / KO! / KM!
590 PRINT "S¬S®ª_min="; SS!; "CM^4"
600 IF TM% = 1 THEN 700
610 INPUT " ,"; BO!
620 INPUT " ,"; HO!
630 INPUT " ,"; Y0!
640 Y1! = SS! / BO! / HO! / Y0! * 1.01
650 PRINT "  "; Y1!; "CM"
660 INPUT " ,"; Y1!
670 IF Y1! * Y0! * BO! * HO! < SS! THEN PRINT "  "
680 SM! = Y0! * Y1!
690 GOTO 800
700 INPUT " ,"; DN!
710 INPUT " ,"; DV!
720 BO! = 3 * SS! / DV! / DV! / (DN! - DV!) * 1.01
730 PRINT " "; BO!; "CM"
740 INPUT ","; BO!
750 IF DV! * DV! * BO! * (DN! - DV!) < 3 * SS! THEN PRINT "  "
760 SM! = BO! * .5 * (DN! - DV!)
800 GOSUB 4000
810 IF II% THEN 500
820 CLS
830 PRINT "  :"
840 PRINT "O", ",", "():, "
850 FOR I% = 0 TO NO%
870 DU!(I%) = 1.13 * SQR(IO!(I%) / JJ!)
880 PRINT I%, DU!(I%),
890 INPUT DU!(I%), DI!(I%)
900 NEXT I%
910 CLS
920 PRINT "", " "
930 FOR I% = 0 TO NO%
940 WO!(I%) = 2200 * UO!(I%) / FS! / BM! / SM!
950 PRINT I%, WO!(I%),
960 INPUT WO!(I%)
970 NEXT I%
1000 CLS
1010 PRINT " :"
1020 INPUT " ,"; D1!
1030 INPUT "   ,"; D2!
1040 INPUT "   ,"; D3!
1050 D0! = D1!
1060 IF TM% = 1 THEN 1200
1100 FOR I% = 0 TO NO%
1110 WS!(I%) = (HO! * 10 - 2 * (D1! + 1)) / 1.3 / DI!(I%)
1120 NS%(I%) = 1 + INT(WO!(I%) / WS!(I%))
1130 D0! = D0! + NS%(I%) * (DI!(I%) + D2!) + D3!
1140 NEXT I%
1150 IF BO! < D0! * .1 THEN PRINT "  "
1160 PRINT " "; CSNG(D0! * .1); "CM"
1170 PRINT " "; BO!; "CM"
1180 GOTO 1500
1200 REM
1500 GOSUB 4000
1510 IF II% THEN 500
1520 CLS
1530 PRINT " :"
1540 PRINT " ";
1550 GOSUB 4010
1560 PRINT " "; PN!; "BT"
1570 IF II% = 0 THEN LPRINT "Pnom="; PN!; "BT"
1580 PRINT "N"; TAB(4); "U,B"; TAB(16); "I,A"; TAB(28); "W"; TAB(40); "D,MM"
1590 IF II% = 0 THEN LPRINT "N"; TAB(4); "U,B"; TAB(16); "I,A"; TAB(28); "W"; TAB(40); "D,MM"
1600 FOR I% = 0 TO NO%
1610 PRINT I%; TAB(4); UO!(I%); TAB(16); IO!(I%); TAB(28); WO!(I%); TAB(40); DU!(I%); "/"; DI!(I%)
1620 IF II% = 0 THEN LPRINT I%; TAB(4); UO!(I%); TAB(16); IO!(I%); TAB(28); WO!(I%); TAB(40); DU!(I%); "/"; DI!(I%)
1630 NEXT I%
1640 IF TM% = 1 THEN 1670
1650 PRINT " "; D0!; "MM"
1660 IF II% = 0 THEN LPRINT "H_KAT,MM"; D0!
1670 IF II% <> 0 THEN 1730
1680 LPRINT "Size:";
1690 IF TM% = 1 THEN 1720
1700 LPRINT CSNG(Y0! * 10); "*"; CSNG(Y1! * 10); "-"; CSNG(BO! * 10); "*"; CSNG(HO! * 10)
1710 GOTO 1730
1720 LPRINT CSNG(DV! * 10); "/"; CSNG(DN! * 10); "-"; CSNG(BO! * 10)
1730 II% = 0
1740 INPUT "[1]- [2]- "; II%
1750 ON II% GOTO 1520, 500
1760 CLS
1770 END
4000 PRINT " ";
4010 PRINT " (Y/N)?";
4020 K$ = INKEY$
4030 IF K$ = "" THEN 4020
4040 PRINT K$
4050 IF K$ = "N" OR K$ = "n" THEN II% = 1 ELSE II% = 0
4060 RETURN


10 PRINT CHRe(31)
20 PRINT"*** АНАЛИЗ ЛИНЕЙНОЙ ЭЛЕКТРИЧЕСКОЙ ЦЕПИ***"
30 PRINT TAB(19);"*ASD* V2.PK":PRINT
40 GOTO 6000
1000 IF ABS(VR)>ABS(VI) GOTO 1050
1010 R=VR/VI:DE=VI+R*VR
1020 WR=(UR*R+UI)/DE
1030 WI=(UI*R-UR)/DE
1040 RETURN
1050 R=VI/VR:DE=VR+R*VI
1060 WR=(UR+UI*R)/DE
1070 WI=(UI-UR*R)/DE
1080 RETURN
1500 IF CS=0 THEN AL=90*SGN(SN):RETURN
1510 AL=180/3.14159*ATN(SN/CS)
1520 IF CS<0 THEN AL=AL+180
1530 IF AL>180 THEN AL=AL-360
1540 RETURN
1600 W=F*6.28319
1610 FOR I=1 TO U
1620 YR(I,U+1)=0:YI(I,U+1)=0
1630 IF I=IP THEN YR(I,U+1)=1
1640 IF I=IM THEN YR(I,U+1)=-1
1650 FOR J=1 TO U
1660 Yr(I,J)=Yy(I,J)+TT(I,J)
1670 YI(I,J)=YC(I,J)*W-YL(I,J)/W
1680 NEXT
1690 NEXT
2000 N=0
2010 N=N+1:K=N
2025 IF YR(K,N)=0 AND YI(K,N)=0 THEN K=K+1:GOTO 2025
2060 IF K=N GOTO 2120
2070 J=U+1
2080 FOR M=N TO J
2090 TR=YR(N,M):YR(N,M)=YR(K,M):YR(K,M)=TR
2100 TI=YI(N,M):YI(N,M)=YICK,M):YICK,M)=TI
2110 NEXT M
2120 FOR J=U+1 TO N STEP -1
2140 IF ABS(YR(N,N))>ABS(YI(N,N)) GOTO 2180
2150 R=YR(N,N)/YI(N,N) :DE=YI(N,N)+R*YR(N,N)
2160 TR=(YR(N,J)*R*YI(N,J))/DE:TI=(YI(N,J)*R=YR(N,J))/DE
2170 GOTO 2200
2180 R=YI(N,N)/YRCN,N):DE=YR(N,N)+R*YI(N,N)
2190 TR=(YR(N,J)+YI(N,J)*R)/DE:TI=(YI(N,J)-YR(N,J)*R)/DE
2200 YR(N,J)=TR:YI(N,J)=TI
2210 NEXT J
2220 M=U+1
2230 fOR I=K+1 TO U
2235 IF N+1=M GOTO 2290
2240 FOR J=N+1 TO M
2250 TR=YR(1,J)-YR(I,N)*YR(N,J)+YI(I,N)*YI(N,J)
2260 YI(I,J)=YI(I,J)-YI(I,N)*YR(N,J)-YR(I,N)*YI(N,J)
2270 YR(I,J)=TR
2280 NEXT J
2290 NEXT I
2300 IF N<>U GOTO 2010
2310 FOR I=U TO 1 STEP -1
2320 AR(I)=YR(1,M)
2330 AI(I)=YI(I,M)
2340 FOR K=1-1 TO 1 STEP -1
2350 TR=YR(K,M)-YR(K,I)*AR(I)+YI(K,I)*AI(I)
2360 YI(K,M)=YI(K,M)-YR(K,I)*AI(I)-YI(K,I)*AR(I)
2370 YR(K,M)=TR
2380 NEXT K
2390 NEXT I
2400 RETURN
3000 UR=AR(OP)-AR(OM):UI=AI(OP)-AI(OM)
3010 VR=AR(IP)-AR(IM):VI=AI(IP)-AI(IM)
3020 GOSUB 1000
3030 K=SQR(WR*WR+WI*WI)
3040 KL=INT(868.6*LOG(K+1E-30)+.5)/100
3050 CS=WR:SN=WI:GOSUB 1500
3060 PH=INT(AL*10+.5)/10
3070 PRINT F,K,KL,PH
3080 RETURN
3500 Z=SQR((AR(IP)-AR(IM))^2+(AI(IP)-AI(IM))^2)
3510 CS=AR(IP)-AR(IM):SN=AI(IP)-AI(IM)
3520 GOSUB 1500
3530 PH=INT(AL*10+.5)/10
3540 PRINT F,Z,PH
3550 RETURN
4000 INPUT I
4010 IF I>=0 AND I<=U THEN RETURN
4020 PRINT"??";:GOTO 4000
4500 PRINT"HАЧАЛО";:GOSUB 4000:E1=1
4510 PRINT"KOНEЧ ";:GOSUB 4000:E2=1
4520 PRINT"3НАЧЕНИЕ (";UND;")";:INPUT ZN
4530 IF ZN<>O THEN RETURN
4540 IF E$<>"R" AND E$<>"L" THEN RETURN
4550 PRINT E$;"=0 НЕДОПУСТИМО"
4560 GOTO 4520
5000 PRINT"+";:GOSUB 4000:P=I
5010 PRINT"=";:GOSUB 4000:M=I
5020 RETURN
5500 Y=1/ZN
5510 YY(E1,E2)=YY(E1,E2)-Y:YY(E2,E1)=YY(E2,E1)-Y
5520 YY(E1,E1)=YY(E1,E1)+Y:YY(E2,E2)=YY(E2,E2)+Y
5530 RETURN
5600 Y=1/ZN*1E6
5610 YL(E1,E2)=YL(E1,E2)-Y:YL(E2,E1)=YL(E2,E1)-Y
5620 YL(E1,E1)=YL(E1,E1)+Y:YL(E2,E2)=YL(E2,E2)+Y
5630 RETURN
5700 Y=ZN*1E-12
5710 YC(E1,E2)=YC(E1,E2)-Y:YC(E2,E1)=YC(E2,E1)-Y
5720 YC(E1,E1)=YC(E1,E1)+Y:YC(E2,E2)=YC(E2,E2)+Y
5730 RETURN
5800 PRINT"ИЗ КАКОГО УЗЛА ВЫТЕКАЕТ ТОК";:GOSUB 4000:SS=I
5810 PRINT"B КАКОЙ УЗЕЛ ВТЕКАЕТ ТОК";:GOSUB 4000:DD=I
5815 PRINT"TОК УПРАВЛЯЕТСЯ НАПРЯЖЕНИЕМ МЕЖДУ УЗЛАМИ:"
5820 GOSUB 5000: CP=P:CM=M
5830 INPUT"КРУТИЗНА (A/B)";Y
5840 TT(DD,CP)=TT(DD,CP)-Y:TT(SS,CM)=TT(SS,CM)-Y
5850 TT(DD,CM)=TT(DD,CM)+Y:TT(SS,CP)=TT(SS,CP)+Y
5860 RETURN
5900 M=0:FOR I=LEN(CB) TO 1 STEP -1
5910 IF MID$(C$,I,1)="/" THEN M=1
5920 NEXT
5930 RETURN
6000 CLEAR 100:UU=INT((SQR((FRE(1)-100)*3/8+1)-1)/3)- 1
6010 PRINT"АНАЛИЗИРУЕМАЯ ЦЕЛЬ МОЖЕТ СОДЕРЖАТЬЭЛЕМЕНТЫ"
6020 PRINT"R,L,C, ТАКЖЕ ЗАВИСИМЫЕ ИСТОЧНИКИ TОКА, УПРАВЛЯЕ-"
6030 PRINT"МЫЕ НАПРЯЖЕНИЕМ. ЧИСЛО УЗЛОВ ЦЕПИ НЕ БОЛЕЕEE";
6040 PRINT UU;CHR$(8)+", HE"
6050 PRINT"СЧИТАЯ ОБЩЕГО УЗЛА, ИМЕЮЩЕГО НОМЕР 0.":PRINT
6060 INPUT"ЧИСЛО УЗЛОВ";U:IF U<2 OR U>UU GOTO 6060
6070 DIM YY(U, U),TT(U, U),YL(U, U),YC(U, U)
6080 DIM YR(U, U+1),YI(U,U+1),AR(U),AI(U)
6090 PRINT: INPUT"ЭЛЕМЕНТ (R,L,C,I)";E$
6100 IF E$="R" THEN UN$="OM":GOSUB 4500:GOSUB 5500
6110 IF E$="L" THEN UN$="MKГH":GOSUB 4500:GOSUB 5600
6120 IF E$="C" THEN UN$="No":GOSUB 4500:GOSUB 5700
6130 IF E$="I" THEN GOSUB 5800
6140 IF E$<>"." GOTO 6090
6150 MD$="K"
6160 INPUT"КОМАНДА ";C$
6170 IF C$="." GOTO 6090
6175 C$=C$+" "
6180 L$=LEFT$(C$,1)
6190 IF L$<>"K" AND L$<>"Z" GOTO 6310
6200 MD$=L$:C$=RIGHT$(C$,LEN(C$)-1)
6210 PRINT"ВХОДНОЕ НАПРЯЖЕНИЕ ПОДАЕТСЯ МЕЖДУ УЗЛАМИ:"
6220 GOSUB 5000: IP=P: IM=M
6230 IF MD$="Z" GOTO 6290
6240 PRINT"ВЫХОДНОЕ НАПРЯЖЕНИЕ ИЗМЕРЯЕТСЯ МЕЖДУ УЗЛАМИ:"
6250 GOSUB 5000:OP=P:OM=M
6260 PRINT"ЧАСТОТА","КОЭФФИЦИЕНТ ПЕРЕДАЧИ","ФАЗА"
6270 PRINT"(ГЦ)"," (PA3)  (ДБ)" ,"(ГРАД.)"
6280 GOTO 6310
6290 PRINT"ЧАСТОТА","ВХОЛНОЕ СОПРОТИВЛЕНИЕ"
6300 PRINT"(ГЦ)","Модуль (СМ) ФАЗА (ГРАД.)"
6310 F$=C$:D$="0":P$="1"
6320 GOSUB 5900
6330 IF M=0 GOTO 6420
6340 F$=LEFT$(C$,M-1):D$=F$
6350 C$=RIGHT(C$,LEN(C$)-M)
6360 P$=C$
6370 GOSUB 5900
6380 IF M=0 GOTO 6420
6390 D$=LEFT$(C$,M-1)
6400 C$=RIGHT$(C$,LEN(C$)-M)
6410 P$=C$
6420 FO=VAL(F$):DF=VAL(D$):PT=VAL(P$)
6430 IF PT<=1 THEN PT=1.1
6440 FOR 11=1 TO PT
6450 F=F0+DF*(II-1)
6455 IF F=0 THEN F=1E-30
6460 GOSUB 1600
6470 IF MD$="K" THEN GOSUB 3000
6480 IF MD$="Z" THEN GOSUB 3500
6490 NEXT
6500 GOTO 6160
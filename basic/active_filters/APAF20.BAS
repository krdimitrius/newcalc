1 PRINT "  - "
2 PRINT " *-------------------------------------------------*"
3 PRINT " !        *-----------------*                      !"
4 PRINT " !        !          3   !                    !"
5 PRINT " !   R1   ! -----      !!   !                ----- !"
6 PRINT " *-!====!-*-!-  ! *----!!---*----------------!-  ! !"
7 PRINT " !          !   !-*    !!                    !   !-*-->"
8 PRINT " *-!====!-*-!+  ! !                        *-!+  !"
9 PRINT "     R2   ! !---! *-!====!-*---*-------*---* !---!"
10 PRINT "          -           R4   !   !       !"
11 PRINT "      R5 ! !               !   -       -"
12 PRINT "         ! !           C7 === ! ! R7  ! ! R8"
13 PRINT "          -                !  ! !     ! !"
14 PRINT "          !                !   -       -"
15 PRINT "          !                !   !       !"
16 PRINT " <--------*----------------*---*      ---"
30 INPUT "FP,QP,C "; F, Q, C
40 LET R0 = 1 / (2 * PI * F * C)
50 PRINT "       R0="; R0
60 INPUT " R9   R0 "; R9
65 LET C3 = C
70 LET C7 = C
75 LET R1 = R9
80 LET R2 = R9
85 LET R5 = R9
90 LET R7 = 2 * Q * R0
95 LET R8 = 2 * Q * R0
100 LET R4 = (R0 * R0) / R9
105 PRINT " :"
110 PRINT "R1="; R1, "R2="; R2, "R4="; R4, "R5="; R5, "R7="; R7, "R8="; R8, "C3="; C3, "C7="; C7
115 PRINT "   :"
120 PRINT "T(S)=(S^2+WP^2)/(S^2+(WP/Q)*S+WP^2)"
125 PRINT " áâŕŽŠŞ :Fp-R4,/T(Fp)/=0,Qp-R7,R8(¨âĽŕ â¨˘­Ž)"
130 END


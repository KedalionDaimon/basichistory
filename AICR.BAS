1 REM AICR.BAS under GNU Afferro General Public License v3 or later version.
2 REM see: https://sites.google.com/site/logicaltriangulation/home/katoptron
3 REM Copyright (C) 2016 Nino Ivanov kedalion.daimon(-at-)gmail.com
4 REM See <http://www.gnu.org/licenses/>.
5 REM H =@ FREE ARE E F K L M N O P Q
6 REM NO DIM IN TINY BASIC!
10 DIM H(4000)
20 A =3995
30 B =32767
31 V =32767
32 W =32767
33 X =32767
34 Y =32767
35 Z =32767
50 REM set up the general knowledge array:
60 FOR I =1 TO 4000
70 H(I) =B
80 NEXT I
100 REM SHIFT THE HISTORY AND GET NEXT INPUT :
110 V =W
120 W =X
130 X =Y
140 Y =Z
150 INPUT "HUMAN:  ", Z
151 IF Z=32767 THEN 610
161 B =32767
162 C =0
163 D =0
170 REM FIND THE ANSWER:
180 FOR I =1 TO A STEP 5
190 C =H(I +1) -W
200 D =D +ABS(C)
210 C =H(I +2) -X
220 D =D +ABS(C)
230 C =H(I +3) -Y
240 D =D +ABS(C)
250 C =H(I +4) -Z
260 D =D +ABS(C)
270 IF B>D THEN 290
271 C =0
272 D =0
280 GOTO 310
290 B =D
300 J =I
310 NEXT I
330 R =H(J +1)
340 S =H(J +2)
350 T =H(J +3)
360 U =H(J +4)
380 G =H(J +5)
400 REM PRINT V, W, X, Y, J
410 REM PRINT R, S, T, U, G
411 PRINT "SOUGHT: ", W, X, Y, Z
412 PRINT "KNOWN:  ", R, S, T, U
413 PRINT "SYSTEM: ", G
430 REM SHIFT THE MAIN ARRAY TO INCORPORATE NEW INPUT :
440 FOR I =1 TO A
450 H(I) =H(I +5)
460 NEXT I
480 H(A +1) =V
490 H(A +2) =W
500 H(A +3) =X
510 H(A +4) =Y
520 H(A +5) =Z
540 REM SHIFT THE HISTORY AND GET NEXT INPUT :
550 V =W
560 W =X
570 X =Y
580 Y =Z
590 Z =G
600 GOTO 110
610 STOP 

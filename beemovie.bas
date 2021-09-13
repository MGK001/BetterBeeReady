300 rem Moving the bee.
310 rem Calculate the position of the bee
320 if bp<hv or bp>hv+sz then print "error": return
330 let rw = int((bp-hv)/22)
340 let cl = bp-(hv+(rw*22))
350 return
360 rem Bee sniff
370 for i=0 to 7
380 let sd(i)=0
390 if rw=0 and cl=0 and i=2 then sd(i)=cd(i)
400 if rw=0 and (cl>0 and cl<21) and (i>=2 and i<=6) then sd(i)=cd(i)
410 if (rw=0 and cl=21) and (i>=4 and i<=6) then sd(i)=cd(i)
420 if (rw>0 and rw<22) and cl=0 and (i>=0 and i<=4) then sd(i)=cd(i)
430 if (rw>0 and rw<22) and cl=21 and (i=0 or (i>=4 and i<=7)) then sd(i)=cd(i)
440 if (rw=22 and cl=0) and (i>=0 and i<=2) then sd(i)=cd(i)
450 if(rw=22 and(cl>0 and cl<21))and((i>=0 or i<=2)or(i=6 or i=7))thensd(i)=cd(i)
460 if (rw=22 and cl=21) and (i=0 or i=6 or i=7) then sd(i)=cd(i)
470 if (rw>0 and rw<22) and (cl>0 and cl<21) then sd(i)=cd(i)
480 next i
490 for i=0 to 7
500 if sd(i)<>0 then let pv=peek(bp+sd(i))
510 if pv=fi then let bp = bp+sd(i)
520 next i
522 if bp<>lp then return
524 rem no flower so random move
525 if bp=lp then rd=int(rnd(0)*7)+1 : if sd(rd)=0 then goto 525
530 let bp=bp+sd(rd):return
540 rem Load compass directions
550 for i=0 to 7:read cd(i):next
580 data -22,-21,1,23,22,21,-1,-23
590 return
600 rem Draw Bee.
605 if bp=hv then goto 630
610 poke lp,32
620 poke bp,bi
625 poke ch+(bp-hv),bc
630 let lp=bp
640 return
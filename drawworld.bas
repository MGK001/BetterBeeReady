1000 rem Draw the hive
1010 if hv=0 or ch=0 or bh=0 or hc=0 then print "error" : return
1020 poke hv,bh
1030 poke ch,hc
1040 return
1050 rem Draw the flowers
1060 if hv=0 or ch=0 or bh=0 or hc=0 then print "error" : return
1070 let nf = int(rnd(0)*10)+1
1080 if nf < 5 then goto 1070
1090 for ro = 1 to nf
1100 let fp = int(rnd(0)*sz)+1
1110 poke hv+fp,fi
1120 poke ch+fp,fc
1130 next ro
1135 poke hv+1,bi
1138 poke ch+1,bc
1140 return

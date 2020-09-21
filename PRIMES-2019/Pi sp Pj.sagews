︠6e8e0041-1fac-43d0-9084-81963d396475︠
'''
Looking at chains of K4. I do not think this generalizes to other Kn's as K_4 will have all of its vertices being overlapped each time. And the chains of K4 are really just strong products of path graphs.
So we're looking at strong products of path graphs.
Limiting to i <= j <= 100
Running on Linux box, is incomplete but has finished i=11.
The only flagged cases are P2 sp P2, which is K4, as well as P2 sp P(1 mod 3).
'''
for i in range (2, 101):
    for j in range (i,101):
        p = False
        q = True
        g = graphs.PathGraph(i).strong_product(graphs.PathGraph(j))
        for k in range (0, (i+1)/2):
            if q:
                for l in range (0, (j+1)/2):
                    if q:
                        S = Sandpile(g,(k, l))
                        if S.identity() == S.max_stable():
                            p = True
                        else:
                            q = False
                            break
                    else:
                        break
            else:
                break
        if p and q:
            print "fail: P%d s P%d" % (i, j)
        if j%10 ==0:
            sys.stdout.write(str(j/10))
    print "Done: P%d" % i
print "Done."
︡5c54c36d-a01d-4165-a13c-ea1e060b3746︡{"stdout":"\"\\nLooking at chains of K4. I do not think this generalizes to other Kn's as K_4 will have all of its vertices being overlapped each time. And the chains of K4 are really just strong products of path graphs.\\nSo we're looking at strong products of path graphs.\\n\"\n"}︡{"stdout":"fail: P2 s P2\nfail: P2 s P4\nfail: P2 s P7\nfail: P2 s P10"}︡{"stdout":"\n1fail: P2 s P13"}︡{"stdout":"\nfail: P2 s P16"}︡{"stdout":"\nfail: P2 s P19"}︡{"stdout":"\n2"}︡{"stdout":"fail: P2 s P22"}︡{"stdout":"\nfail: P2 s P25"}︡{"stdout":"\nfail: P2 s P28"}︡{"stdout":"\n3"}︡{"stdout":"fail: P2 s P31"}︡{"stdout":"\nfail: P2 s P34"}︡{"stdout":"\nfail: P2 s P37"}︡{"stdout":"\nfail: P2 s P40"}︡{"stdout":"\n4fail: P2 s P43"}︡{"stdout":"\nfail: P2 s P46"}︡{"stdout":"\nfail: P2 s P49"}︡{"stdout":"\n5"}︡{"stdout":"fail: P2 s P52"}︡{"stdout":"\nfail: P2 s P55"}︡{"stdout":"\nfail: P2 s P58"}︡{"stdout":"\n6"}︡{"stdout":"fail: P2 s P61"}︡{"stdout":"\nfail: P2 s P64"}︡{"stdout":"\nfail: P2 s P67"}︡{"stdout":"\nfail: P2 s P70"}︡{"stdout":"\n7fail: P2 s P73"}︡{"stdout":"\nfail: P2 s P76"}︡{"stdout":"\nfail: P2 s P79"}︡{"stdout":"\n8"}︡{"stdout":"fail: P2 s P82"}︡{"stdout":"\n"}︡{"stderr":"Error in lines 2-25\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1188, in execute\n    flags=compile_flags) in namespace, locals\n  File \"\", line 11, in <module>\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1321, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 686, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1294, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3448, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3695, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3043, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3639, in _set_stabilize\n    if e[1] != s.sink():\n  File \"src/cysignals/signals.pyx\", line 317, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}










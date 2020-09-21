︠37817c79-8a73-4994-a0c9-87f2d75e68f3︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
    G must not be a complete graph, an odd cycle graph, or a tree
    G must have vertex connectivity greater than 1 ("irreducible")
Results:
    Passed all sizes at most 7.
    Failed at size 8: 3 different
    Passed size 9
'''
import copy
import sys

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def known(G,i):
    if G==graphs.CompleteGraph(i):        #complete
        return True
    elif G.is_cycle() and i%2==1:         #odd cycle
        return True
    elif len(G.edges()) == i-1:             #tree
        return True
    return False

for i in range(2,10): #online range(2,6) takes a while, but range(2,5) is pretty quick
    count = 0;
    for G in graphs.nauty_geng(str(i) + " -C"):
        p = False
        q = True
        count += 1
        if count % 1000 == 0:
            sys.stdout.write('.')
        for j in range (0,i):
            S = Sandpile(G,j)
            if S.identity() == S.max_stable():
                p = True
            else:
                q = False
                break
        if p and q:
            if known(G,i):
                continue
            else:
                print("fail: %d"% i)
                G.show()
    print("Done: %d"%i)
︡3b9ea943-0297-467a-9341-efd33e345398︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, connected, undirected\\n    G must not be a complete graph, an odd cycle graph, or a tree\\n    G must have vertex connectivity greater than 1 (\"irreducible\")\\nResults:\\n    Passed all sizes at most 7.\\n    Failed at size 8: 3 different\\n'"}︡{"stdout":"\n"}︡{"stdout":"Done: 2\nDone: 3"}︡{"stdout":"\nDone: 4\nDone: 5"}︡{"stdout":"\nDone: 6"}︡{"stdout":"\nDone: 7"}︡{"stdout":"\n."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/30620/tmp_O6ihEo.svg","show":true,"text":null,"uuid":"f83985a2-c183-42fe-a889-9c9014163fc6"},"once":false}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/30620/tmp_4YOmEl.svg","show":true,"text":null,"uuid":"036b3053-7d83-4f11-a569-8d12c9a3f57b"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/30620/tmp_apXM3T.svg","show":true,"text":null,"uuid":"46b0048f-f149-414c-ac71-c0668a03cf10"},"once":false}︡{"stdout":"."}︡{"stdout":"Done: 8"}︡{"stdout":"\n."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"Done: 9"}︡{"stdout":"\n"}︡{"done":true}
︠5b352e71-4fce-40fe-b799-1bf2c4ac4fd1︠
'''
Looking at stacks of complete graphs as in the third flagged case for size 8. Limiting from K2 to K13 and P2 to P30.
'''
for i in range (2, 14):
    for j in range (2,31):
        p = False
        q = True
        g = graphs.CompleteGraph(i).cartesian_product(graphs.PathGraph(j))
        for k in range (0, (j+1)/2):
            S = Sandpile(g,(0, k))
            if S.identity() == S.max_stable():
                p = True
            else:
                q = False
                break
        if p and q:
            print "fail: K%d P%d" % (i, j)
    print "Done: K%d" % i
print "Done."
︡153df122-c2e3-4c90-b9c7-31b03d431bab︡{"stdout":"'\\nLooking at stacks of complete graphs as in the third flagged case for size 8\\n'\n"}︡{"stdout":"Done: K2"}︡{"stdout":"\nDone: K3"}︡{"stdout":"\nfail: K4 P2\nDone: K4"}︡{"stdout":"\nDone: K5"}︡{"stdout":"\nDone: K6"}︡{"stdout":"\nDone: K7"}︡{"stdout":"\nDone: K8"}︡{"stdout":"\nDone: K9"}︡{"stdout":"\nDone: K10"}︡{"stdout":"\nDone: K11"}︡{"stdout":"\nDone: K12"}︡{"stdout":"\nDone: K13"}︡{"stdout":"\n"}︡{"stderr":"Error in lines 2-16\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1188, in execute\n    flags=compile_flags) in namespace, locals\n  File \"\", line 8, in <module>\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1321, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 686, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1294, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3448, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3695, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3043, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3637, in _set_stabilize\n    firing_vector[v] += dm[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3016, in __setitem__\n    dict.__setitem__(self,key,item)\n  File \"src/cysignals/signals.pyx\", line 317, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}
︠b3ca1144-c7a3-43a8-afe4-11cb2ae6413d︠
'''
Looking at chains of K4. I do not think this generalizes to other Kn's as K_4 will have all of its vertices being overlapped each time. And the chains of K4 are really just strong products of path graphs.
So we're looking at strong products of path graphs.
'''
for i in range (2, 31):
    for j in range (i,31):
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
    print "Done: P%d" % i
print "Done."
︡36972854-f44e-4a5c-8eae-f3f199d5b010︡{"stdout":"\"\\nLooking at chains of K4. I do not think this generalizes to other Kn's as K_4 will have all of its vertices being overlapped each time. And the chains of K4 are really just strong products of path graphs.\\nSo we're looking at strong products of path graphs.\\n\"\n"}︡{"stdout":"fail: P2 s P2\nfail: P2 s P4\nfail: P2 s P7\nfail: P2 s P10"}︡{"stdout":"\nfail: P2 s P13"}︡{"stdout":"\nfail: P2 s P16"}︡{"stdout":"\nfail: P2 s P19"}︡{"stdout":"\nfail: P2 s P22"}︡{"stdout":"\nfail: P2 s P25"}︡{"stdout":"\nfail: P2 s P28"}︡{"stdout":"\nDone: P2"}︡{"stdout":"\nDone: P3"}︡{"stdout":"\nDone: P4"}︡{"stdout":"\nDone: P5"}︡{"stdout":"\nDone: P6"}︡{"stdout":"\nDone: P7"}︡{"stdout":"\nDone: P8"}︡{"stdout":"\nDone: P9"}︡{"stdout":"\nDone: P10"}︡{"stdout":"\nDone: P11"}︡{"stdout":"\nDone: P12"}︡{"stdout":"\nDone: P13"}︡{"stdout":"\nDone: P14"}︡{"stdout":"\nDone: P15"}︡










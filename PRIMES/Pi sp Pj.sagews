︠a231e146-c253-4cb2-af33-02dfe54a8c81s︠
'''
Looking at chains of K4. I do not think this generalizes to other Kn's as K_4 will have all of its vertices being overlapped each time. And the chains of K4 are really just strong products of path graphs.
So we're looking at strong products of path graphs.
Limiting to i <= j <= 100
Running on Linux box, is incomplete but has finished i=11.
The only flagged cases are P2 sp P2, which is K4, as well as P2 sp P(1 mod 3).
'''
for i in range (50, 101):
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
︡7bc54d9e-8ab8-41c9-8607-1329e9108ae8︡{"stdout":"5"}︡{"stderr":"Error in lines 1-24\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1188, in execute\n    flags=compile_flags) in namespace, locals\n  File \"\", line 11, in <module>\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1321, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 686, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1294, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3448, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3695, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3043, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3638, in _set_stabilize\n    for e in s.outgoing_edges(v):\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/graphs/digraph.py\", line 1183, in outgoing_edges\n    return list(self.outgoing_edge_iterator(vertices, labels=labels))\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/graphs/digraph.py\", line 1160, in outgoing_edge_iterator\n    elif vertices in self:\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/graphs/generic_graph.py\", line 9558, in has_vertex\n    return self._backend.has_vertex(vertex)\n  File \"src/cysignals/signals.pyx\", line 317, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}︡










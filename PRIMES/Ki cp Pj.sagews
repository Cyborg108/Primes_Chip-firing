︠f0844854-5ad2-4046-ac33-8a26611b76bc︠
'''
Looking at stacks of complete graphs as in the third flagged case for size 8. Limiting from K2 to K20 and P2 to P50.
Run on Linux box, no cases flagged except K4 cp P2.
'''
for i in range (2, 21):
    for j in range (2,51):
        if j%10 == 0:
            sys.stdout.write(str(j/10))
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
︡acad1a47-f575-486e-bc19-0a5a21d0bbaa︡{"stdout":"'\\nLooking at stacks of complete graphs as in the third flagged case for size 8. Limiting from K2 to K20 and P2 to P50.\\n'\n"}︡{"stdout":"12"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K2"}︡{"stdout":"\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K3"}︡{"stdout":"\nfail: K4 P2\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K4"}︡{"stdout":"\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K5"}︡{"stdout":"\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K6"}︡{"stdout":"\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stdout":"5"}︡{"stdout":"Done: K7"}︡{"stdout":"\n1"}︡{"stdout":"2"}︡{"stdout":"3"}︡{"stdout":"4"}︡{"stderr":"Error in lines 2-18\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1188, in execute\n    flags=compile_flags) in namespace, locals\n  File \"\", line 10, in <module>\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1321, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 686, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1294, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3448, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3695, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3043, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3638, in _set_stabilize\n    for e in s.outgoing_edges(v):\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/graphs/digraph.py\", line 1183, in outgoing_edges\n    return list(self.outgoing_edge_iterator(vertices, labels=labels))\n  File \"src/cysignals/signals.pyx\", line 317, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}










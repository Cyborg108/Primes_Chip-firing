︠d9e745c7-e6e4-46e5-9425-2e6af4b4de62s︠
'''
Restrictions placed on G,S,j:
    G must be finite, biconnected, undirected
Results:
    Lots of flagged cases
Observed families of flagged cases:
    Even cycle with a single edge attached to a single vertex
'''
import copy
import sys

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def CMIPknown(G,i):
    if G==graphs.CompleteGraph(i):        #complete
        return True
    elif G.is_cycle() and i%2==1:         #odd cycle
        return True
#    elif len(G.edges()) == i-1:             #tree
#        return True
    return False

def CMIP(G,i):
    q = True
    for j in range (0,i):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    return q

def CIPknown(G,i):
    #Even cycle with extra vertex
    if i%2==1:
        if G.neighbors((i-1)/2) == [i-1]:
            if G.size()==i:
                check = True
                for j in range (0,(i-1)/2):
                    if G.degree(j)!=2:
                        check = False
                        break
                for j in range ((i-1)/2 + 1,i-1):
                    if G.degree(j)!=2:
                        check = False
                        break
                if check:
                    print("Even cycle+")
                    return True
    return False

def known(G,i):
    if CMIPknown(G,i):
        print("CMIPknown")
        return True
    if CMIP(G,i):
        print("CMIPunknown")
        return True
    if CIPknown(G,i):
        return True
    return False

for i in range(3,10):
    count = 0;
    for G in graphs.nauty_geng(str(i) + " -C"):
        q = True
        count += 1
        if count % 10**3 == 0:
            print("%d" % (count/10**3))
        j = 0
        S = Sandpile(G,j)
        c = S.identity().values()
        j = 1
        S = Sandpile(G,j)
        d = S.identity().values()
        if c[1:i] != d[1:i]:
            continue
        c.insert(0,d[0])
        for j in range (2,i):
            S = Sandpile(G,j)
            if S.identity().values() != c[0:j] + c[j+1:i]:
                q = False
                break
        if q:
            if known(G,i):
                continue
            else:
                print("fail: %d"% i)
                G.show()
    print("Done: %d"%i)
︡66f618aa-5f62-4e61-81f3-29e249d0c85b︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, biconnected, undirected\\nResults:\\n    Lots of flagged cases\\nObserved families of flagged cases:\\n    Even cycle with a single edge attached to a single vertex\\n'"}︡{"stdout":"\n"}︡{"stdout":"CMIPknown"}︡{"stdout":"\nDone: 3\nCMIPknown"}︡{"stdout":"\nDone: 4\nCMIPknown"}︡{"stdout":"\nCMIPknown\nDone: 5\nfail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_E_guet.svg","show":true,"text":null,"uuid":"6b160cf1-a091-4dc2-8c09-730214abe607"},"once":false}︡{"stdout":"CMIPknown"}︡{"stdout":"\nDone: 6\nfail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_d9Zn6W.svg","show":true,"text":null,"uuid":"95f3c113-424c-45fa-aa89-ab1bc0b0c418"},"once":false}︡{"stdout":"CMIPknown"}︡{"stdout":"\nfail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_sDl8pH.svg","show":true,"text":null,"uuid":"f51b1d10-0ed0-4416-aa2d-710efb5369af"},"once":false}︡{"stdout":"CMIPknown"}︡{"stdout":"\nDone: 7\nfail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_d3QF8o.svg","show":true,"text":null,"uuid":"ddfcd881-7f51-47ef-94aa-c895f934939a"},"once":false}︡{"stdout":"1"}︡{"stdout":"\n2"}︡{"stdout":"\nfail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_BWpsdN.svg","show":true,"text":null,"uuid":"b400cc45-6ca7-4db9-8e17-5511f6b94bc8"},"once":false}︡{"stdout":"3"}︡{"stdout":"\n4"}︡{"stdout":"\nCMIPunknown"}︡{"stdout":"\nfail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_GbKmmC.svg","show":true,"text":null,"uuid":"ae998eac-afcd-4fa5-bb8b-81fcac341d77"},"once":false}︡{"stdout":"5"}︡{"stdout":"\n6"}︡{"stdout":"\nfail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_ZSCkv1.svg","show":true,"text":null,"uuid":"1c44a888-6661-4077-b739-f8b0e0640e1b"},"once":false}︡{"stdout":"CMIPunknown"}︡{"stdout":"\nCMIPunknown"}︡{"stdout":"\n7"}︡{"stdout":"\nCMIPknown"}︡{"stdout":"\nDone: 8\n1"}︡{"stdout":"\n2"}︡{"stdout":"\nfail: 9"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_Kk19Nn.svg","show":true,"text":null,"uuid":"1f26a8c4-c542-43b7-b7b7-f7c63c4996a5"},"once":false}︡{"stdout":"3"}︡{"stdout":"\n4"}︡{"stdout":"\nfail: 9"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_cIGMmE.svg","show":true,"text":null,"uuid":"66f76844-4524-4b9a-9b38-c8b424ab7151"},"once":false}︡{"stdout":"5"}︡{"stdout":"\n6"}︡{"stdout":"\n7"}︡{"stdout":"\n8"}︡{"stdout":"\n9"}︡{"stdout":"\n10"}︡{"stdout":"\nCMIPknown"}︡{"stdout":"\n11"}︡{"stdout":"\n12"}︡{"stdout":"\n13"}︡{"stdout":"\n14"}︡{"stdout":"\n15"}︡{"stdout":"\nfail: 9"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_IH6prt.svg","show":true,"text":null,"uuid":"1a4788db-0c5c-4780-97cc-bef11272e32a"},"once":false}︡{"stdout":"16"}︡{"stdout":"\n17"}︡{"stdout":"\n18"}︡{"stdout":"\n19"}︡{"stdout":"\n20"}︡{"stdout":"\n21"}︡{"stdout":"\n22"}︡{"stdout":"\n23"}︡{"stdout":"\n24"}︡{"stdout":"\n25"}︡{"stdout":"\n26"}︡{"stdout":"\n27"}︡{"stdout":"\n28"}︡{"stdout":"\n29"}︡{"stdout":"\n30"}︡{"stdout":"\n31"}︡{"stdout":"\n32"}︡{"stdout":"\n33"}︡{"stdout":"\nfail: 9"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/128637/tmp_yOi4Ib.svg","show":true,"text":null,"uuid":"fdf63c17-de4b-47fa-95fe-b0ac2f642366"},"once":false}︡{"stdout":"34"}︡{"stdout":"\n"}︡{"stderr":"Error in lines 47-74\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1188, in execute\n    flags=compile_flags) in namespace, locals\n  File \"\", line 10, in <module>\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1321, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 686, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1294, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3448, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3695, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3043, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3640, in _set_stabilize\n    c[e[1]] += dm[0]* e[2]\n  File \"/ext/sage/sage-8.6_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3016, in __setitem__\n    dict.__setitem__(self,key,item)\n  File \"src/cysignals/signals.pyx\", line 317, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}










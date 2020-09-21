︠b9129f83-00ff-4302-a1d2-b355eb506c08s︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
    G must not be a complete graph, an odd cycle graph, or a tree
    G must have vertex connectivity greater than 1 ("irreducible")
Results:

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

for i in range(2,5): #online range(2,6) takes a while, but range(2,5) is pretty quick
    for G in graphs(i):
        p = False
        q = True
        if G.is_connected()==False:
            continue
        if G.vertex_connectivity()<=1:
            continue
        if known(G,i):
            continue
        for j in range (0,i):
            S = Sandpile(G,j)
            S.identity().show(sink=True,colors=True,heights=True,directed=False)
    print("Done: %d"%i)
︡9172e17c-8fe9-4d34-a414-c73c16f95db6︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, connected, undirected\\n    G must not be a complete graph, an odd cycle graph, or a tree\\n    G must have vertex connectivity greater than 1 (\"irreducible\")\\nResults:\\n\\n'\n"}︡{"stdout":"Done: 2\nDone: 3"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_CCRiUO.svg","show":true,"text":null,"uuid":"7cd5213e-2816-45c1-af42-d4faf1ae3a78"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_9EsI9t.svg","show":true,"text":null,"uuid":"8ce71310-9da2-4e4b-a158-eda314c64046"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_6U4wGD.svg","show":true,"text":null,"uuid":"3fdccfc6-7a79-4ca1-821d-0e3f603defb1"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_fAoDPm.svg","show":true,"text":null,"uuid":"158c8ae5-1f8f-4d1a-980b-2f1fb98a0f94"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_msaban.svg","show":true,"text":null,"uuid":"82a2b7c4-7f74-4259-ae11-47e14bb1c208"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_gyBMjP.svg","show":true,"text":null,"uuid":"afc35830-ea78-4774-9798-fc5df0d3b35c"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_20axK7.svg","show":true,"text":null,"uuid":"5e4f50a3-2f0d-4b09-baea-b0a93c2783a7"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/104/tmp_rcT92z.svg","show":true,"text":null,"uuid":"fd556f38-743c-4233-aeda-853cfc553d75"},"once":false}︡{"stdout":"Done: 4"}︡{"stdout":"\n"}︡{"done":true}










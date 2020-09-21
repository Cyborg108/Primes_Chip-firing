︠084dd362-871c-49df-a92f-502a10d9bba8s︠
def CMIPcheck(G):
    q = True
    for j in range (0,G.order()):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    if q:
        print "True " + str(G.order())
    else:
        print "False " + str(G.order())

G = Graph('K?AA@ASbBuNX',format='graph6')
CMIPcheck(G)
G.is_biconnected()
G.show()

G = Graph('K?AA@aKhAsJO',format='graph6')
CMIPcheck(G)
G.is_biconnected()
G.show()

G = Graph('KzCGWK@?G@oB',format='graph6')
CMIPcheck(G)
G.is_biconnected()
G.show()

# G = Graph('KzCGGCB?W?o@', format='graph6')
# CMIPcheck(G)
# G.is_biconnected()
# G.show()

# G = Graph('KzCGGC@?G@oB',format='graph6')
# CMIPcheck(G)
# G.is_biconnected()
# G.show()
︡a55382a4-4b40-468e-8a3f-0e10959bb16d︡{"stdout":"True 12\n"}︡{"stdout":"True\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/394/tmp_D0jFRO.svg","show":true,"text":null,"uuid":"1da9f417-5a3a-4080-8650-538ab0634898"},"once":false}︡{"stdout":"True 12\n"}︡{"stdout":"True\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/394/tmp_56Yofd.svg","show":true,"text":null,"uuid":"d159f67c-e0e3-412f-bc6b-64440ce53407"},"once":false}︡{"stdout":"True 12\n"}︡{"stdout":"True\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/394/tmp_a3U6KQ.svg","show":true,"text":null,"uuid":"aafd2d5b-992c-4d6d-a885-9deafde8d5bc"},"once":false}︡{"done":true}
︠1b8d1e8e-4a69-4d35-ae05-89b6e4acb805︠
def CMIPcheck(G):
    q = True
    for j in range (0,G.order()):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    if q:
        print "True " + str(G.order())
    else:
        print "False " + str(G.order())
G=graphs.DiamondGraph()
G = G.disjoint_union(G)
G.relabel()
G.add_vertex(8)
G.add_edge(2,5)
G.add_edge(2,8)
for i in range(9,15):
    G.add_vertex(i)
    G.add_edge(i-1,i)
G.add_edge(5,14)
G.add_vertex(15)
G.add_edge(4,15)
G.add_vertex(16)
G.add_edge(6,16)
G.show()
CMIPcheck(G)

G=graphs.DiamondGraph()
G = G.disjoint_union(G)
G.relabel()
G.add_vertex(8)
G.add_edge(2,8)
for i in range(9,16):
    G.add_vertex(i)
    G.add_edge(i-1,i)
G.add_edge(5,15)
G.add_vertex(16)
G.add_edge(4,16)
G.add_vertex(17)
G.add_edge(6,17)
G.show()
CMIPcheck(G)
︡88072e12-4108-4ddf-896c-e6e3f0d4789b︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/25153/tmp_oO3UZF.svg","show":true,"text":null,"uuid":"45f94600-ac9a-43c1-a2c3-5512d66d1d82"},"once":false}︡{"stdout":"False 17\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/25153/tmp_K2gIDG.svg","show":true,"text":null,"uuid":"fa3f5934-f505-45d7-9846-c74a81db1043"},"once":false}︡{"stdout":"True 18"}︡{"stdout":"\n"}︡{"done":true}











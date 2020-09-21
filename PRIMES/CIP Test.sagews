︠dcd30d03-fd6c-4941-8cdd-f830b84b1c6ds︠
''''''
import copy
import sys

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def CMIPknown(G,i):
    if G==graphs.CompleteGraph(i):        #complete
        return True
    elif G.is_cycle() and i%2==1:         #odd cycle
        return True
    elif len(G.edges()) == i-1:             #tree
        return True
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

def CIPcheck(G,i,s):
    q = True
    j = 0
    S = Sandpile(G,j)
    c = S.identity().values()
    j = 1
    S = Sandpile(G,j)
    d = S.identity().values()
    if c[1:i] != d[1:i]:
        if s:
            print("False")
            G.show()
        return False
    c.insert(0,d[0])
    for j in range (2,i):
        S = Sandpile(G,j)
        if S.identity().values() != c[0:j] + c[j+1:i]:
            q = False
            break
    if q:
        if s:
            print str(c)
        if known(G,i):
            if s:
                print("True, known")
                G.show()
            return True
        else:
            if s:
                print("True, unknown")
                G.show()
            return True

#CIPcheck(graphs.OctahedralGraph(),6)
G = Graph({0:[1],1:[0,3,4,5,6,7],2:[3,4,5,6,7],3:[1,2],4:[1,2],5:[1,2],6:[1,2],7:[1,2]})
CIPcheck(G,8,True)
︡04f32232-cdad-4edb-a04d-338aa2bea605︡{"stdout":"''\n"}︡{"stdout":"[0, 5, 0, 1, 1, 1, 1, 1]\nTrue, unknown\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/163156/tmp_WUW_P7.svg","show":true,"text":null,"uuid":"bf5dcd30-b7c8-4a63-9df5-69a90190eda6"},"once":false}︡{"stdout":"True"}︡{"stdout":"\n"}︡{"done":true}
︠be1ce407-f7eb-4803-864b-307038ce45bbs︠
for i in range (2,11):
    for j in range (2,11):
        G = graphs.CompleteBipartiteGraph(i,j)
        G.add_vertex(-1)
        G.add_edge(-1,0)
        G.relabel()
        if CIPcheck(G,i+j+1,False)==False:
            print str(i) + " " + str(j) + " i"
        G = graphs.CompleteBipartiteGraph(i,j)
        G.add_vertex(-1)
        G.add_edge(-1,i+j-1)
        G.relabel()
        if CIPcheck(G,i+j+1,False)==False:
            print str(i) + " " + str(j) + " j"
print "Done."
︡e5e31646-987c-4a64-b9c2-f5cd519cb2cb︡{"stdout":"Done.\n"}︡{"done":true}
︠9e59d24c-b63b-42fb-9af7-cd545f6b9c87s︠
for i in range(3,21):
    G = graphs.CompleteGraph(i).disjoint_union(graphs.CycleGraph(i))
    G.relabel()
    G.merge_vertices([0,i])
    G.relabel()
    if CIPcheck(G,2*i-1,False)==False:
        print str(i)
print "Done."
︡2d692b1e-02c1-4c59-b483-ac29bd4a174f︡{"stdout":"Done.\n"}︡{"done":true}
︠11203f0e-aa1a-4e1d-b313-93bb014cf1ff︠
G = graphs.CompleteGraph(7).disjoint_union(graphs.CycleGraph(7))
G.relabel()
G.merge_vertices([0,7])
G.relabel()
Sandpile(G,0).identity().show(directed=False,heights=True)
Sandpile(G,1).identity().show(directed=False,heights=True)
Sandpile(G,7).identity().show(directed=False,heights=True)
︡47ac9782-ec9a-4b8d-be0a-992e1ce5a95d︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_xCQUc8.svg","show":true,"text":null,"uuid":"ac2e88dc-8213-4d54-8b5b-1e824a9058fb"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_pX8ffZ.svg","show":true,"text":null,"uuid":"25cfc189-8109-41fa-a1f8-fe5504a23fde"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_wwGClf.svg","show":true,"text":null,"uuid":"81f41b6c-69c3-41a9-95b5-f92558e6aa1e"},"once":false}︡{"done":true}
︠7a8ed028-0891-4d12-9d96-fb4a891b43d2s︠
G = graphs.CompleteGraph(8).disjoint_union(graphs.CycleGraph(8))
G.relabel()
G.merge_vertices([0,8])
G.relabel()
Sandpile(G,0).identity().show(directed=False,heights=True)
Sandpile(G,1).identity().show(directed=False,heights=True)
Sandpile(G,8).identity().show(directed=False,heights=True)
︡617b9393-f916-48ef-9733-265a43fd7940︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_Ul9uSK.svg","show":true,"text":null,"uuid":"bd1a32c0-6861-4af4-ac8a-dbeb041cf4ab"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_wlkAEP.svg","show":true,"text":null,"uuid":"9962137a-2df2-4603-a3dd-7ab8ef8b14be"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/162148/tmp_YBgDzw.svg","show":true,"text":null,"uuid":"7375bd9e-bcf2-447c-8edb-f6c9c9720e0b"},"once":false}︡{"done":true}
︠9c73e043-340f-483c-b69a-5c63558dfb7bs︠
G = graphs.CycleGraph(5)
G.add_vertex(5)
G.add_edge(0,5)
G.add_edge(1,5)
G.add_edge(2,5)
G.add_edge(3,5)
G.add_edge(4,5)
G.show()
H = G.cartesian_product(G)
H.relabel()
CIPcheck(H,H.order(),False)
H = G.strong_product(G)
H.relabel()
CIPcheck(H,H.order(),False)
H = G.tensor_product(G)
H.relabel()
CIPcheck(H,H.order(),False)
︡1e4f034b-04a7-4d95-b3b1-899fc4cf0314︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/163156/tmp_MjZDJL.svg","show":true,"text":null,"uuid":"dc8415e7-b732-4ac5-a4dd-d860fbe1e8c1"},"once":false}︡{"stdout":"False\n"}︡{"stdout":"False"}︡{"stdout":"\n"}︡{"stdout":"False"}︡{"stdout":"\n"}︡{"done":true}
︠4d3162ac-6bcf-42d3-85e7-86219b2d6c7f︠










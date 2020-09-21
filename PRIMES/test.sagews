︠d3af85f8-b202-4fbc-8b3b-7a3dce4e8490︠
'''
1  3  True
2  6  True
3  9  True
4  12 True
5     False
6  23 True
7  26 True
8  29 True
9  32 True
10    False
11 43 True
12 46 True
13 49 True
14 52 True
15    False
'''
G = graphs.CompleteGraph(5)
G = G.disjoint_union(G)
G = G.disjoint_union(graphs.CompleteGraph(5))
G = G.disjoint_union(G)
G = G.disjoint_union(graphs.CompleteGraph(5))
G = G.disjoint_union(G)
G = G.disjoint_union(graphs.CompleteGraph(5))
G.relabel()
n = 15
G.merge_vertices(range(0,5*n)[::5])
#G.show()
G.relabel()
i = 4*n+1
j = 0
S = Sandpile(G,j)
#S.identity().show(colors=True,heights=True, directed=False)
c = S.identity().values()
j = 1
q = True
S = Sandpile(G,j)
#S.identity().show(colors=True,heights=True, directed=False)
d = S.identity().values()
if c[1:i] != d[1:i]:
    print "False" + str(i)
c.insert(0,d[0])
print str(c)
for j in range (2,i):
    S = Sandpile(G,j)
    if S.identity().values() != c[0:j] + c[j+1:i]:
        q = False
        break
if q:
    print "True " + str(i)
else:
    print "False " + str(i)
︡ec828984-f241-404c-a9ce-4d9b30f2a1bc︡
︠aef10e10-67e3-4041-999a-5be962b9bc9as︠

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
        G.show()
        return True
    if CIPknown(G,i):
        return True
    return False

for i in range(9,10):
    count = 0;
    for G in graphs.nauty_geng(str(i) + " -c 12:13 -f -d2 -D8"):
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
︡06b052f1-3286-40bd-b3ff-85a4f4e5c269︡{"stdout":"CMIPunknown\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/937/tmp_V1U7hv.svg","show":true,"text":null,"uuid":"4bc3709f-ffc0-42a9-a243-f96c04ce3e13"},"once":false}︡{"stdout":"CMIPunknown"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/937/tmp_aZAItn.svg","show":true,"text":null,"uuid":"9af4432c-7455-4741-9a9a-2a91d955482d"},"once":false}︡{"stdout":"Done: 9"}︡{"stdout":"\n"}︡{"done":true}
︠78b4cbbc-2afb-458f-840f-b0b8fd789b1d︠
G = graphs.EmptyGraph()
G.add_vertices([0,1,2,3,4])
G.add_edges([[0,1],[1,2],[2,3],[3,0],[0,2],[0,4]])
G.show()
Sandpile(G,4).identity().show(sink=False,directed=False,heights=False,colors=False)
︡18d86990-2040-4ffa-9def-ad72d0ba8abf︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/146/tmp_47i_Bp.svg","show":true,"text":null,"uuid":"0a02ea26-ea19-4637-ae44-3524034195de"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/146/tmp_pPufNx.svg","show":true,"text":null,"uuid":"c99a26b9-116f-4b9f-aa0b-4826ce66ef67"},"once":false}︡{"done":true}
︠e52f1e51-5cd5-4144-a1fa-93900ea52a18s︠
pos_dict={'S':[0,0],'2':[0,1],'3':[1,1],'1':[1,0]}
color={'#FFFFFF':['3','1'],'#AAFFAA':['S'],'#AAFFFF':'2'}
G = Graph({'S':[],'2':['S'],'3':['2','S'],'1':['S','3']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'0':[0,1],'4':[1,1],'1':[1,0]}
color={'#FFFFFF':['1','0'],'#AAFFAA':['S'],'#AAFFFF':'4'}
G = Graph({'S':[],'0':['S'],'4':['0','S'],'1':['S','4']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],' 1 ':[1,1],'2':[1,0]}
color={'#FFFFFF':['1',' 1 '],'#AAFFAA':['S'],'#AAFFFF':'2'}
G = Graph({'S':[],'1':['S'],' 1 ':['1','S'],'2':['S',' 1 ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],'2':[1,1],'0':[1,0]}
color={'#FFFFFF':['1','2','0'],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'2':['1','S'],'0':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)
︡408d5ecd-8652-4fba-ba01-579548d5bea3︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_LmK3mM.svg","show":true,"text":null,"uuid":"888a3e9d-89af-4393-b82f-612e433891eb"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_d0r3jN.svg","show":true,"text":null,"uuid":"8debf5c0-a0b8-4094-934c-f8a9aadc8624"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_cJoQ67.svg","show":true,"text":null,"uuid":"7a089e44-67a9-4bea-ba88-f565e3589086"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_FvHADb.svg","show":true,"text":null,"uuid":"ee8c5273-cfcd-4f6c-bd9f-c78991fe7e7c"},"once":false}︡{"done":true}
︠8b235a32-541b-4b02-8910-4756eb8a8f63s︠
G = graphs.CompleteBipartiteGraph(5,7)
G.add_vertex(12)
G.add_edge(12,0)
pos_dict = {}
for i in range (0,5):
    y = 5
    x = 6 * i + 5
    pos_dict[i] = [x,-y]
for i in range (5, 12):
    y = 15
    x = 4 * (i - 5) + 5
    pos_dict[i] = [x,-y]
pos_dict[12] = [0,-10]
color={'#FFFFFF':[0,1,2,3,4,5,6,7,8,9,10,11,12]}
G.plot(pos=pos_dict,vertex_size=700,vertex_colors=color,figsize=[4,2])
︡78479c25-067b-43ea-8682-4ca97bfb4391︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/480/tmp_s8p9xD.svg","show":true,"text":null,"uuid":"304f6b64-8dfd-4102-bc9b-cb9fa8039219"},"once":false}︡{"done":true}
︠cdecefde-6478-4d60-890b-18a13cb1148fs︠
pos_dict={'S':[0,0],'1':[0,1],'  1  ':[1,1],' 1 ':[1,0]}
color={'#AAFFFF':['1','  1  ',' 1 '],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'  1  ':['1','S'],' 1 ':['S','  1  ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],'  1  ':[1,1],'0':[1,0]}
color={'#AAFFFF':['1','  1  '],'#FFFFFF':['0'],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'  1  ':['1','S'],'0':['S','  1  ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],'  0  ':[1,1],' 1 ':[1,0]}
color={'#AAFFFF':['1',' 1 '],'#FFFFFF':['  0  '],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'  0  ':['1','S'],' 1 ':['S','  0  ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'0':[0,1],'2':[1,1],' 1 ':[1,0]}
color={'#FFFFFF':['0'],'#AAAAFF':['2'],'#AAFFFF':[' 1 '],'#AAFFAA':['S']}
G = Graph({'S':[],'0':['S'],'2':['0','S'],' 1 ':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'0':[0,1],'2':[1,1],' 0 ':[1,0]}
color={'#FFFFFF':['0',' 0 '],'#AAAAFF':['2'],'#AAFFAA':['S']}
G = Graph({'S':[],'0':['S'],'2':['0','S'],' 0 ':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'0':[0,1],'  1  ':[1,1],' 1 ':[1,0]}
color={'#FFFFFF':['0'],'#AAFFFF':['  1  ',' 1 '],'#AAFFAA':['S']}
G = Graph({'S':[],'0':['S'],'  1  ':['0','S'],' 1 ':['S','  1  ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],'2':[1,1],' 1 ':[1,0]}
color={'#AAFFFF':['1',' 1 '],'#AAAAFF':['2'],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'2':['1','S'],' 1 ':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'1':[0,1],'2':[1,1],' 0 ':[1,0]}
color={'#AAFFFF':['1'],'#AAAAFF':['2'],'#FFFFFF':[' 0 '],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'2':['1','S'],' 0 ':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)
︡04f963b3-a22d-4bd3-8890-9c500f77f69b︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_dOm1N4.svg","show":true,"text":null,"uuid":"533b2ea0-8749-4de4-b667-92d76a492329"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_yrUYhg.svg","show":true,"text":null,"uuid":"b4346a6a-390f-46b6-9ab4-511d67b996f1"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_9VF2MA.svg","show":true,"text":null,"uuid":"77b8d9d2-b8f8-4e17-82fd-041be3a464cd"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_4Fi_NP.svg","show":true,"text":null,"uuid":"bb2b1619-d3c2-4e6a-9dd2-66d645b49f95"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_mmrWJW.svg","show":true,"text":null,"uuid":"54573b5d-d77f-4648-ab34-cc0683fee10e"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_ud489B.svg","show":true,"text":null,"uuid":"4b373007-a3d9-4822-9492-f3c6e27f40e0"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_ohG4mN.svg","show":true,"text":null,"uuid":"e1e69022-1a5e-47ae-a179-96c0d1979b56"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/7928/tmp_7ZeGV8.svg","show":true,"text":null,"uuid":"206f97f6-7dd7-4afa-b1b6-2ff12e4d4c0d"},"once":false}︡{"done":true}
︠c1d6d323-8775-44c3-95d3-6683a1d62ac4s︠
G = graphs.CycleGraph(5)
G.add_vertex(5)
G.add_edge([0,5])
G.add_edge([1,5])
G.add_edge([2,5])
G.add_edge([3,5])
G.add_edge([4,5])
G.graph6_string()
G.spanning_trees_count()
G.size()
︡8133bc3e-8787-45cf-aaf9-db47f5e809b6︡{"stdout":"'Ehfw'\n"}︡{"stdout":"121\n"}︡{"stdout":"10\n"}︡{"done":true}
︠0d2addd2-d95e-43a7-b92b-c5192d571cc0s︠
G = Graph("K?`@?aGpB~N|",format="graph6")
G.show()
︡f3d37e9c-7dd8-4e30-8c2d-bdbb16a849dd︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/105931/tmp_g5YIhF.svg","show":true,"text":null,"uuid":"378419e5-d5c8-466a-b591-623507b4e263"},"once":false}︡{"done":true}
︠d86c533b-3120-4218-a890-2bfa50f06f4as︠
import copy

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def CIPcheck(G,s):
    q = True
    i=G.order()
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
#       if known(G,i):
#             if s:
#                 print("True, known")
#                 G.show()
#             return True
        else:
            if s:
                print("True, unknown")
                G.show()
            return True

def CIPpCheck(G,s):
    H = copy.copy(G)
    i = G.order()
    H.add_vertex(i)
    for j in range(0,i):
        H.add_edge(i,j)
        if CIPcheck(H,False):
            H.delete_edge(i,j)
            continue
        else:
            H.delete_edge(i,j)
            return False
    if s:
        G.show()
    return True

G = graphs.PathGraph(5)
G.add_edge(0,3)
G.is_bipartite()
CIPpCheck(G,False)
︡5e73b58f-923f-40a8-b2bf-35d3cb7b095d︡{"stdout":"True\n"}︡{"stdout":"False"}︡{"stdout":"\n"}︡{"done":true}
︠6c05624a-79b9-4d29-a6bc-01b809f74b23s︠
G = graphs.CompleteBipartiteGraph(4,4)
for i in range(0,4):
    G.delete_edge(i,i+4)
G.show()
G.is_bipartite()
G.is_regular()
CIPpCheck(G,False)
︡53ec50d4-56dc-4a6a-aacf-a6cb6c4d5b7e︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_0vnf4e.svg","show":true,"text":null,"uuid":"eade4ddb-f4a3-4d21-91dc-2305bda15c22"},"once":false}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠c2d0750a-a2eb-4b7a-81e1-66e1650de768s︠
H = graphs.CompleteGraph(4).cartesian_product(graphs.PathGraph(2)).complement()
H.show()
H.is_isomorphic(G)
︡dcd83cc7-354d-47ea-9b0b-0e8f9efc235c︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_VGVp9_.svg","show":true,"text":null,"uuid":"8fc4afcf-0b8c-417f-92dd-779663980050"},"once":false}︡{"stdout":"True\n"}︡{"done":true}
︠6693bb79-970b-4920-bd04-1e30151cbf64s︠
G = graphs.PathGraph(3)
pos_dict = {(0,0):[0,0],(0,1):[0,1],(0,2):[0,2],(1,0):[1,0],(1,1):[1,1],(1,2):[1,2],(2,0):[2,0],(2,1):[2,1],(2,2):[2,2]}
G.cartesian_product(G).show(pos=pos_dict,talk=True,vertex_labels=False,figsize=[2,2],vertex_size=700)
G.tensor_product(G).show(pos=pos_dict,talk=True,vertex_labels=False,figsize=[2,2],vertex_size=700)
G.strong_product(G).show(pos=pos_dict,talk=True,vertex_labels=False,figsize=[2,2],vertex_size=700)
G.show(talk=True,vertex_labels=False,figsize=[2,2],vertex_size=700)
︡7a2c7e43-3fcd-439c-a3d9-8da669d3a804︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_hlv4YF.svg","show":true,"text":null,"uuid":"6af9fd8b-0757-48c1-bab6-9b6578448c48"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_b6gaEF.svg","show":true,"text":null,"uuid":"48c08300-e282-4f51-a78a-807b7759f997"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_gph6q7.svg","show":true,"text":null,"uuid":"f19489b7-1a21-4fd4-a655-084243c8d982"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/28272/tmp_zgKwSz.svg","show":true,"text":null,"uuid":"a074c2a2-48c9-416d-ac00-3fcf23ec25ba"},"once":false}︡{"done":true}










︠0c6a736d-2080-41c7-bfde-d665952f0dcd︠
def CMIPcheck(G):
    q = True
    for j in range (0,G.order()):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    if q:
        return True
    else:
        return False

for i in range(2,8): #online range(2,6) takes a while, but range(2,5) is pretty quick
    for G in graphs.nauty_geng(str(i) + " -c"):
        print (str(G.spanning_trees_count()) + "\t" + str(G.size()) + "\t" + str(CMIPcheck(G)) + "\t" + G.graph6_string())
    print ("Done: " + str(i))

︡bd3b6616-1cce-41c8-b844-c5623e2cce84︡
︠8e5ab503-8a84-4579-aedf-39da92dfc27e︠

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def CMIPcheck(G):
    q = True
    for j in range (0,G.order()):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    if q:
        return True
    else:
        return False

for i in range(2,8): #online range(2,6) takes a while, but range(2,5) is pretty quick
    for G in graphs.nauty_geng(str(i) + " -C"):
        print (str(G.spanning_trees_count()) + "\t" + str(G.size()) + "\t" + str(CMIPcheck(G)) + "\t" + G.graph6_string() + "\t" + str(G.order()))
︡2053ccf8-c107-4b71-a0a0-9c9924e0dd4a︡
︠c9a689c4-5990-43ce-a125-4043cfe29484︠

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

for i in range(2,8): #online range(2,6) takes a while, but range(2,5) is pretty quick
    for G in graphs.nauty_geng(str(i) + " -C"):
        x = 1
        while True:
            x+= 1
            flag = True
            for j in range(0,i):
                if (flag == False):
                    break
                S = Sandpile(G,j)
                for k in range(0,i-1):
                    if (S.identity() != ((SandpileConfig(S,[0]*k + [x] + [0]*(i-k-2))).equivalent_recurrent())):
                        flag = False
                        break
            if flag:
                print(str(x))
                break
︡04b662dd-3ca5-403f-8542-670b8656e5cb︡
︠ea8b5311-66df-404c-964b-61b6bb6d6545s︠

def x(G):
    x = 1
    while True:
        x+= 1
        flag = True
        for j in range(0,G.order()):
            if (flag == False):
                break
            S = Sandpile(G,j)
            for k in range(0,G.order()-1):
                if (S.identity() != ((SandpileConfig(S,[0]*k + [x] + [0]*(G.order()-k-2))).equivalent_recurrent())):
                    flag = False
                    break
        if flag:
            return x

G = graphs.DiamondGraph().disjoint_union(graphs.DiamondGraph())
G.relabel()
G.add_edge(2,4)
G.add_edge(5,6)
x(G)
G = G.disjoint_union(graphs.DiamondGraph())
G.relabel()
G.delete_edge(5,7)
G.add_edge(5,6)
G.add_edge(7,9)
x(G)
G = graphs.DiamondGraph().disjoint_union(graphs.DiamondGraph())
G = G.disjoint_union(G)
G.relabel()
G.add_edge(0,2)
G.add_edge(12,14)
G.add_edge(15,3)
G.add_edge(9,6)
x(G)
︡894d4cbe-298d-4934-9e88-8f4d812fcbc9︡{"stdout":"16"}︡{"stdout":"\n"}︡{"stdout":"24"}︡{"stdout":"\n"}︡{"stdout":"32"}︡{"stdout":"\n"}︡{"done":true}










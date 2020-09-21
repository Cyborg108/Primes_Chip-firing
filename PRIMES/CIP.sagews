︠37817c79-8a73-4994-a0c9-87f2d75e68f3︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
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

for i in range(3,10):
    count = 0;
    for G in graphs.nauty_geng(str(i) + " -c"):
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










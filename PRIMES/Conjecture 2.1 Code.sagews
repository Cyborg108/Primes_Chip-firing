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

for i in range(12,13): #online range(2,6) takes a while, but range(2,5) is pretty quick
    num = 0
    start = 0 * (10**6)        #start, end's key number ranges from 0 to 153621
    end   = 153621 * (10**6)
    for G in graphs.nauty_geng(str(i) + " -C"):
        num += 1
        if (num < start):
            continue
        if (num == end):
            print "Done: %d" % i
            break
        if num % 10**6 == 0:
            print("%d" % (num/10**6))
        q = True
        for j in range (0,i):
            S = Sandpile(G,j)
            if S.identity() != S.max_stable():
                q = False
                break
        if q:
            if known(G,i):
                continue
            else:
                print "fail: %d" % i
                G.show()
                print G.graphviz_string()
                G.show3d()










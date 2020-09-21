︠fb4223bc-75dd-49a7-8393-41e90055c6be︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
    G must not be a complete graph, an odd cycle graph, or a tree
    G must have vertex connectivity greater than 1 ("irreducible")
Results:
    Passed all sizes at most 7.
    Failed at size 8: 3 different
    Passed size 9
    Size 10: Count reached 100k, no flagged graphs
            As skipping for count takes too long, switched to num. Set progress to 100k for num, despite massive loss.
            Looks like size 10 will take a long time (size 9 had 261 thousand, so size 10 is a lot larger...)
Note:
    There are roughly 9.7 million biconnected graphs with 10 vertices.
    Eliminated -d2 condition, as well as vertex_connectivity check as that's redundant from -C. Greatly speeds up the process.
    Changed output from every 1000 to every 10000, takes approximately 30 seconds per output.
    Takes approximately 3-4 minutes to run through 5 million pre-progress graphs.
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

for i in range(10,11): #online range(2,6) takes a while, but range(2,5) is pretty quick
    num = 0
    progress = 974 * 10000
    for G in graphs.nauty_geng(str(i) + " -C"):
        num += 1
        if (num <= progress):
            if (num == progress):
                print("*")
            continue
        if num % 10000 == 0:
            print("%d" % (num/10000))
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
    print "Done: %d" % i
︡a1ea59b0-c1a9-47d7-bb18-155cb800994e︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, connected, undirected\\n    G must not be a complete graph, an odd cycle graph, or a tree\\n    G must have vertex connectivity greater than 1 (\"irreducible\")\\nResults:\\n    Passed all sizes at most 7.\\n    Failed at size 8: 3 different\\n    Passed size 9\\n    Size 10: Count reached 100k, no flagged graphs\\n            As skipping for count takes too long, switched to num. Set progress to 100k for num, despite massive loss.\\n            Looks like size 10 will take a long time (size 9 had 261 thousand, so size 10 is a lot larger...)\\nNote:\\n    There are roughly 9.7 million biconnected graphs with 10 vertices.\\n    Eliminated -d2 condition, as well as vertex_connectivity check as that\\'s redundant from -C. Greatly speeds up the process.\\n    Changed output from every 1000 to every 10000, takes approximately 30 seconds per output.\\n    Takes approximately 3-4 minutes to run through 5 million pre-progress graphs.\\n'"}︡{"stdout":"\n"}︡{"stdout":"*"}︡{"stdout":"\n934"}︡{"stdout":"\n935"}︡{"stdout":"\n936"}︡{"stdout":"\n937"}︡{"stdout":"\n938"}︡{"stdout":"\n939"}︡{"stdout":"\n940"}︡{"stdout":"\n941"}︡{"stdout":"\n942"}︡{"stdout":"\n943"}︡{"stdout":"\n944"}︡{"stdout":"\n945"}︡{"stdout":"\n946"}︡{"stdout":"\n947"}︡{"stdout":"\n948"}︡{"stdout":"\n949"}︡{"stdout":"\n950"}︡{"stdout":"\n951"}︡{"stdout":"\n952"}︡{"stdout":"\n953"}︡{"stdout":"\n954"}︡{"stdout":"\n955"}︡{"stdout":"\n956"}︡{"stdout":"\n957"}︡{"stdout":"\n958"}︡{"stdout":"\n959"}︡{"stdout":"\n960"}︡{"stdout":"\n961"}︡{"stdout":"\n962"}︡{"stdout":"\n963"}︡{"stdout":"\n964"}︡{"stdout":"\n965"}︡{"stdout":"\n966"}︡{"stdout":"\n967"}︡{"stdout":"\n968"}︡{"stdout":"\n969"}︡{"stdout":"\n970"}︡{"stdout":"\n971"}︡{"stdout":"\n972"}︡{"stdout":"\n973"}︡{"stdout":"\n974"}︡{"stdout":"\nDone: 10"}︡{"stdout":"\n"}︡{"done":true}










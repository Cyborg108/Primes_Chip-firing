︠bcd46775-9c73-4b62-869a-403b773141a0s︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
    G must not be a complete graph, an odd cycle graph, or a tree
    Working to implement lemma:overlap and lemma:attach through knowns as a function on G,j. Cannot figure out.
'''
import copy

def known(G,i):
    if G==graphs.CompleteGraph(i):        #complete
        return True
    elif G.is_cycle() and i%2==1:         #odd cycle
        return True
    elif len(G.edges()) == i-1:             #tree
        return True
    return False

def knowns(G,j):
    H = copy.deepcopy(G)
    H.delete_vertex(j)
    

for i in range(2,6): #online range(2,6) takes a while, but range(2,5) is pretty quick
    p = True
    for G in graphs(i):
        if G.is_connected()==False:
            continue
        if known(G,i):
            continue
        for j in range (0,i):
#            if knowns(G,j):
#                continue
            S = Sandpile(G,j)
            if S.identity() == S.max_stable():
                p = False
                print("fail: %d"% i)
                S.identity().show(colors=False,heights=True,directed=False)
    if p:
        print("pass: %d"% i)
︡e104eea8-b18a-4028-a86f-36eb8a273f9d︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, connected, undirected\\n    G must not be a complete graph, an odd cycle graph, or a tree\\n    Working to implement lemma:overlap and lemma:attach through knowns as a function on G,j. Cannot figure out.\\n'"}︡{"stdout":"\n"}︡{"stdout":"pass: 2"}︡{"stdout":"\npass: 3\nfail: 4\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_DQ5tFM.svg","show":true,"text":null,"uuid":"6b133b4f-1e0b-4814-897d-5680a07b42a3"},"once":false}︡{"stdout":"fail: 4"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_3wXUFR.svg","show":true,"text":null,"uuid":"12728ef4-776b-4bed-af6c-5d678c5b0afc"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_7zD6P3.svg","show":true,"text":null,"uuid":"05f72837-50f6-4d81-afd2-be8f7beffc0f"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp__ErBd8.svg","show":true,"text":null,"uuid":"46a433ac-b356-4901-9826-3de90aebef84"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_JFroIr.svg","show":true,"text":null,"uuid":"f5892fb3-0298-4e7e-85d0-0189c9dd2ae3"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_CrV672.svg","show":true,"text":null,"uuid":"4913e071-0349-4a5e-a831-519546c6cdad"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_gMOSkT.svg","show":true,"text":null,"uuid":"3c4e7ae2-7480-4418-bbf0-5d9fd44921ec"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_xH8LC6.svg","show":true,"text":null,"uuid":"9aecc583-319c-4d15-bc36-c625636f8106"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_7CizNy.svg","show":true,"text":null,"uuid":"f66a3433-2924-4b92-b54b-8aab64b90ec1"},"once":false}︡{"stdout":"fail: 5\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_G5Vplr.svg","show":true,"text":null,"uuid":"b1157711-2402-41d4-ac76-44128c0c2224"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_W5wC6m.svg","show":true,"text":null,"uuid":"56ab3563-8ba5-4237-84ba-1071f9f2a8c9"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_jJ5zTj.svg","show":true,"text":null,"uuid":"12c350ff-c379-4c0b-8ab9-a27f3638b68a"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_46veIl.svg","show":true,"text":null,"uuid":"4effbf97-07e9-4f9f-90f3-eebe95117991"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_s8Ojsl.svg","show":true,"text":null,"uuid":"af0781e8-f5dc-4f1c-8e4f-04170c51b35b"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_UXCtxh.svg","show":true,"text":null,"uuid":"5c828b95-1085-4c4d-9cd1-ea2da9c52ea5"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_k1bwED.svg","show":true,"text":null,"uuid":"271a0ebb-dd49-462c-81b5-4acf269b0eef"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_GVb3Eq.svg","show":true,"text":null,"uuid":"5ffb3965-3f3f-4f47-8b0c-fe437ffa88e1"},"once":false}︡{"stdout":"fail: 5"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/103/tmp_UPdcIn.svg","show":true,"text":null,"uuid":"fe3284a6-a198-452f-b983-80239faeba98"},"once":false}︡{"done":true}










︠37817c79-8a73-4994-a0c9-87f2d75e68f3︠
'''
Restrictions placed on G,S,j:
    G must be finite, connected, undirected
    G must not be a complete graph, an odd cycle graph, or a tree
    G must have vertex connectivity greater than 1 ("irreducible")
Results:
    Passed all sizes at most 7.
    Failed at size 8: 3 different
    Passed size 9
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

for i in range(2,9): #online range(2,6) takes a while, but range(2,5) is pretty quick
    count = 0;
    for G in graphs.nauty_geng(str(i) + " -c -d1"):
        p = False
        q = True
#        if G.vertex_connectivity()<=1:
#            continue
        count += 1
        if count % 1000 == 0:
            sys.stdout.write('.')
        for j in range (0,i):
            S = Sandpile(G,j)
            if S.identity() == S.max_stable():
                p = True
            else:
                q = False
                break
        if p and q:
            if known(G,i):
                continue
            else:
                print("fail: %d"% i)
                G.show()
    print("Done: %d"%i)
︡c1873816-62f6-48e5-a3ac-8130bc2be201︡{"stdout":"'\\nRestrictions placed on G,S,j:\\n    G must be finite, connected, undirected\\n    G must not be a complete graph, an odd cycle graph, or a tree\\n    G must have vertex connectivity greater than 1 (\"irreducible\")\\nResults:\\n    Passed all sizes at most 7.\\n    Failed at size 8: 3 different\\n    Passed size 9\\n'"}︡{"stdout":"\n"}︡{"stdout":"Done: 2"}︡{"stdout":"\nDone: 3\nDone: 4\nDone: 5"}︡{"stdout":"\nfail: 6\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_VytNoP.svg","show":true,"text":null,"uuid":"d292c127-ea7d-4704-a480-6f307497876f"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_yAJcYl.svg","show":true,"text":null,"uuid":"e338037a-b6c0-4d73-8f0d-d5ac4083cbe4"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_rq1j_S.svg","show":true,"text":null,"uuid":"7bdfabbe-674e-448a-86a9-b1082d013fc9"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_rZJGch.svg","show":true,"text":null,"uuid":"55e2fb0d-b598-405e-a864-f40ba6a0bfa5"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_v_o0YE.svg","show":true,"text":null,"uuid":"a5285bc2-9760-4e32-a948-864658b22dbc"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_rJvP_B.svg","show":true,"text":null,"uuid":"c6af5535-b6e8-45c7-b7c0-362e76172bb6"},"once":false}︡{"stdout":"fail: 6"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_namCOc.svg","show":true,"text":null,"uuid":"dc3a3fd6-a970-47f3-89c8-4d405e263a03"},"once":false}︡{"stdout":"Done: 6"}︡{"stdout":"\nfail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_qYhD6W.svg","show":true,"text":null,"uuid":"22582fdb-11e5-4dc9-846a-dbbb3cca1004"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_of9Jvm.svg","show":true,"text":null,"uuid":"08202392-38ae-46ac-9f31-fd09eed81bdf"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_7mit7u.svg","show":true,"text":null,"uuid":"13150fb2-fdb4-48c5-8c6f-ca3bc90073b7"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_lJvtBE.svg","show":true,"text":null,"uuid":"7ba3e950-36f5-4583-b942-c758807318b3"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_ng8PJt.svg","show":true,"text":null,"uuid":"c6d9c837-8540-4bde-8755-16a30d4457d3"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_V8TJJQ.svg","show":true,"text":null,"uuid":"10cad6df-f614-49cd-8966-78662288d594"},"once":false}︡{"stdout":"fail: 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_fxkLON.svg","show":true,"text":null,"uuid":"e921403b-4e5f-4f50-9a28-c671d260d2d4"},"once":false}︡{"stdout":"Done: 7"}︡{"stdout":"\nfail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_wo5WOG.svg","show":true,"text":null,"uuid":"0a1783e5-879d-413e-b555-930d0872f94a"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_Gv9xky.svg","show":true,"text":null,"uuid":"1706dcbe-38fc-4635-a97b-88a000cada6f"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_KUZasD.svg","show":true,"text":null,"uuid":"7f4a6740-d7ce-459c-b868-2fa93a4bfe84"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_BYqLnE.svg","show":true,"text":null,"uuid":"79683f7e-a182-4fd7-a64c-70ada5ff43f9"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_amit8W.svg","show":true,"text":null,"uuid":"7f677ea3-2395-4fb5-a6ac-cbfc3af054fc"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_PyKGVG.svg","show":true,"text":null,"uuid":"5821b791-0f57-46fe-90b5-ea019c875b3b"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_caEHgL.svg","show":true,"text":null,"uuid":"6b38195d-e50b-4298-8d9e-cd8145fe67bc"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_xlAohL.svg","show":true,"text":null,"uuid":"c18c86e5-a799-4a14-ad19-7378e830d0cb"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_suQ5rU.svg","show":true,"text":null,"uuid":"985e7882-0828-4c75-8ebc-3f642fe4ce41"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_TfgZAK.svg","show":true,"text":null,"uuid":"b67848da-f3a9-42e7-b93b-406fec0c21a4"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_gzql1S.svg","show":true,"text":null,"uuid":"8f4e6d29-7f31-415f-91a4-0eaa401007bb"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_CamUh4.svg","show":true,"text":null,"uuid":"85379b52-5fb2-4e0c-abdd-b747506d826d"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_aFXcsy.svg","show":true,"text":null,"uuid":"d77799bc-00aa-4573-bb2b-8d0a565ac25d"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_fDHPtV.svg","show":true,"text":null,"uuid":"28bc6a75-52bd-415c-a1cf-5b295dd74020"},"once":false}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_AWWlnD.svg","show":true,"text":null,"uuid":"4cec76c9-129a-404c-a510-eac7ac2ebe67"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_I8TEwE.svg","show":true,"text":null,"uuid":"cb18a1ac-5652-43cb-8b85-3b78127a0112"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_kLdMlt.svg","show":true,"text":null,"uuid":"479f799c-ab14-4283-972a-68413c19957f"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_cAELK8.svg","show":true,"text":null,"uuid":"d7ba7780-6cd3-4884-924e-8c7c6f78380a"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_7BSXyc.svg","show":true,"text":null,"uuid":"55879ae0-7beb-4c95-9bf4-ab5e41592de0"},"once":false}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_1nJuiT.svg","show":true,"text":null,"uuid":"9c1d2b17-0465-4a7b-ad7f-f21802ac0bbe"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_N5CF21.svg","show":true,"text":null,"uuid":"05bc5398-e671-4b21-b42a-d9dc5571ba5c"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_Rw6JdK.svg","show":true,"text":null,"uuid":"aec301d2-feac-421d-a022-f8324931481d"},"once":false}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_spzXza.svg","show":true,"text":null,"uuid":"fa7d951f-7a66-42f4-aa84-5b8cbf88f56e"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_glKGgb.svg","show":true,"text":null,"uuid":"c89c0155-13b7-4558-b1e8-52cddb6b7f0c"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_92ul_L.svg","show":true,"text":null,"uuid":"8e0fab5c-1b0b-4ad2-a2f2-0f869de4fba3"},"once":false}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_pJibRc.svg","show":true,"text":null,"uuid":"13f4dd59-9462-4871-8239-0134ed94e8b4"},"once":false}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_4sZTSr.svg","show":true,"text":null,"uuid":"7fc68dd0-310c-4cb1-8a13-aec30d1c1bef"},"once":false}︡{"stdout":"."}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_oa4WyZ.svg","show":true,"text":null,"uuid":"b3ecd184-6d38-47eb-9bf6-d8a85cec23f0"},"once":false}︡{"stdout":"fail: 8"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/91/tmp_oXwjvL.svg","show":true,"text":null,"uuid":"fbfacb70-0c43-4ace-aa1b-47e1a409db92"},"once":false}︡{"stdout":"."}︡{"stdout":"Done: 8"}︡{"stdout":"\n"}︡{"done":true}











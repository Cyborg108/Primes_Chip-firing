︠caf43c8c-71e0-4a1f-82f3-364d912ec064s︠
import copy

def CMIPcheck(G,s):
    q = True
    for j in range (0,G.order()):
        S = Sandpile(G,j)
        if S.identity() != S.max_stable():
            q = False
            break
    if q:
        if s:
            print "True " + str(G.order())
        return True
    else:
        if s:
            print "False " + str(G.order())
        return False


def CMIPpCheck(G,s):
    H = copy.copy(G)
    i = G.order()
    H.add_vertex(i)
    for j in range(0,i):
        H.add_edge(i,j)
        if CMIPcheck(H,False):
            H.delete_edge(i,j)
            continue
        else:
            H.delete_edge(i,j)
            return False
    if s:
        G.show()
    return True

def CMIPknown(G,s):
    '''
    i=G.order()
    #Even cycle
    flag = True
    if i%2==0:
        for j in range(0,i):
            if G.degree(j)==2:
                continue
            else:
                flag = False
                break
        if flag:
            if s:
                print("Even Cycle")
            return True
    #Bipartite graph
    for j in range(2,i-1):
        if G == graphs.CompleteBipartiteGraph(j,i-j):
            if s:
                print("Complete Bipartite")
            return True
    '''
    return False

def AllCMIPpCheck(i):
    for G in graphs.nauty_geng(str(i) + " -c"):
        if G.size()==i-1:
            continue
        if CMIPpCheck(G,False):
            if CMIPknown(G,False):
                continue
            G.show()
    print "Done " + str(i)
︡4b63606a-e61c-400d-9c0b-7bb52fae5952︡{"done":true}
︠5892a9f7-c0f7-4ef4-906a-c22bfe1b3931s︠
for i in range(1,8):
    AllCMIPpCheck(i)
︡5043fbbf-32a9-460f-a0a5-9d170e9b0572︡{"stdout":"Done 1"}︡{"stdout":"\nDone 2\nDone 3"}︡{"stdout":"\nDone 4\nDone 5"}︡{"stdout":"\nDone 6"}︡{"stdout":"\nDone 7"}︡{"stdout":"\n"}︡{"done":true}
︠86da5eb6-2b8f-45ed-ab7f-ba41adc1a05ds︠
AllCMIPpCheck(8)
︡e385ff0e-0e53-433c-9752-d0fc895ee5a9︡{"stdout":"Done 8"}︡{"stdout":"\n"}︡{"done":true}
︠734350f0-ad80-478e-adf7-04d3e145ec00s︠
AllCMIPpCheck(9)
︡dc1eed19-0996-481a-8e90-080ac4d0fc26︡{"stdout":"Done 9"}︡{"stdout":"\n"}︡{"done":true}
︠3d0bca8d-d256-40e7-8284-61a0927e1ec4s︠
import copy
import sys

sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def known(G):
    if G==graphs.CompleteGraph(G.order()):        #complete
        return True
    elif G.is_cycle() and G.order()%2==1:         #odd cycle
        return True
    elif G.size() == G.order()-1:             #tree
        return True
    return False

for i in range(2,12):
    num = 0
    for G in graphs.nauty_geng(str(i) + " -c"):
        num += 1
        q = True
        for j in range (0,i):
            S = Sandpile(G,j)
            if S.identity() != S.max_stable():
                q = False
                break
        if q:
            if known(G):
                continue
            else:
                G.show()
                print(G.graph6_string())
    print "Done " + str(i)

︡a1a35332-58de-4392-b71a-813699ae42bc︡{"stdout":"Done 2\nDone 3\nDone 4"}︡{"stdout":"\nDone 5\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_dAm4Qj.svg","show":true,"text":null,"uuid":"83ea3ad6-bc6b-4de7-b9a2-6509ad19490e"},"once":false}︡{"stdout":"E?bw"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_rygezf.svg","show":true,"text":null,"uuid":"d6d6955f-c857-4ad2-9e8e-ca013ed3e691"},"once":false}︡{"stdout":"ECRo"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_8noaOM.svg","show":true,"text":null,"uuid":"487eb696-4094-4493-8c57-ade3851fb256"},"once":false}︡{"stdout":"ECqg"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_mqDGPy.svg","show":true,"text":null,"uuid":"9faad622-86a6-4582-b7a0-b393ab51346c"},"once":false}︡{"stdout":"ECZO"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_Yc10MW.svg","show":true,"text":null,"uuid":"ffc40154-450a-49d4-beac-84dd40e78acd"},"once":false}︡{"stdout":"ECYW"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_37wShP.svg","show":true,"text":null,"uuid":"83f8659b-0557-4e8a-888e-1e3d04e0aefc"},"once":false}︡{"stdout":"EEiW"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_WN5AT7.svg","show":true,"text":null,"uuid":"2bb476a8-ea05-4726-9093-c9f6d1d43fd1"},"once":false}︡{"stdout":"EQjw"}︡{"stdout":"\nDone 6\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_Ji4I_n.svg","show":true,"text":null,"uuid":"2f1511b9-25b7-4a7a-aa23-8dec321ba380"},"once":false}︡{"stdout":"F?`Fw"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_d_aohd.svg","show":true,"text":null,"uuid":"e58fdf39-2cb7-4a2e-85d9-b4c345441810"},"once":false}︡{"stdout":"FCOfo"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_HhQiYJ.svg","show":true,"text":null,"uuid":"d4db4900-a732-4f32-ba30-50f4b58ba258"},"once":false}︡{"stdout":"FCQeW"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_BlkE6M.svg","show":true,"text":null,"uuid":"511045a0-9b29-4934-a684-fcfb69a26141"},"once":false}︡{"stdout":"FCQVO"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_WIQk0m.svg","show":true,"text":null,"uuid":"25e4406f-4e98-4dee-9cbb-34510d91e74f"},"once":false}︡{"stdout":"FCQrO"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_bz4qc9.svg","show":true,"text":null,"uuid":"471d666d-fb17-4a6b-aeee-7eb6e0891839"},"once":false}︡{"stdout":"FCXfw"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_DTzOux.svg","show":true,"text":null,"uuid":"f4032b1d-91a1-48d5-aa1d-1f389ab6faab"},"once":false}︡{"stdout":"FCusw"}︡{"stdout":"\nDone 7"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_Xq6LCB.svg","show":true,"text":null,"uuid":"07ce18c2-0836-4eca-b8db-b7eb95c47833"},"once":false}︡{"stdout":"G??FEw"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_Ca6mev.svg","show":true,"text":null,"uuid":"71a4eb0c-b6fc-4b83-ba8c-677adb1abf13"},"once":false}︡{"stdout":"G?ACN{"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_z6XPFQ.svg","show":true,"text":null,"uuid":"5af2e227-ffa8-41f8-a30c-fbffb0525d48"},"once":false}︡{"stdout":"G?AF?{"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_AQuAWW.svg","show":true,"text":null,"uuid":"01af6198-5e05-408a-90b5-b13cb1636325"},"once":false}︡{"stdout":"G?ABfO"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_f2xFlc.svg","show":true,"text":null,"uuid":"a783bab7-8ca2-494d-ba56-2b66150eee2a"},"once":false}︡{"stdout":"G?ABvg"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_nnWx54.svg","show":true,"text":null,"uuid":"75ffff33-d6df-4d19-9b63-dfdd3322c17d"},"once":false}︡{"stdout":"G?BDEo"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_JJZ7HV.svg","show":true,"text":null,"uuid":"6f14e9a3-1a80-4b96-bcf9-84766438ccfa"},"once":false}︡{"stdout":"G?BF?w"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_pCFEoJ.svg","show":true,"text":null,"uuid":"36c852ac-82d3-4d74-a8f4-500dd449168e"},"once":false}︡{"stdout":"G?B@t_"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_0A7pnB.svg","show":true,"text":null,"uuid":"83c070c2-fc40-4e26-a7fc-b0b51218efbb"},"once":false}︡{"stdout":"G?B@no"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_VLkPjm.svg","show":true,"text":null,"uuid":"acad8748-384e-4d0c-a6d1-dd1a23663976"},"once":false}︡{"stdout":"G?`@F{"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_S_TFkn.svg","show":true,"text":null,"uuid":"6078229e-1bca-473a-b076-04aea5196c1c"},"once":false}︡{"stdout":"G?`CVs"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_xvZtF8.svg","show":true,"text":null,"uuid":"c59a27ac-28df-4b65-b191-4910fd465a77"},"once":false}︡{"stdout":"G?`FE_"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_YnA3XD.svg","show":true,"text":null,"uuid":"24133713-22e3-4407-bbdd-955c082b0003"},"once":false}︡{"stdout":"G?`F]w"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_NTbcct.svg","show":true,"text":null,"uuid":"f21add1f-946d-4161-bebe-f391401af032"},"once":false}︡{"stdout":"G?bDKk"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_44ZU4y.svg","show":true,"text":null,"uuid":"3f4cf47d-b818-4dc1-9a34-eccbd5665b8f"},"once":false}︡{"stdout":"G?`af?"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_4ZHm8l.svg","show":true,"text":null,"uuid":"cff69360-22a7-4146-8cb8-c3c11d44f98a"},"once":false}︡{"stdout":"G?aJEw"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_rKmW9L.svg","show":true,"text":null,"uuid":"6209fdcb-7570-49b1-9795-8715e6b4989c"},"once":false}︡{"stdout":"G?aJC{"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_HLxD2q.svg","show":true,"text":null,"uuid":"a914f45d-21bc-477c-9f4f-01678eab7b9e"},"once":false}︡{"stdout":"G?aJeW"}︡{"stdout":"\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/763/tmp_Qsh_tK.svg","show":true,"text":null,"uuid":"6c8e9431-1b9e-4643-968b-8c9960ed25af"},"once":false}︡{"stdout":"G?aJc["}︡{"stdout":"\n"}︡{"stderr":"Error in lines 13-29\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1234, in execute\n    flags=compile_flags), namespace, locals)\n  File \"\", line 8, in <module>\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1323, in identity\n    return deepcopy(self._identity)\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 688, in __getattr__\n    self._set_identity()\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 1296, in _set_identity\n    self._identity = (m&m).dualize()&m\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3450, in __and__\n    return ~(self+other)\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3698, in __invert__\n    return self._stabilize[0]\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3045, in __getattr__\n    self._set_stabilize()\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3643, in _set_stabilize\n    c[e[1]] += dm[0]* e[2]\n  File \"/ext/sage/sage-8.9_1804/local/lib/python2.7/site-packages/sage/sandpiles/sandpile.py\", line 3018, in __setitem__\n    dict.__setitem__(self,key,item)\n  File \"src/cysignals/signals.pyx\", line 320, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}










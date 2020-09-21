︠7a50cfc0-0e1c-45c6-8aec-9bb01e590849s︠
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
︡61643dda-9aec-49c1-8f9a-c7f397afbb76︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/308/tmp_cF5xps.svg","show":true,"text":null,"uuid":"af2afe48-1956-4b7c-a347-0d6d86a354c8"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/308/tmp_eSHgKu.svg","show":true,"text":null,"uuid":"98ac2a38-2f3e-4bd1-9e58-c7ddb8585120"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/308/tmp_G1fck_.svg","show":true,"text":null,"uuid":"dc140de6-f7a0-49da-b749-a0529798c4f3"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/308/tmp_gfvkLK.svg","show":true,"text":null,"uuid":"af24fb9e-9fc7-4a7c-904c-ab5349d5394a"},"once":false}︡{"done":true}
︠8b235a32-541b-4b02-8910-4756eb8a8f63︠
G = graphs.CompleteBipartiteGraph(5,7)
G.add_vertex(12)
G.add_edge(12,0)
pos_dict = {}
for i in range (0,5):
    x = 5
    y = 6 * i + 5
    pos_dict[i] = [x,-y]
for i in range (5, 12):
    x = 15
    y = 4 * (i - 5) + 5
    pos_dict[i] = [x,-y]
pos_dict[12] = [0,0]
G.plot(pos=pos_dict,talk=True)
︡a0e3d08d-e036-48ae-a9d8-e7dcb124f078︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/146/tmp_KGPgZp.svg","show":true,"text":null,"uuid":"c7faa9ac-e60b-431f-b2c1-1e48fbfd559c"},"once":false}︡{"done":true}
︠cdecefde-6478-4d60-890b-18a13cb1148f︠
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
pos_dict={0:[0,0],1:[0,1],2:[1,1],3:[1,0]}
color={'#FFFFFF':[0,1,2,3]}
G = Graph({0:[],1:[0],2:[1,0],3:[0,2]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color,vertex_labels=False)

pos_dict={0:[0,0],1:[0,1],2:[1,1],3:[1,0],4:[-0.5,1.5],5:[1.5,-0.5]}
color={'#FFFFFF':[0,1,2,3],'#AAFFFF':[4,5]}
G = Graph({0:[],1:[0],2:[1,0],3:[0,2],4:[1],5:[3]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2.0,2.0],vertex_colors=color,vertex_labels=False)

pos_dict={0:[0,0],1:[0,1],2:[1,1],3:[1,0]}
color={'#FFFFFF':[1,2,3],'#AAFFAA':[0]}
G = Graph({0:[],1:[0],2:[1,0],3:[0,2]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color,vertex_labels=False)
︡9190ea57-1704-4a4e-9c56-e678d4f28a78︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_P6xGxj.svg","show":true,"text":null,"uuid":"34c3d9ad-2987-48de-b293-334da4ec37d4"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_BAFGGe.svg","show":true,"text":null,"uuid":"b02b5074-9da4-42ce-925e-9729bf869371"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_bNTtY0.svg","show":true,"text":null,"uuid":"ecc703e1-64f2-479f-9f7c-29ef54848f0c"},"once":false}︡{"done":true}
︠0d450dc4-80e1-4141-aaf7-e081caf4a07bs︠
pos_dict={1:[0,0],2:[0,1],3:[1,1],4:[1,0]}
color={'#FFFFFF':[1,2,3,4]}
G = Graph({1:[],2:[1],3:[2,1],4:[1,3]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1,1],vertex_colors=color)

pos_dict={1:[0,0],2:[0,1],3:[1,1],4:[1,0], 5:[-0.7,-0.7]}
color={'#FFFFFF':[1,2,3,4,5]}
G = Graph({1:[],2:[1],3:[2,1],4:[1,3],5:[1]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.5,1.5],vertex_colors=color)
︡a9edd2ff-df06-42b5-a2ae-037e70b43698︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_2_Rj2v.svg","show":true,"text":null,"uuid":"791f51bd-c06e-4098-a38e-f30790b99de0"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_YMy5T8.svg","show":true,"text":null,"uuid":"a348738f-bbba-4bf2-b73e-8fd8624f7262"},"once":false}︡{"done":true}
︠8a826d41-bda5-4713-98fa-a89dad90c7a4s︠
pos_dict={1:[1,4],2:[0,2],3:[2,2],4:[1,0],5:[4,0],6:[3,2],7:[5,2],8:[4,4]}
color = {'#FFFFFF':[1,2,3,4,5,6,7,8]}
G = Graph({1:[],2:[1],3:[1,2],4:[2,3],5:[4],6:[5],7:[5,6],8:[6,7,1]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[5,5],vertex_colors=color,vertex_labels=False)
︡4817ac62-1a08-44c9-b4bf-2c717b6574d2︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/118113/tmp_qFUUTg.svg","show":true,"text":null,"uuid":"e4ac046c-8a11-4751-a401-3a535e9c670b"},"once":false}︡{"done":true}
︠ed1b4d87-91af-4d3b-b6ba-d776216e0ad1s︠
pos_dict={1:[0,0],2:[2*1.15,0],3:[3*1.15,2],4:[1*1.15,2],5:[0,3],6:[2*1.15,3],7:[3*1.15,5],8:[1*1.15,5]}
color = {'#FFFFFF':[1,2,3,4,5,6,7,8]}
G = Graph({1:[],2:[1],3:[1,2],4:[1,2,3],5:[1],6:[5,2],7:[5,6,3],8:[5,6,7,4]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[5,5],vertex_colors=color,vertex_labels=False)
︡647381ce-8905-41d8-b37c-ca4502a3e4db︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/118113/tmp_dUc5bs.svg","show":true,"text":null,"uuid":"5a7df7d1-9211-427d-a274-0aff4188d47a"},"once":false}︡{"done":true}
︠e5be9b70-efcd-401b-b325-a5af299f9efds︠
pos_dict={1:[0,0],2:[0,1],3:[1,0],4:[1,1],5:[2,0],6:[2,1],7:[3,0],8:[3,1]}
color = {'#FFFFFF':[1,2,3,4,5,6,7,8]}
G = Graph({1:[],2:[1],3:[1,2],4:[1,2,3],5:[3,4],6:[3,4,5],7:[5,6],8:[5,6,7]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[5,5],vertex_colors=color,vertex_labels=False)
︡8837287d-718e-4afa-a682-42db4e0de6b9︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/118113/tmp_5ZI28B.svg","show":true,"text":null,"uuid":"498d5835-2041-4bd6-9bc1-a241a5610acd"},"once":false}︡{"done":true}
︠88c12135-5750-495e-a035-d7975cc27677︠
pos_dict={1:[0,0],2:[0,1],3:[1,0],4:[-1,0],5:[-1,-1]}
color = {'#FFFFFF':[1,2,3,4,5]}
G = Graph({1:[],2:[1],3:[1],4:[1],5:[4]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
color={'#FFFFFF':[0,1,2,3,4]}
graphs.CycleGraph(5).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
graphs.CompleteGraph(5).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)

︡184c656c-971b-47f0-a009-897fc19c2b76︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_REhXNw.svg","show":true,"text":null,"uuid":"c9f9b35a-f965-47e7-b8f2-1c85ae08125d"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_lQMTlp.svg","show":true,"text":null,"uuid":"edaeb143-0af0-4885-a94a-48db96678119"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_MIIxif.svg","show":true,"text":null,"uuid":"47616fb5-9e84-4e6c-97df-183c22283fde"},"once":false}︡{"done":true}
︠4b3b50dd-4ab1-4579-b973-606a960806acs︠
pos_dict={'S':[0,0],'2':[0,1],'3':[1,1],'1':[1,0]}
color={'#FFFFFF':['3','1','2'],'#AAFFAA':['S']}
G = Graph({'S':[],'2':['S'],'3':['2','S'],'1':['S','3']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'3':[0,1],'0':[1,1],'2':[1,0]}
color={'#FFFFFF':['3','0','2'],'#AAFFAA':['S']}
G = Graph({'S':[],'3':['S'],'0':['3','S'],'2':['S','0']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)
︡b39ed360-52b5-4a8e-a6c3-591e976f44b7︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_l7VIVH.svg","show":true,"text":null,"uuid":"a906284a-4fab-4b57-b268-5fc41825b475"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_boydW5.svg","show":true,"text":null,"uuid":"61205f58-c1a4-4eff-aa9f-6f478b15f7ac"},"once":false}︡{"done":true}
︠40013a7c-0ccd-4a37-9c83-2344eba25efes︠
pos_dict={0:[0,0],1:[0,1],2:[1,1],3:[1,0],4:[-0.5,1.5],5:[1.5,-0.5]}
color={'#FFFFFF':[0,2,4,5],'#AAAAFF':[1,3]}
G = Graph({0:[],1:[0],2:[1,0],3:[0,2],4:[1],5:[3]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2.0,2.0],vertex_colors=color,vertex_labels=False)
︡1608e156-c725-431f-b6f0-75b734cd7323︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/52015/tmp_PGJHEM.svg","show":true,"text":null,"uuid":"004fcecd-9aa2-47c6-9425-89cef5192c4e"},"once":false}︡{"done":true}
︠54af455e-4052-47b8-8999-01c3b3b2a1cds︠
G = graphs.DiamondGraph()
H = G.disjoint_union(G)
J = G.disjoint_union(H)
J.relabel()
J.show(talk=True)
J.add_edge(1,3)
J.add_edge(6,5)
J.add_edge(8,10)
pos_dict={0:[0,0],1:[-0.5,.866],2:[1,0.866*2],3:[0,0.866*2],4:[1.5,-0.866],5:[2,0],6:[1.5,0.866],7:[0.5,0.866],8:[0.5,-0.866],9:[1,0],10:[-0.5,-0.866],11:[-1,0]}
J.plot(talk=True, pos = pos_dict,vertex_labels=False,vertex_size=700)
︡e5e10cff-4a6e-4d2a-8a1d-046c593883ac︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/319/tmp_w1RMQm.svg","show":true,"text":null,"uuid":"a5ffbed2-f47a-4bdc-97a8-1e1e5b399a19"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/319/tmp_7FTIGi.svg","show":true,"text":null,"uuid":"98a21459-4307-426c-9279-9c542713741b"},"once":false}︡{"done":true}
︠76f861f5-43db-4941-9646-9bc9af25ef4ds︠
pos_dict={'S':[0,0],'1':[0,1],'2':[1,1],'3':[1,0]}
color={'#AAFFFF':['1','2','3'],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],'2':['1'],'3':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],' 2 ':[0,1],'2':[1,1],'0':[1,0]}
color={'#AAAAFF':['2'],'#FFFFFF':['0',' 2 '],'#AAFFAA':['S']}
G = Graph({'S':[],' 2 ':['S'],'2':[' 2 '],'0':['S','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'3':[0,1],'0':[1,1],'1':[1,0]}
color={'#AAAAFF':['3'],'#FFFFFF':['1','0'],'#AAFFAA':['S']}
G = Graph({'S':[],'3':['S'],'0':['3'],'1':['S','0']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0,0],'  1  ':[0,1],' 1 ':[1,1],'1':[1,0]}
color={'#FFFFFF':['  1  ','1',' 1 '],'#AAFFAA':['S']}
G = Graph({'S':[],'  1  ':['S'],' 1 ':['  1  '],'1':['S',' 1 ']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)
︡28a3afb5-a2aa-4914-a0ee-9b066e5fb12d︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/17263/tmp_xu2Sd1.svg","show":true,"text":null,"uuid":"8cab8ce2-d0d6-4c54-b080-f30a5786ddd3"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/17263/tmp_0_Y7XJ.svg","show":true,"text":null,"uuid":"40257317-2a05-4077-8696-43c8f70b0f30"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/17263/tmp_kg_nu2.svg","show":true,"text":null,"uuid":"148548e7-125b-4cdd-9633-703fd13b422c"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/17263/tmp_aclnwU.svg","show":true,"text":null,"uuid":"657af337-7cc8-40b6-a4cc-633a82494f46"},"once":false}︡{"done":true}
︠35a3497b-816f-4e34-b946-a4741eaa6722s︠
pos_dict={'S':[-1,0],'0':[-0.623,0.782],' 0 ':[0.223,0.975],'  0  ':[0.901,0.434], '   0   ':[0.901,-0.434], '    0    ':[0.223,-0.975], '     0     ':[-0.623,-0.782]}
color={'#FFFFFF':['0',' 0 ', '  0  ', '   0   ', '    0    ', '     0     '],'#AAFFAA':['S']}
G = Graph({'S':[],'0':['S'],' 0 ':['0'],'  0  ':[' 0 '],'   0   ':['  0  '],'    0    ':['   0   '],'     0     ':['    0    ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.5,1.5],vertex_colors=color)

pos_dict={'S':[-1,0],'1':[-0.623,0.782],' 1 ':[0.223,0.975],'  1  ':[0.901,0.434], '   1   ':[0.901,-0.434], '    1    ':[0.223,-0.975], '     1     ':[-0.623,-0.782]}
color={'#AAFFFF':['1',' 1 ', '  1  ', '   1   ', '    1    ', '     1     '],'#AAFFAA':['S']}
G = Graph({'S':[],'1':['S'],' 1 ':['1'],'  1  ':[' 1 '],'   1   ':['  1  '],'    1    ':['   1   '],'     1     ':['    1    ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.5,1.5],vertex_colors=color)

pos_dict={'S':[-1,0],'0':[-0.623,0.782],'7':[0.223,0.975],'  0  ':[0.901,0.434], '   0   ':[0.901,-0.434], '    0    ':[0.223,-0.975], '     0     ':[-0.623,-0.782]}
color={'#FFFFFF':['0', '  0  ', '   0   ', '    0    ', '     0     '],'#AAFFAA':['S'],'#AAAAFF':['7']}
G = Graph({'S':[],'0':['S'],'7':['0'],'  0  ':['7'],'   0   ':['  0  '],'    0    ':['   0   '],'     0     ':['    0    ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.5,1.5],vertex_colors=color)
︡ba0b325b-8df4-4bf6-bbfc-385d58e7de80︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_nKHGV_.svg","show":true,"text":null,"uuid":"fe4b34c3-577c-4319-b21c-987cd6eac00e"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_3cdrTV.svg","show":true,"text":null,"uuid":"9cb0e0b2-3010-4a6b-ba07-8b8fed8d87fe"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_vUM1w8.svg","show":true,"text":null,"uuid":"7cd58bbf-2179-4538-a2ac-9749798322c0"},"once":false}︡{"done":true}
︠5b3b8833-43f7-4258-b87a-b43fb685e73ds︠
pos_dict={'S':[-1,0],'0':[-0.5,0.866],' 0 ':[0.5,0.866],'  0  ':[1,0], '   0   ':[0.5,-0.866], '    0    ':[-0.5,-0.866]}
color={'#FFFFFF':['0',' 0 ', '  0  ', '   0   ', '    0    '],'#AAFFAA':['S']}
G = Graph({'S':[],'0':['S'],' 0 ':['0'],'  0  ':[' 0 '],'   0   ':['  0  '],'    0    ':['   0   ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.4,1.4],vertex_colors=color)

pos_dict={'S':[-1,0],'1':[-0.5,0.866],' 1 ':[0.5,0.866],'  0  ':[1,0], '   1   ':[0.5,-0.866], '    1    ':[-0.5,-0.866]}
color={'#AAFFFF':['1',' 1 ', '   1   ', '    1    '],'#AAFFAA':['S'],'#FFFFFF':['  0  ']}
G = Graph({'S':[],'1':['S'],' 1 ':['1'],'  0  ':[' 1 '],'   1   ':['  0  '],'    1    ':['   1   ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.4,1.4],vertex_colors=color)

pos_dict={'S':[-1,0],'0':[-0.5,0.866],' 5 ':[0.5,0.866],'-1':[1,0], '   0   ':[0.5,-0.866], '1':[-0.5,-0.866]}
color={'#FFFFFF':['0', '   0   '],'#AAFFAA':['S'],'#AAFFFF':['1'],'#FFAAFF':[' 5 '],'#FFAAAA':['-1']}
G = Graph({'S':[],'0':['S'],' 5 ':['0'],'-1':[' 5 '],'   0   ':['-1'],'1':['   0   ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.4,1.4],vertex_colors=color)

pos_dict={'S':[-1,0],'0':[-0.5,0.866],'6':[0.5,0.866],'  0  ':[1,0], '   0   ':[0.5,-0.866], '    0    ':[-0.5,-0.866]}
color={'#FFFFFF':['0', '  0  ', '   0   ', '    0    '],'#AAFFAA':['S'],'#AAAAFF':['6']}
G = Graph({'S':[],'0':['S'],'6':['0'],'  0  ':['6'],'   0   ':['  0  '],'    0    ':['   0   ','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.4,1.4],vertex_colors=color)
︡f64bc3d9-6738-483f-94bb-b73dfb97f725︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_jayj9J.svg","show":true,"text":null,"uuid":"d97492ac-11a9-494d-89bf-37249c05f16f"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_LDQUCs.svg","show":true,"text":null,"uuid":"6e904b68-c4f0-4aeb-811e-78de090237e2"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_bMCfFY.svg","show":true,"text":null,"uuid":"5a56d8f2-51da-4f00-b048-fd02e86924ed"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_BCAuqp.svg","show":true,"text":null,"uuid":"7924f789-9756-4725-b1a5-d03478f4c365"},"once":false}︡{"done":true}
︠f421c06c-d689-4419-ae3e-8208706b7342s︠
pos_dict={0:[-2,0],1:[-1,0],2:[-0.5,0.866],3:[0.5,0.866],4:[1,0],5:[0.5,-0.866],6:[-0.5,-0.866]}
color={'#FFFFFF':[0,1,2,3,4,5,6]}
G = Graph({0:[],1:[0],2:[1],3:[2],4:[3],5:[4],6:[5,1]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,1.5],vertex_colors=color)
︡3f860f69-f251-4506-8ed3-f5dd293d5e7c︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_ghNmfK.svg","show":true,"text":null,"uuid":"d03e183c-d388-4b71-9eff-a74565df0c8e"},"once":false}︡{"done":true}
︠11a88822-d720-4d3c-940d-de7f9d6827a7s︠
pos_dict={0:[-2,0],'2':[-1,0],1:[-0.5,0.866],'1':[0.5,0.866],'0':[1,0],' 1 ':[0.5,-0.866],'  1  ':[-0.5,-0.866]}
color={'#FFFFFF':[0,'0'],'#AAFFFF':[1,'1',' 1 ','  1  '],'#AAAAFF':['2']}
G = Graph({0:[],'2':[0],1:['2'],'1':[1],'0':['1'],' 1 ':['0'],'  1  ':[' 1 ','2']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,1.5],vertex_colors=color)
︡734d09f2-fefc-4387-8b2a-fc1291ba3ef5︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/309/tmp_Ozkbua.svg","show":true,"text":null,"uuid":"a182fadc-c00c-4d5a-8366-496ef949bec2"},"once":false}︡{"done":true}
︠856f24fb-c7c5-491f-aab7-64b7c6a89a22︠
G = graphs.DiamondGraph()
G = G.disjoint_union(G)
G.relabel()
G.add_edge(5,6)
G = G.disjoint_union(G)
G.relabel()
G.add_edge(10,11)
G.add_edge(1,15)
G.relabel()
# G.show()
pos_dict = {0:[0,-3],1:[1,2],2:[1,0],3:[-2,1],4:[0,3],5:[3,0],6:[-1,0],7:[2,-1],8:[-3,0],9:[1,-2],10:[-2,-1],11:[-1,-2],12:[0,1],13:[-1,2],14:[0,-1],15:[2,1]}
color={'#FFFFFF':[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]}
G.plot(pos=pos_dict,vertex_size=700,figsize=[5,5],vertex_colors=color,vertex_labels=False)
︡7e7ac22e-0b4a-452d-bcc9-68844588de8f︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/17263/tmp_IZnX8Z.svg","show":true,"text":null,"uuid":"21b773e9-b4ee-4e9c-87c6-3b0e18c9eeb0"},"once":false}︡{"done":true}
︠29789c6c-5d73-4122-b8cc-4a0bc69dffbas︠
pos_dict={'S':[0.5,0.866],'1':[0,0],1:[1,0]}
color={'#AAAAFF':['1'],'#AAFFAA':['S'],'#FFFFFF':[1]}
G = Graph({'S':[],'1':['S'],1:['1','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0.5,0.866],'-1':[0,0],2:[1,0]}
color={'#FFFFFF':['-1'],'#AAFFAA':['S'],'#AAAAFF':[2]}
G = Graph({'S':[],'-1':['S'],2:['-1','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)

pos_dict={'S':[0.5,0.866],'0':[0,0],0:[1,0]}
color={'#AAFFAA':['S'],'#FFFFFF':['0',0]}
G = Graph({'S':[],'0':['S'],0:['0','S']})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color)
︡ac23f078-72b4-4560-afd1-b9620adde6bf︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/319/tmp_xg8IGR.svg","show":true,"text":null,"uuid":"0f14c6f6-5a26-427f-8be9-890d607848bd"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/319/tmp_gXhSDn.svg","show":true,"text":null,"uuid":"785fc5d6-6bb2-4770-98f1-5ede5788ff71"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/319/tmp_lFQjxG.svg","show":true,"text":null,"uuid":"f23cf269-020f-43f4-8beb-543a02bff62e"},"once":false}︡{"done":true}
︠35fdea74-6c5e-4330-9687-50f6a50e2b84s︠
pos_dict={1:[0,0],2:[0,1],3:[1,0],4:[-1,0],5:[-1,-1]}
color = {'#FFFFFF':[1,2,3,4,5]}
G = Graph({1:[],2:[1],3:[1],4:[1],5:[4]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
color = {'#AAFFFF':[1,5],'#FFFFFF':[2,3,4]}
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
color={'#FFFFFF':[0,1,2,3,4,5]}
graphs.CycleGraph(6).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
color={'#AAFFFF':[0,2,4],'#FFFFFF':[1,3,5]}
graphs.CycleGraph(6).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
a = 3;
b = 4;
G = graphs.CompleteBipartiteGraph(a,b)
pos_dict = {}
for i in range (0,a):
    x = 0
    y = (b-1) * i
    pos_dict[i] = [x,-y]
for i in range (a, a+b):
    x = 6
    y = (a-1) * (i - a)
    pos_dict[i] = [x,-y]
color={'#FFFFFF':[0,1,2,3,4,5,6]}
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
color={'#AAFFFF':[3,4,5,6],'#FFFFFF':[0,1,2]}
G.plot(pos=pos_dict,vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False)
︡aa2b04d4-fb6f-4e6f-b72c-24252dd8b510︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_TbgZB0.svg","show":true,"text":null,"uuid":"fdad0c55-ec60-46c3-9b49-f309275e9e99"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_7Z6pKQ.svg","show":true,"text":null,"uuid":"6121328d-29b4-4e01-909d-d74b40ed9422"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_i5MEgG.svg","show":true,"text":null,"uuid":"543136fc-bb8a-4a9f-a14f-ea7eb50aad09"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_U_rXPc.svg","show":true,"text":null,"uuid":"bd2c91bb-fe0c-418b-9256-c3333858c124"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_PtxTw8.svg","show":true,"text":null,"uuid":"a93ccc5d-e2e6-4b75-aea1-04d0de7e80b4"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/589/tmp_yFDro8.svg","show":true,"text":null,"uuid":"305ecb09-3280-4a1d-ac1f-48f7bcb40141"},"once":false}︡{"done":true}
︠f5500824-9d8e-472f-b013-d7f28f74e181s︠
pos_dict={0:[0,0],1:[0,1],2:[1,1],3:[1,0]}
color={'#FFFFFF':[0,1,2,3]}
G = Graph({0:[],1:[0],2:[1,0],3:[0,2]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[1.2,1.2],vertex_colors=color,vertex_labels=False,transparent=True)
pos_dict={0:[0,0],1:[0,1],2:[1.5,1],3:[1,0],4:[2.5,0],5:[2.5,1]}
color={'#FFFFFF':[0,1,2,3,4,5]}
G = Graph({0:[],1:[0],2:[],3:[0,1],4:[2],5:[2,4]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[3,1.2],vertex_colors=color,vertex_labels=False,transparent=True)
︡078e0c3f-d8b5-4150-b8fb-a1d068351251︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/392/tmp_uBqVYo.svg","show":true,"text":null,"uuid":"31c275ce-c0ba-484e-b703-30029754ca22"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/392/tmp_gnOvQv.svg","show":true,"text":null,"uuid":"fa90fa74-f0f0-4dcd-bc84-ac2e44e574b7"},"once":false}︡{"done":true}
︠113ec772-8baa-44a2-9275-ad60219bc421s︠
color={'#FFFFFF':[0,1,2,3,4,5,6]}
graphs.CycleGraph(7).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False,transparent=True)
graphs.CompleteGraph(7).plot(vertex_size=700,figsize=[2,2],vertex_colors=color,vertex_labels=False,transparent=True)
︡67cfee60-4bab-47b2-98ba-10dfe5841206︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/392/tmp_O61RK7.svg","show":true,"text":null,"uuid":"37d98a79-6688-4f4a-a88b-f0af35c44da2"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/392/tmp_qbXo2S.svg","show":true,"text":null,"uuid":"4d7c4618-3e75-40a8-b9e9-821afd373f5e"},"once":false}︡{"done":true}
︠7365b37d-4309-4c65-b5a6-a232f6b03d2fs︠
pos_dict={1:[0,0],2:[-1,-1.5],3:[1,-1.5],4:[-2,-3],5:[0,-3],6:[2,-3],7:[1,-4.5],8:[3,-4.5],9:[-3,-4.5]}
color={'#FFFFFF':[1,2,3,4,5,6,7,8,9]}
G = Graph({1:[],2:[1],3:[1],4:[2],5:[2],6:[3],7:[6],8:[6],9:[4]})
G.plot(pos=pos_dict,vertex_size=700,figsize=[3,3],vertex_colors=color,vertex_labels=False,transparent=True)
︡eaa77b33-2a5a-4d2d-b630-45982c5f9678︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/392/tmp_454TFt.svg","show":true,"text":null,"uuid":"e8ed6803-b45b-4679-8d63-5a1f75bd4f4c"},"once":false}︡{"done":true}
︠764921f5-b318-4449-85dc-7453bbb14863s︠
color={'#FFFFFF':[0,1,2,3,4,5,6,7,8,9]}
graphs.PetersenGraph().plot(vertex_size=700,figsize=[3,3],vertex_colors=color,vertex_labels=False,transparent=True)
︡01b8f425-7554-4556-bbf3-fee1b3b49e8d︡{"file":{"filename":"/home/user/.sage/temp/project-0c219fce-bb03-4c09-976c-5e05a91b1834/318/tmp_0efO9Y.svg","show":true,"text":null,"uuid":"cafb9d57-966b-4f01-9437-11ee74667ff6"},"once":false}︡{"done":true}










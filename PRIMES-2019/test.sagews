︠07e5a54c-92fd-42d2-9577-2509411819e9s︠
g= {'sink':{1:1},1:{'sink':1, 2:1, 3:1},2:{1:1, 3:1},3:{1:1, 2:1}}
S = Sandpile(g,'sink')
S.show()
c = SandpileConfig(S, {1:5, 2:0, 3:1})
︡691ac210-368c-4b38-b69f-8cf7fac9c10b︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/100/tmp_2kxaUU.svg","show":true,"text":null,"uuid":"3456250a-4c1c-430e-b309-189a9954e2ec"},"once":false}︡{"done":true}
︠907f86d8-9193-43ca-ac84-8cb2d159e20c︠
g={'a1':['a2', 'a3', 'b1'], 'a2':['a1','a3','a4'],'a3':['a1','a2','a4'],'a4':['a2','a3','c4'],'b1':['a1','b2','b3'],'b2':['b1','b3','b4'],'b3':['b1','b2','b4'],'b4':['b2','b3','c1'],'c1':['b4','c2','c3'],'c2':['c1','c3','c4'],'c3':['c1','c2','c4'],'c4':['c2','c3','a4']}
S=Sandpile(g,'a1')
S.show(vertex_size=5,vertex_labels=False)
S.identity()==S.max_stable()
S=Sandpile(g,'a2')
S.identity()==S.max_stable()
︡060fcd95-7284-4926-8210-8540be39a4ef︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/506/tmp_UK9xfX.svg","show":true,"text":null,"uuid":"daca5f46-b5a7-429d-a5af-442f2f9e80e0"},"once":false}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠9e842743-286a-4046-969e-24b29b90da0bs︠
g={'a1':['a2', 'a3', 'd1'], 'a2':['a1','a3','a4'],'a3':['a1','a2','a4'],'a4':['a2','a3','c4'],'b1':['d2','b2','b3'],'b2':['b1','b3','b4'],'b3':['b1','b2','b4'],'b4':['b2','b3','c1'],'c1':['b4','c2','c3'],'c2':['c1','c3','c4'],'c3':['c1','c2','c4'],'c4':['c2','c3','a4'],'d1':['a1'],'d2':['b1']}
S=Sandpile(g,'a1')
S.show(vertex_size=5,vertex_labels=False)
S.identity()==S.max_stable()
S=Sandpile(g,'a2')
S.identity()==S.max_stable()
S=Sandpile(g,'d1')
S.identity()==S.max_stable()
S=Sandpile(g,'a4')
S.identity()==S.max_stable()
S=Sandpile(g,'c4')
S.identity()==S.max_stable()
S=Sandpile(g,'c2')
S.identity()==S.max_stable()
︡8bef1ee3-37d8-487a-8bce-a0fb403c6f26︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/506/tmp_mDpXY1.svg","show":true,"text":null,"uuid":"2f69d25a-4e26-4a7d-9401-d9fe5f3a7544"},"once":false}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}
︠28bae048-ef75-4523-acdb-0e36cccd4718︠
g={'a1':['a2', 'a3', 'd1'], 'a2':['a1','a3','a4'],'a3':['a1','a2','a4'],'a4':['a2','a3','c4'],'c4':['a4'],'d1':['a1']}
S=Sandpile(g,'a1')
S.show(vertex_size=5,vertex_labels=False)
︡c7c88724-b12b-49c8-a93b-d8146feb1f59︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/506/tmp_E3Q4ur.svg","show":true,"text":null,"uuid":"c4882788-d64b-486e-b323-ff61f46d19b6"},"once":false}︡{"done":true}
︠4776a404-91af-4071-a94d-9d2ba6dcf946s︠
g={'a1':['a2', 'a3'], 'a2':['a1','a3','a4'],'a3':['a1','a2','a4'],'a4':['a2','a3']}
S=Sandpile(g,'a1')
S.show(vertex_size=5,vertex_labels=False)
︡7c1cd0f4-f22d-416f-a35a-3fd0f9ef6ff4︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/506/tmp_0z8IYf.svg","show":true,"text":null,"uuid":"4696108e-4f69-4be2-bc83-c9f942a49a9f"},"once":false}︡{"done":true}
︠113f9437-b8b3-437d-a50d-987d64c86c6es︠
g={'a1':['a2', 'a3', 'b1'], 'a2':['a1','a3','a4'],'a3':['a1','a2','a4'],'a4':['a2','a3','b4'],'b1':['a1','b2','b3'],'b2':['b1','b3','b4'],'b3':['b1','b2','b4'],'b4':['b2','b3','a4']}
S=Sandpile(g,'a1')
S.show(vertex_size=5,vertex_labels=False)
︡cccc2b61-70f9-42f8-be11-5f9be74d7a00︡{"file":{"filename":"/home/user/.sage/temp/project-c3c1525c-f2ff-423f-b296-0c0fcb38d3d5/506/tmp_tnbmqv.svg","show":true,"text":null,"uuid":"bd5de202-fffc-4505-9b00-59032aeba337"},"once":false}︡{"done":true}
︠01f34344-0709-40ff-9257-832a33f51ae0s︠
for g in graphs.nauty_geng("6 -C"):
    if g.vertex_connectivity()<=1:
        g.show()
print("Done.")
︡334a72ff-436c-4019-bb41-23e850866e38︡{"stdout":"Done.\n"}︡{"done":true}
︠f37e82d7-43df-4199-bd08-9ab4ac9453ecs︠
print("%d" % len(list(graphs(8))))
︡d6346330-6681-47c3-bb20-317f5efb8592︡{"stdout":"12346"}︡{"stdout":"\n"}︡{"done":true}
︠6f35840b-206d-496f-b95b-fb4c3c5cab5fs︠
print("%d" % len(list(graphs.nauty_geng("8 -c"))))
︡88583788-d85d-414c-a926-8ff6b8245247︡{"stdout":"11117"}︡{"stdout":"\n"}︡{"done":true}
︠1c0735d9-8bf9-4a78-bc4c-0379a0bfd278s︠
print("%d" % len(list(graphs.nauty_geng("8 -c -d2"))))
︡8166c550-e66a-4db3-a5af-a99d50cfbbf6︡{"stdout":"7442"}︡{"stdout":"\n"}︡{"done":true}
︠76b01a0a-813b-47ab-8e3a-01bd7f3792b6s︠
print("%d" % len(list(graphs.nauty_geng("8 -C"))))
︡932ab2f8-37d6-4199-9930-2ff4622f143d︡{"stdout":"7123"}︡{"stdout":"\n"}︡{"done":true}
︠dfae28cd-08e5-4ae8-b2bd-6214d6aed23bs︠
print("%d" % len(list(graphs.nauty_geng("8 -C -d2"))))
︡0cab8f94-29d2-45f3-a121-95ea6e5ae709︡{"stdout":"7123"}︡{"stdout":"\n"}︡{"done":true}











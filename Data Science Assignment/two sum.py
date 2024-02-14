n=input()
arr=[]
for i in range(0,int(n)):
    hi=int(input())
    arr.append(hi)
target=input()
for i in arr:
    for j in arr:
        if(i+j==target):
            print(i,j)
            break

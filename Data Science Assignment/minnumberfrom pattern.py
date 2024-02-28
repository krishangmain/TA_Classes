# # Python3 program to print minimum number 
# # that can be formed from a given sequence 
# # of Is and Ds  
# def printLeast(arr): 
  
#     # min_avail represents the minimum  
#     # number which is still available  
#     # for inserting in the output vector.  
#     # pos_of_I keeps track of the most  
#     # recent index where 'I' was  
#     # encountered w.r.t the output vector  
#     min_avail = 1
#     pos_of_I = 0
  
#     # Vector to store the output  
#     v = [] 
  
#     # Cover the base cases  
#     if (arr[0] == 'I'): 
#         v.append(1) 
#         v.append(2) 
          
#         min_avail = 3
#         pos_of_I = 1
#     else: 
#         v.append(2) 
#         v.append(1) 
          
#         min_avail = 3
#         pos_of_I = 0
  
#     # Traverse rest of the input  
#     for i in range(1, len(arr)): 
#         if (arr[i] == 'I'): 
#             v.append(min_avail) 
#             min_avail += 1
#             pos_of_I = i + 1
#         else: 
#             v.append(v[i]) 
#             for j in range(pos_of_I, i + 1): 
#                 v[j] += 1
#             min_avail += 1
              
#     # Print the number 
#     print(*v, sep = '') 
  
# # Driver code 
# printLeast("IDDIDI") 


def printer(pattern):
    min_aval=1
    index=0
    V=[]
        
    if (pattern[0])=="I":
        V.append(1)
        V.append(2)
        min_aval=3
        index=1
    else:
        V.append(2)
        V.append(1)
        min_aval=3
        index=0
    
    for i in range(1,len(pattern)):
        if (pattern[i]=="I"):
            V.append(min_aval)
            min_aval+=1
            index=i+1
        else:
            V.append(V[i])
            for j in range(index,i+1):
                V[j]+=1
            min_aval+=1
    print(*V,sep="")

T=int(input())
for _ in range(T):
    pattern=input()
    printer(pattern)
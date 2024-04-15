#First let us understand the question in the question if there is an I followed by an I we have two numbers and the 2nd number 
# should be larger than the 1st number and if we have AD following AD we know that we again have two numbers but the number 
# following the 1st number should be smaller than that so the approach that we have in the answer is that when we encounter 
# an I we increase the value of the number that would appear ahead of it and when we encounter AD we repeat the value that 
# is at the current index and we increase the value by one for each D that we encountered
def printer(pattern):
    min_aval=1
    index=0
    V=[]                #Men available represents the minimum available number that we have to append in the string we here is the empty list that we have initialised which would contain the answer moving forward an index represents the index of the string where you perform our operations in the functions given below
        
    if (pattern[0])=="I":
        V.append(1)
        V.append(2)
        min_aval=3
        index=1             #This is the case when we encounter a single I we have 12 as the answer the minimum available value or the number has now become three and the index is set to 1 as the next operation would be performed on the number 2 and it is set at index one
    else:
        V.append(2)
        V.append(1)
        min_aval=3       #This is the scenario where we encounter a single D We have 21 as the answer and the minimum available value becomes three again and this time index is set to zero as the operation would continue on number 2 and the value of the index at which number two resides in this scenario is zero
        index=0
    
    for i in range(1,len(pattern)):
        if (pattern[i]=="I"):
            V.append(min_aval)
            min_aval+=1                      #In the scenario that we encounter another I we simply increase the value of the minimum valuable number by one after appending it next to the index we had and after that we increase the value index by one as well for example if we had two eyes come together plants would have been 123 so now the index becomes 2 as 3 is at the second position in terms of index and the minimum available value will now become 4
            index=i+1
        else:
            V.append(V[i])
            for j in range(index,i+1):          #If we encounter another D what we do now is the number that is present at the index will it be update the previous number and incremented by one of the numbers Number of Ds that we encountered
                V[j]+=1
            min_aval+=1
    print(*V,sep="")

T=int(input())
for _ in range(T):
    pattern=input()
    printer(pattern)


# def printer(pattern)
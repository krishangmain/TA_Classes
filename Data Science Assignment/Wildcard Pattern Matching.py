text = input().strip()      # to take the input and then strip it into seperate characters
pattern = input().strip()

text_index = 0
pattern_index = 0   #initalizing pointers to traverse the strings

while text_index < len(text) and pattern_index < len(pattern):    # the pointers are not at the end of the strings 
    if pattern[pattern_index] == '?' or text[text_index] == pattern[pattern_index]:
        text_index += 1
        pattern_index += 1    
        # this loop will only work when both the pattern and the text either have a matching letter or 
        # the pattern has a ? in itself then both the indexes would be increased
    elif pattern[pattern_index] == '*':
        star_index = pattern_index
        pattern_index += 1   
        
        #this will move the pattern index ahead by one term and leave the text index as is so that the next time 
        #they can be compared
        #the new variable named star index is to store the where the pattern occurred
                
    elif star_index != -1:    # star index not equal to -1 means it was initialized a value in the previous loop 
        pattern_index = star_index + 1   # we update the pattern index such that i now is ahead of the star 
        text_index+=1 #this is done to avoid a TLE as if this would not be updated it would create a infinite loop 
        # as the pattern index would keep on increasing 
        
        # This specific loop was created to ensure the edge case of the stars being entered at the end or the beginning would
        # not hinder the code
    else:
        print(0)   # this would only run when none of the above loops are run which would occur only when we
        # do not have a matching pattern in the given sequence 
        break
if pattern_index == len(pattern):  # this would be run when we have the pattern index equal to the length 
    # we take the pattern index here as it would alwasy be equal to the given text or larger 
    # so if it is equal we know it would always that the text was traversed
    print(1)
else:
    print(0)

def print_pattern(N):
    if N % 2 == 1:
        for i in range(N, 0, -2):
            print(i)
        if N != 1:
            for i in range(2, N+1, 2):
                print(i)
    else:
        for i in range(N-1, 0, -2):
            print(i)
        for i in range(2, N+1, 2):
            print(i)

# Taking input
N = int(input())

# Printing pattern
print_pattern(N)

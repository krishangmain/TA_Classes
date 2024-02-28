
def isPalindrome(st):

	i = 0
	j = len(st) - 1
	while (i < j):
		if (st[i] != st[j]):
			return False
		i += 1
		j -= 1
	return True    # to check if it is a palindrome 
def formPalindrome(a, b, n):
	aa = [' '] * (n + 2)
	bb = [' '] * (n + 2)    # initialised a empty string with 2 extra spaces to avoid errors 
   # as we may traverse from 1 and this makes the subsequent operations with the substrings easier
   #for which we will leave empty space at the beginning and the end
	for i in range(1, n + 1):
		aa[i] = a[i - 1]
		bb[i] = b[i - 1]

	ok = False

	for i in range(n + 2):
		

		for j in range(1, i):

			# Substring a[j...i-1]
			if (aa[j] == ' '):
				la += ""
			else:
				la += aa[j]

			# Substring b[j...i-1]
			if (bb[j] == ' '):
				lb += ""
			else:
				lb += bb[j]

		for j in range(i, n + 2):

			# Substring a[i...n]
			if (aa[j] == ' '):
				ra += ""
			else:
				ra += aa[j]

			# Substring b[i...n]
			if (bb[j] == ' '):
				rb += ""
			else:
				rb += bb[j]

		# Check is left part of a +
		# right part of b or vice
		# versa is a palindrome
		if (isPalindrome(str(la) +
						str(rb))
			or isPalindrome(str(lb) +
							str(ra))):
			ok = True
			break

	# Print the result
	if (ok):
		print("true")

	# Otherwise
	else:
		print("false")
A=input()
B=input()
N=len(A)
  


formPalindrome(A, B, N)

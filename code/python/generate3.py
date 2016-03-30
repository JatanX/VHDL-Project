bitcount = 7
usingnumber = 4
while(bitcount >= 0):
    print((usingnumber>>bitcount) & 1, end='')
    bitcount -= 1

def bitnumer(usingnumber):
    bitcount = 7
    print('when "', end="")
    while(bitcount >= 0):
        print((usingnumber>>bitcount) & 1, end='')
        bitcount -= 1
    print('" =>', end="\n")

i = 0;
case = 2
ifcounter = 0;
while(i < 8):
    bitnumer(case)
    print("Clock <= '1';")
    case += 1
    bitnumer(case)
    print("Clock <= '0';")
    print("if(HighBit = '", ifcounter,"') then",sep='')
    print("LED", i, " <= DataOut;",sep='')
    print("end if;")
    case += 5
    i += 1
    if(i == 8 and ifcounter == 0):
        i = 0
        ifcounter = 1

i = 0;
case = 2
ifcounter = 0;
while(i < 8):
    print("when", case, "=>")
    print("Clock <= '1';")
    case += 1
    print("when", case, "=>")
    print("Clock <= '0';")
    print("if(HighBit = '", ifcounter,"') then",sep='')
    print("LED", i, " <= DataOut;",sep='')
    print("end if;")
    case += 5
    i += 1
    if(i == 8 and ifcounter == 0):
        i = 0
        ifcounter = 1

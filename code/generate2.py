i = 0;
case = 2
while(i < 8):
    print("when", case, "=>")
    print("Clock <= '1';")
    case += 1
    print("when", case, "=>")
    print("LED", i, " <= DataOut;",sep='')
    print("Clock <= '0';")
    case += 5
    i += 1

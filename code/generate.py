i = 0;
pattern = 25000000;
while(i < 25):
    print("TimingCounter(",i, ") = '",pattern & 1, "' and")
    pattern = pattern >> 1;
    i += 1;

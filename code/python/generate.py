i = 0;
pattern = 50000;
while(i < 25):
    print("TimingCounter(",i, ") = '",pattern & 1, "' and", end=' ', sep='')
    pattern = pattern >> 1;
    i += 1;

/_READ/ {
    #$1 = ""; $2 = ""; $3 = "";
    line1 = NR ": " $0;
    len1 = $7;
    getline;
    #$1 = ""; $2 = ""; $3 = "";
    line2 = NR ": " $0;
    len2 = int($5);
    if (len2 > 0)
    {
        print line1;
        print line2;
    }
    line1 = "";
    line2 = "";
}


/_WRITE/ { print NR ": " $0; }

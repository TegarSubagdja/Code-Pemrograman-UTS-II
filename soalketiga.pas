program test;

uses crt;

var 

    i,j,x,n,m,y,batas,baris,k,total : integer; 
    bil,trues : array [1..100] of integer;
    genap : array [1..100,1..100] of integer;

begin
    clrscr;

    // Input data
        writeln('====================================');
        write('Banyak Bilangan : '); readln(n);
        write('Batas Matriks : '); readln(batas);;
        write('Kolom yang dijumlah : '); readln(k);
        if batas <= k then  
            begin
                exit;
            end;

    // Pengolahan Data 
        writeln('====================================');
        x := 1;
        for i := 1 to n do 
            begin
                readln(bil[i]);
                if bil[i] mod 2 = 0 then 
                    begin
                        trues[x] := bil[i];
                        x := x + 1;
                    end;
            end;

        writeln('====================================');
        y := x;
        m := x-1;
        baris := (y div batas) + 1 ;
        x := 1;

        for i := 1 to baris do 
        for j := 1 to batas do 
            begin
                genap[i][j] := trues[x];
                x := x + 1;
            end;

        for i := 1 to baris do 
            begin
                for j := 1 to batas do 
                    begin
                        if m > 0 then 
                            begin
                                write(genap[i][j], ' ');
                                m := m - 1; 
                            end;
                    end;
                    writeln;
            end;

        for i := 1 to baris do 
            begin
                total := total + genap[i][k];
            end;

    // Output Data 
        writeln('====================================');
        writeln('total baris ke-',k,' : ', total);
        writeln('====================================');
        readln;

    
end.
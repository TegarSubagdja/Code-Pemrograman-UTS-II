program soalno1;


uses crt;

var 

    i,j,n,x,y,batas,baris : integer;
    bil : array[1..100,1..100] of integer;

begin

clrscr;
    
    writeln('===============================');
    // Input Banyak Bilangan 
    write('Banyak Bilangan : '); readln(n);

    // Input Bilangan Pembatas
    writeln('===============================');
    write('Bilangan Pembatas : '); readln(batas);

    // Peroses
    x := n;
    y := n;
    baris := (n div batas) + 1;

    // Inpu Bilangan 
    writeln('===============================');
    for i := 1 to baris do 
    for j := 1 to batas do 
        begin
            if x <> 0 then 
                begin
                    write('Bil ke-',x,' '); readln(bil[i][j]);
                    x := x - 1; 
                end;
        end;

    // Output Dalam Matriks
    writeln('===============================');
    for i := 1 to baris do 
        begin
            for j := 1 to batas do 
                begin
                    if y > 0 then 
                        begin
                            write(bil[i][j], ' ');
                            y := y - 1; 
                        end;
                end;
                writeln;
        end;
    writeln('===============================');
    readln;
end.
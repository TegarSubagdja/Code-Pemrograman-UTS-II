program soalkedua;

uses crt;

var 

    i,j,k,n,x,y,batas,baris,total : integer;
    bil : array[1..100,1..100] of integer;

begin

clrscr;
    
    // Input Banyak Bilangan
    writeln('==============================='); 
    write('Banyak Bilangan : '); readln(n);

    // Input Bilangan Pembatas
    writeln('==============================='); 
    write('Bilangan Pembatas : '); readln(batas);

    // Kolom yg Dihitung 
    writeln('==============================='); 
    write('Kolom yang dihitung : '); readln(k);

    // Peroses
    x := n;
    y := n;
    baris := (n div batas) + 1;
    if batas <= k then  
        begin
            exit;
        end;

    // Inpu Bilangan 
    writeln('==============================='); 
    for i := 1 to baris do 
    for j := 1 to batas do 
        begin
            if x <> 0 then 
                begin
                    write('Bil ',' '); readln(bil[i][j]);
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
                            write(bil[i][j],' ');
                            y := y - 1; 
                        end;
                end;
                writeln;
        end;

    // Total 
    writeln('==============================='); 
    for i := 1 to baris do 
        begin
            for j := 1 to batas do 
                begin
                    if j = k then 
                        begin
                            total := bil[i][j] + total;
                            y := y - 1; 
                        end;
                end;
        end;
    writeln('Total : ', total);
    writeln('===============================');
    readln; 
    
end.
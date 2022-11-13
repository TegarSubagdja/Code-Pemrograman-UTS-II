program jarumsuper;

uses crt;

var 

    i,j,n : integer;
    x,y,jarak : array[1..100] of real;
    totalJarak : real;

begin

clrscr;
    
    // Input Data 
    writeln('===============================');
    write('Banyak Data : '); readln(n);

    // Input Data 
    writeln('===============================');
    writeln('Titik Kota : '); read(x[1]);
    read(y[1]);

    // Input Kordinat Setiap Kota 
    writeln('===============================');
    for i := 2 to n+1 do 
        begin
            writeln('Titik Kota : '); 
            read(x[i],y[i]);
        end;
    writeln('===============================');
    
    // Pengolahan Data 
    for i := 2 to n+1 do 
        begin
            x[i] := Abs(x[i]- x[1]);
            y[i] := Abs(y[i] - y[1]);
        end;
        
    for i := 2 to n+1 do 
        begin
            jarak[i] := sqrt(sqr(x[i]) + sqr(y[i]));
        end;

    for i:= 2 to n do
    for j:= 2 to n do
            if jarak[j] > jarak[j+1] then
                begin
                    jarak[2]:=jarak[j];
                    jarak[j]:=jarak[j+1];
                    jarak[j+1]:=jarak[2];
                end;

    // Output 
    totalJarak := (jarak[2] * 2) + (jarak[n+1] * 2);
    writeln('Total Jarak : ', totalJarak:3:2);
    writeln('===============================');
    readln;

end.
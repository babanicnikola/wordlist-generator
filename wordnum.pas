PROGRAM generator;
USES
        Sysutils,
        crt;

VAR
        keywords : ARRAY [1..100] OF STRING;
        output : TEXT;
        word : STRING;
        i, j, n : INTEGER;

BEGIN
        Assign(output, 'output.txt');
        rewrite(output);
        write('Insert number of keywords:');
        readln(n);
        FOR i := 1 TO n DO
        Begin
           write('Insert keyword #',i);
           readln(keywords[i]);
        End;
        FOR i := 1 TO n DO
                FOR j := 0 TO 2050 DO
                Begin
                        if (j < 10) then
                                writeln(output, keywords[i], '0', j)
                        else
                                writeln(output, keywords[i], j);
                End;
        Close(output);
        writeln('Press any key to exit!');
        readkey();
END.

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure jumping_frog is
    A       : array (1 .. 2) of Integer;
    P       : Integer;
    N       : Integer;
    GREATER : Boolean := False;

begin

    for I of A loop
        Get (I);
    end loop;

    P := A (1); -- altura do pulo
    N := A (2); -- num de canos

    declare
        B : array (1 .. N) of Integer;
    begin
        for J of B loop
            Get (J);
        end loop;

        for X in 1 .. (N - 1) loop
            if (abs (B (X) - B (X + 1))) > P then
                GREATER := True;
            end if;
        end loop;

        if GREATER = True then
            Put_Line ("GAME OVER");
        elsif GREATER = False then
            Put_Line ("YOU WIN");
        end if;

    end;

end jumping_frog;

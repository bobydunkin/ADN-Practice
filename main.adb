with ada.Text_IO;
use ada.Text_IO;
procedure Main is



   type cadena1 is array (1..10) of Character;
   type adn is record

      cadena: cadena1;
      cadena_complementaria: cadena1;
      longitud: Natural;

   end record;



   procedure llegirCadenaMotlle(x: out adn) is

      cadena: String(1..10);
      longitud: Natural;


   begin

      Get_Line(cadena,longitud);
      x.longitud:=longitud;

      for i in 1..longitud loop

         x.cadena (i) := cadena (i);

      end loop;



   end llegirCadenaMotlle;

   procedure completarAdn(p: in out adn) is

      cadena:Character;
   begin

      for i in 1 .. p.longitud loop

         cadena:= p.cadena(i);
         case cadena is
         when'a'=> p.cadena_complementaria(i):='t';
         when't'=> p.cadena_complementaria(i):='a';
         when'g'=> p.cadena_complementaria(i):='c';
         when'c'=> p.cadena_complementaria(i):='g';
         when others => null;

         end case;
      end loop;
   end completarAdn;


   procedure imprimirADN(cadena1: in out adn) is

   begin

      Put_Line("Cadena : " & String(cadena1.cadena));
      Put_Line("Cadena Complementaria : " & String(cadena1.cadena_complementaria));


   end imprimirADN;

   prueba: adn;
begin
   llegirCadenaMotlle(prueba);
   completarAdn(prueba);
   imprimirADN(prueba);


end Main;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure main is

   Alarm_Threshold : constant Integer := 50;

   function Generate_Random_Number return Integer is
      Gen: Generator;
   begin
      Reset(Gen);
      return Integer(Random(Gen));
   end Generate_Random_Number;

   function Check_Temperature return Integer is
      Temperature : Integer;
   begin

      Temperature := Generate_Random_Number *49 +20;
      return Temperature;
   end Check_Temperature;

   temp:Integer;

begin

   temp := Check_Temperature;

   if temp>Alarm_Threshold then
      Put_Line("Fire Alarm Activated! Please evacuate the building!");
      Put_Line(Integer'Image(temp));
   else

      Put_Line("No Fire");
      Put_Line(Integer'Image(temp));
   end if;
end main;



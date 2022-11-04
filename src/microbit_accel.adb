with MicroBit.Console; use MicroBit.Console;
with MicroBit.Accelerometer;
with MicroBit.Time;
with MMA8653;

procedure Microbit_Accel is
   A : MMA8653.All_Axes_Data;
begin
   loop
      A := MicroBit.Accelerometer.Data;
      Put ("X=");
      Put (A.X'Image);
      Put (" Y=");
      Put (A.Y'Image);
      Put (" Z=");
      Put (A.Z'Image);
      New_Line;
      MicroBit.Time.Sleep (1000);
   end loop;
end Microbit_Accel;

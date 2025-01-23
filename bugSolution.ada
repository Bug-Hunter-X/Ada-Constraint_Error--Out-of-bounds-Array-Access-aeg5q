```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   Index := 5;  -- Valid index
   My_Arr(Index) := 100; -- Accessing a valid element
   Put_Line("Element at index " & Integer'Image(Index) & " is now " & Integer'Image(My_Arr(Index)));
   
   Index := 11; -- Invalid index.  Handled gracefully
   if Index in Positive_Index'Range then
       My_Arr(Index) := 100;
   else
       Put_Line("Index out of bounds");
   end if;
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example_Solution;
```
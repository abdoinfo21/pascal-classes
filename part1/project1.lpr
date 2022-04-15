program project1;

type

  { car }

  car = class
    private
      color:string;
      year:integer;
      name:string;
    public
     procedure display;
  end;

{ car }
var
  car1:car;

procedure car.display;
begin
   writeln(car1.color,' ',car1.year,' ',car1.name);
end;

begin
  car1:=car.create;
  car1.color:='red';
  car1.year:=2000;
  car1.name:='toyota';
  car1.display;
  car1.free;
  readln;
end.


program project1;
  {$mode objfpc}
  {$H+}

type

  { person }

  person = class
    private
      name:string;
      age:byte;
    public
      constructor Create;
      procedure setName(n:string);
      function getName:string;
      procedure setAge(a:byte);
      function getAge:byte;
  end;

  var
    per:person;

{ person }

constructor person.Create;
begin

end;

procedure person.setName(n: string);
begin
   name:=n;
end;

function person.getName: string;
begin
   result:=name;
end;

procedure person.setAge(a: byte);
begin
   age:=a;
end;

function person.getAge: byte;
begin
 result:=age;
end;


begin
 per:=person.Create;
 per.setName('thor');
 per.setAge(25);
 writeln('name is :',per.name, ' ','age is :', ' ',per.age);
 readln;
end.


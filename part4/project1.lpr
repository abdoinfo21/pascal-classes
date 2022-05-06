program project1;
  {$mode objfpc}
  {$H+}

type

  { Tperson }

  Tperson = class
    protected
      Fname:string;
      Fage:byte;
    public
      constructor Create;
      procedure setName(n:string);
      function getName:string;
      procedure setAge(a:byte);
      function getAge:byte;
      procedure info;virtual;
  end;

  { Tstudent }

  Tstudent = class(Tperson)

    private
      Fid:integer;
    public
      procedure setid(i:integer);
      function  getid:integer;
      procedure info;override;
    end;

  var
    per:Tperson;
    std:Tstudent;

{ Tstudent }

procedure Tstudent.setid(i: integer);
begin
   Fid:=i;
end;

function Tstudent.getid: integer;
begin
  result:=Fid;
end;

procedure Tstudent.info;
begin
  writeln('the name is :  ',Fname,' the age is : ',Fage , ' the id : ', Fid);
end;

{ person }

constructor Tperson.Create;
begin

end;

procedure Tperson.setName(n: string);
begin
   Fname:=n;
end;

function Tperson.getName: string;
begin
   result:=Fname;
end;

procedure Tperson.setAge(a: byte);
begin
   Fage:=a;
end;

function Tperson.getAge: byte;
begin
 result:=Fage;
end;

procedure Tperson.info;
begin
  writeln('the name is :  ',Fname,' the age is : ',Fage);
end;


begin
 per:=Tperson.Create;
 std:=Tstudent.Create;
 per.setName('thor');
 per.setAge(25);
 writeln('name is :',per.Fname, ' ','age is :', ' ',per.Fage);
 std.setName('loky');
 std.setAge(23);
 std.setid(1234567890);
 writeln('name is : ',std.getName,'  age is :  ',std.getAge,'  student id :  ',std.getid);
 per.info;
 std.info;
 readln;
end.


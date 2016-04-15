program login_form;
uses crt;
type
	login = record
		username: string;
		pass: string;
	end;
var
	lgn :file of login;
	log :login;
	i : integer;
	
begin
	assign(lgn,'login.dat');
	rewrite(lgn);
	write('username:');readln(log.username);
	write(lgn,log);
	write('password');readln(log.pass);
	write(lgn,log);
	reset(lgn);
	read(lgn,log);
	writeln('username: ',log.username);
	writeln('password: ',log.pass);
	close(lgn);
	readln;
end.
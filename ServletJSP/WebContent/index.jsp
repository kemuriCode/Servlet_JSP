<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formularz Servlet</title>
</head>
<body>
<big><b>Java 4 US!</b></big><br />
farmularz rejestracyjny <br/>
na konferencje programistyczna <br/>

<form method=POST action=walidujFormularz.jsp>
Imie <input type=text name=imie /><br/>
Nazwisko <input type=text name=nazwisko /><br/>
Email <input type=text name=email /><br/>
Powtorz Email<input type=text name=email /><br/>
Nazwa pracodawcy<input type=text name=pracodawca /><br/>
Skad dowiedziales sie o konferencji ?
<br />
<input type="radio" name="skadWiem" value="ogloszenie w pracy" /> Ogloszenie w pracy <br />
<input type="radio" name="skadWiem" value="ogloszenie na uczelni" /> Ogloszenie na uczelni <br />
<input type="radio" name="skadWiem" value="facebook" /> Facebook <br />
<input type="radio" name="skadWiem" value="znajomi" /> Znajomi <br />
<input type="radio" name="skadWiem" value="inne" /> Inne (jakie?)
<input type=text name=inneJakie /><br/>
Czym sie zajmujesz ?<input type=text name=zajecie /><br/>
<input type="submit" value="wyslij" /> <br />
</form>
</body>
</html>
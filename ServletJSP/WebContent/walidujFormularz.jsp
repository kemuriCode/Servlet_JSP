<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>walidacja formularza</title>
</head>
<body>	

<!-- Uzywam obiektu klasy zapobiegajacej podwojnemu logowaniu podczas tej samej sesji -->
<jsp:useBean id="isUserExistChecker" class="local.run.servlet.IsUserExistChecker" 
		scope="session"></jsp:useBean>

<!-- Tworze obiekt klasy Person -->
<jsp:useBean id="person" class="local.run.servlet.Person"
        scope="session"></jsp:useBean>
        
<!-- tworze nowa baze danych -->
<jsp:useBean id="databaseList" class="local.run.servlet.DatabaseList" 
			scope="session"></jsp:useBean>

<!-- sprawdzam czy uzytkownik wypelnil formularz wiecej niz raz -->
<% if (!isUserExistChecker.getExist()) { %>
	
	<!-- wypelniam pola obiektu typu Person danymi z formularza -->
	<jsp:setProperty property="*" name="person" />
	 <b>Dziekujemy za wypelnienie formularza</b><br />
	 
	 
<!-- dodaje dane osoby do bazy danych -->
	<% if(!databaseList.isDbFullQuestion()){ databaseList.addPerson(person); }
	else { %>
	<b>Przepraszamy, brak wolnych miejsc</b><br />
	<% } %>
	 		
	
<% } else { %>	
	
<b>Formularz zostal juz raz wypelniony</b><br />
	
<% } %>

<!-- blokuje uzytkownika aby nie mogl ponownie wypelnic formularza -->	
<% isUserExistChecker.setExistTrue(); %>

<!-- Wypisuje dane uzytkownikow z bazy -->
	<br />
	<b>Zarejestrowani kandydaci:</b><br />
	<% for(int i = 0; i < databaseList.getPersonDB().size(); i++ ) { %>

Imie:							&nbsp&nbsp<b><%= databaseList.getPerson(i).getImie() %></b><br />
Nazwisko: 						&nbsp&nbsp<b><%= databaseList.getPerson(i).getNazwisko() %></b><br />
E-mail:							&nbsp&nbsp<b><%= databaseList.getPerson(i).getEmail() %></b><br />
Pracodawca:						&nbsp&nbsp<b><%= databaseList.getPerson(i).getPracodawca() %></b><br />
Skad wiem o ogloszeniu:			&nbsp&nbsp<b><%= databaseList.getPerson(i).getSkadWiem() %></b><br />
Skad wiem o ogloszeniu (inne):	&nbsp&nbsp<b><%= databaseList.getPerson(i).getInneJakie() %></b><br />
Jakie mam zajecie:				&nbsp&nbsp<b><%= databaseList.getPerson(i).getZajecie() %></b><br />
	<br />
	
	<% } %>	

</body>
</html>
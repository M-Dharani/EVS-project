
<html>
<head>
<title>Gardening</title>
<link rel="stylesheet" href="./style1.css" /> 
</head>

<body background="./back2.jpeg" style="background-repeat: no-repeat;background-size: 300%">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>



<div ><span class="hed"> <center> <h1>MODERN GARDENING AND AGRICULTURE ASSISTANCE</h1></center></span></div>
<pre>
 



</pre>
<div style="height: 65px">
<h1 align="center">Bouquet of Blooms</h1></div>

<div align="center" style="border-style: solid; border-color: brown;padding: 20px; height: 70px; width:100%;
		 background-color: lightblue; ">
<ul style="text-align: justify;">
<li><a href="#para1">OUR ASSISTANCE</a></li>
<li><a href="#para2">POLLUTION IN YOUR AREA</a></li>
<li><a href="#para3">HERE IS WHAT YOU WANT</a></li>
</ul>
</div>
<div><p align="center" style=" font-size: 30px">    
           Garden’ brings to mind a place of relaxation, a beautiful canvas of colour and natural beauty and an escape from the busy, crowded, polluted atmosphere. In the ever increasing polluted world of today, gardens are the ‘lungs of the city’, especially in big towns and cities. People crave to have gardens in their residential complexes or vicinity and  thus more and more beautification and creation of green areas is being undertaken by the municipal corporations.
However, India, having been a country ruled by Kings and Emperors in the past, has been fortunate to have been beautified with many spectacular gardens over the years. In India, with its rapid urbanization and construction of multistory buildings. This changing scenario has initiated a trend in Terrace Gardening. But in order to get benefit in gardening there are many problems need to be faced like plant/crop selection, weeds in the garden, over-watering, garden pests and diseases etc.,our project aims to solves some these problems with respect to crop selection, pest and weed control. 
</p>
</div>
<h1  id="para1" style="font-style: oblique;color: darkmagenta;">OUR ASSISTANCE</h1>
<pre style="font-size: 30px;text-align: center;"> A new life starts with a garden...
A farmer waters the land as a whole....
But, a gardener is one who treats every individual plant with special care!!</pre>
                <p style="font-size: 30px;text-align: center;">
                <img src="garden.jpeg" alt="humming bird">Garden
        <img src="onion.jpeg" alt="pigeons"></p>
<p style="font-size: 30px; text-align: jistify;">
    The most common problems faced by youth in gardening are..<br>
Poor soil : If soil is not good, plants will not be healthy. Healthy soil rich with organic matter and nutrients will go a long way toward combating all kinds of garden challenges. 
<br>FERTILIZER :
Plants cannot grow healthy and be productive if they are not getting all the nutrients they need. 
<br>WEEDS: 
Weeds are one of the greatest garden challenges and chores for the gardener. Weeds can steel needed water and nutrients from the garden plants, harbor bad insects, shade or crowd out  the vegetables and just make beautiful garden look messy.
<br>TOO MUCH WATER / TOO LITTLE WATER : 
 Standing water will rot the roots of your plants and if it is too dry the plant cannot take up the nutrients that it needs.<br></p>
<pre style=" font-size: 25px;text-align: left;font-style: italic; border-style: double;border-color: brown;">
	Gardening ia a practice of growing and properly maintaining different kind of plants 
generally in a small land area beside house and recently on the terrace.Traditionally gardening
meant for only flowering and ornamental plants , but now-a-days peopke are aware that they can 
grow fruit plants and vegetables that are needed for day to day life in their home garden that 
reduce grossery expenses. For this reason, youngsters are very much interested in gardening.
    But they struggle to choose plants for their garden. They are not awared of the amount of 
moisture to be maintained for their plants. Many times due to improper plant selection and soil 
moisture maintenance, the plants that they plant are degraded.The people keep on changing plants 
and soil; but no result...
	Here we have brought you a website that will guide you to choose awesome plants for your 
garden soil and location, some plants are suggested especially to your environment!!!...Cheer !!! 
No need to change the soil and worry about location....We have done everything for your comfort..	
		         CHOOSE THE PLANT THAT LOVES YOUR LAND
 
</pre>

<h1 id="para2" style="color: darkorchid;">POLLUTION IN YOUR AREA</h1>
<p style="font-size: 30px;text-align: center;">
<%
    String district=request.getParameter("district");
    //out.println(district);
    String textFilePath="";
    String imagee="";
    try{
        Class.forName("oracle.jdbc.OracleDriver"); 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:kaviam","oe","kavia2000");

        Statement st=conn.createStatement();
        String query="select imagee,description from district where name='"+district+"'";
        ResultSet rset=st.executeQuery(query);
while (rset.next()) {
  imagee=rset.getString(1);
     textFilePath=rset.getString(2); 
    }
    //out.println(textFilePath);
    
    BufferedReader reader = new BufferedReader(new FileReader(textFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
            out.println(sb.toString());
            st.close();
            conn.close();
    }catch(Exception e){
        out.println(e);
        out.println("error in database connectivity");
            }
    %>
<table>
<tr>
<td><img src="<%=imagee%>" alt="sparrow"></td>
<td style="font-size: 23px;" ><ul>
        <%
            String pollution;
           try{
        Class.forName("oracle.jdbc.OracleDriver"); 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:kaviam","oe","kavia2000");

        Statement st=conn.createStatement();
        String query1="select pollution,documentt from dis_poll where district='"+district+"'";
        ResultSet rset=st.executeQuery(query1);
while (rset.next()) {%><li>
<%
    pollution=rset.getString(1);
    out.println(pollution);%><br><%
  textFilePath=rset.getString(2);
     BufferedReader reader = new BufferedReader(new FileReader(textFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"\n");
            }
                 out.println(sb.toString()); 
}
            st.close();
            conn.close();
    }catch(Exception e){
        out.println(e);
        out.println("error in database connectivity");
            }
    %>
 </ul></td> 

</tr>
</table>
</p>
<h1 id="para3" style="color: darkorchid;">HERE IS WHAT YOU WANT</h1>

<table cellspacing="15px"><tr>
        <td style="border-style:double; border-color: purple;">
            <img src="waterplant.jpeg" alt="rule" class="h">
        </td>        
<td  style="border-style:double; border-color: purple; background: rgba(13, 152, 186,0.3)"  class="h">
    <p style="font-size: 20px;text-align:center; color: pink">
        The list of crops suitable for your land</p>
    <ul style="list-style-type: circle;font-size: 25px; text-align: center; color: cyan" >
      <%
    String crop="";
    String moisture=request.getParameter("moisture");
    //out.println(moisture);
    String soil=request.getParameter("soil");
    try{
        Class.forName("oracle.jdbc.OracleDriver"); 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:kaviam","oe","kavia2000");

        Statement st=conn.createStatement();
        String query2 = "select name from plants where (moisture_from<="+moisture+" and moisture_to>="+moisture+") and type='G' intersect ((select plant from dis_plant where district='"+district+"') intersect (select plant from soil_plant where soil='"+soil+"'))";
        ResultSet rset=st.executeQuery(query2);
while (rset.next()) {
  crop=rset.getString(1);
  //out.println(crop);
  //out.println("Vwnnaksnaksnknksnd");
  %><li><%
      out.println(crop);
      %></li><%
    }
           st.close();
            conn.close();
    }catch(Exception e){
        out.println(e);
        out.println("error in database connectivity");
            }
    %>  
  
  
    </ul>
</td>
<td  style="border-style:double; border-color: purple;  background: rgba(102, 153, 204,0.3)" class="h" >
    <p style="font-size: 20px;text-align:center; color: pink">
        Pollution tolerant and pollution controlling plants suitable for your land</p>
    <ul style="list-style-type: circle;font-size: 25px; text-align: center; color: yellow" >
      <%
    try{
        Class.forName("oracle.jdbc.OracleDriver"); 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:kaviam","oe","kavia2000");

        Statement st=conn.createStatement();
        String query3 = "(select name from plants where (moisture_from<="+moisture+" and moisture_to>="+moisture+") and type='G' intersect ((select plant from dis_plant where district='"+district+"') intersect (select plant from soil_plant where soil='"+soil+"'))) intersect (select plant from pollution_plant)";
        ResultSet rset=st.executeQuery(query3);
while (rset.next()) {
  crop=rset.getString(1);
  //out.println(crop);
  //out.println("Vwnnaksnaksnknksnd");
  %><li><%
      out.println(crop);
      %></li><%
    }
           st.close();
            conn.close();
    }catch(Exception e){
        out.println(e);
        out.println("error in database connectivity");
            }
    %>  
    </ul>
</td>
<td style="border-style:double; border-color: purple;">
    <img src="lotus.jpeg" alt="rule" class="h"></td>
</tr></table>
<footer>
<center>EVS Project</center><br>
<marquee>Sowmya Kethana Geethanjali Dharani Kavia Sujitha Lavanya</marquee>

</footer>
</body>
</html>
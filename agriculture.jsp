
<html>
<head>
<title>Agriculture</title>
<link rel="stylesheet" href="./style1.css" /> 
</head>

<body background="./treesback.jpg" style="background-repeat: no-repeat;background-size: 300%">

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
<h1 align="center">Improve the proved way</h1></div>

<div align="center" style="border-style: solid; border-color: brown;padding: 20px; height: 70px; width:100%;
		 background-color: lightblue; ">
<ul style="text-align: justify;">
<li><a href="#para1">OUR ASSISTANCE</a></li>
<li><a href="#para2">POLLUTION IN YOUR AREA</a></li>
<li><a href="#para3">HERE IS WHAT YOU WANT</a></li>
</ul>
</div>
<div><p align="center" style=" font-size: 30px">    
       India is an agriculturally dominated country or it will not be wrong to
 say that farmers are the backbone of India .In most of the villages  agriculture is still their occupation and its allied ventures. India is a young country and 
rural youth constitutes about 41% of total population of India. In the present 
scenario the interest of rural people especially rural youth is declining 
towards agriculture. This noble profession of agriculture is taking the back 
seat among different sources of farmers’ income due to decreasing profit when 
compared with total cost of production. Keen interest and contribution of rural 
youths towards agriculture is must for the prosperity of agriculture sector in 
the country because youths have the energy to work, they want to excel in life.
Lack of scientific advancement in the agriculture sector is one of the main 
reasons for youth to not take up Agriculture as their occupation.
The other reasons for youth's lack of interest in farming viz,drudgery of farm 
chores ,low profitablity of agriculture etc . weeding, crop selection, manually 
spraying pesticides etc.,plays a major role in farming.
    </p>
</div>
<h1  id="para1" style="font-style: oblique;color: darkmagenta;">OUR ASSISTANCE</h1>
<pre style="font-size: 30px;text-align: center;"> The ultimate goal of farming is not the growing of crops, 
 but the cultivation and perfection of human beings.</pre>
                <p style="font-size: 30px;text-align: center;">
                    <img src="yagri.jpeg" alt="agri" width="300px">Agriculture
        <img src="machine.jpeg" alt="machine"></p>
<p style="font-size: 30px; text-align: jistify;">
Weeds reduce farm and forest productivity, they invade crops, smother pastures 
and in some cases can harm livestock. They aggressively compete for water, 
nutrients and sunlight, resulting in reduced crop yield and poor crop quality.
Regardless of the purpose of farming, it is important to be able to select a 
crop which suits to the soil or soil moisture. And some of problems faced due 
to usage of manual pesticide sprayer are The I C engine cause high vibrations, 
noise this could result in number of health problems. Due to heavy weight back 
pain causes.These are the most important levels in farming where  youth may feel
diffulties in them. If anything goes wrong in them ,it effectively affects the 
production of the yield and creates great loss to the farmers.Our Project Aim to
reduce their work in selection of crop, weeding,spraying of pesticides .
Our methods help them to get good  production and profits<br></p>
<pre style=" font-size: 25px;text-align: left;font-style: italic; border-style: double;border-color: brown;">
	Though many youngsters are interesed in Agriculture , they hesitate because of the 
heavy manual labour involved in farming and also they don't how how to handle pesticides and 
weeds ; Starting trouble with crop selection......In order to make spraying of pesticides
effective,we have designed a  mobile pesticide sprayer with advanced features which has 
many advantages over the conventional sprayer.This mobile pesticide sprayer aims at better
yield of crop with multi nozzle spraying followed by simultaneously weeding. Using thiswe can 
achieve continuous flow of pesticide at required pressure, height and gives freedom of easy 
engaging and disengaging of the weeder.The sprayer can be adjusted horizontally so that i can
be used for different farming lands and can be controlled using remote.More economical
compared to drones.The Sprayer is best suited for crops like cotton,Pineapple,Chilli etc.
And also crop selection which reduces farmer's time of thinking about the crops which gives
better production in their respective land soil's or soil's moisture. 
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
            <img src="cotton.jpeg" alt="rule" class="h">
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
        String query2 = "select name from plants where (moisture_from<="+moisture+" and moisture_to>="+moisture+") and type='A' intersect ((select plant from dis_plant where district='"+district+"') intersect (select plant from soil_plant where soil='"+soil+"'))";
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
<td  style="border-style:double; border-color: purple; background: rgba(102, 153, 204,0.3)" class="h" >
    <p style="font-size: 20px;text-align:center; color: pink">
        Pollution tolerant and pollution controlling plants suitable for your land</p>
    <ul style="list-style-type: circle;font-size: 25px; text-align: center; color: yellow" >
      <%
    try{
        Class.forName("oracle.jdbc.OracleDriver"); 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:kaviam","oe","kavia2000");

        Statement st=conn.createStatement();
        String query3 = "(select name from plants where (moisture_from<="+moisture+" and moisture_to>="+moisture+") and type='A' intersect ((select plant from dis_plant where district='"+district+"') intersect (select plant from soil_plant where soil='"+soil+"'))) intersect (select plant from pollution_plant)";
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
    <img src="sunflower.jpeg" alt="rule" class="h"></td>
</tr></table>
<footer>
<center>EVS Project</center><br>
<marquee>Sowmya Kethana Geethanjali Dharani Kavia Sujitha Lavanya</marquee>

</footer>
</body>
</html>
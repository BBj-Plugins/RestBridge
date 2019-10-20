To get started:

1. make sure you have npm and bower on your machine

2. clone this repository from GitHub

3. change to the frontend folder, run "bower install"

4. serve the frontend folder in your webserver 
BBj Jetty :
<resource app-mapping="apps" jnlp-mapping="jnlp" name="ChileCompany" path="/ChileCompany" resource="d:/github/chilecompany/frontend/" servlet-mapping="servlet" status="enabled" webservice-mapping="webservice"/>


5. deploy bridge.bbj with the backend directory as working directory (or have it in the PREFIX)

6. 

Example configuration and use:

config.bbx:
PREFIX "D:/beu/components/bridge/" ..

SET REST_WD=D:\beu\ChileCompany
SET REST_ADAPTERPGM=D:\beu\components\bridge\RestBCAdapter.bbj
SET REST_PGM_PREFIX=
SET REST_PGM_SUFFIX=.bbj

jetty.xml:
<context config="D:\bbj171x\cfg\config.bbx" dev-mode="true" docbase="D:\eclipse-neon\workspace\wsk\WebContent" name="wsk" path="/wsk" status="enabled">
<bbjsp-servlet class="RestBridge" config="D:\bbj171x\cfg\config.bbx" mapping="/rest/*" source="D:\beu\components\bridge\RestBridge.bbj" working-dir="D:\beu\components\bridge"/>
<welcome-file>index.html</welcome-file>
</context>

index.html:
<html>
..
<script>
    // example building table rows
	var hr = new XMLHttpRequest();
	hr.open("GET", "http://localhost:8888/wsk/rest/ChileCustomer", true, "admin", "admin123");
	hr.setRequestHeader("Content-type", "application/json", true);
	hr.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var data = JSON.parse(this.responseText);
			var table = document.getElementById('table');
			data.forEach(function(object) {
				var tr = document.createElement('tr');
				tr.innerHTML = '<td>' + object.CUST_NUM + '</td>' + '<td>' + object.LAST_NAME + '</td>';
				table.appendChild(tr);
				//console.log(object.CUST_NUM + ':' + object.LAST_NAME);
			});
		}
	}
	hr.send();
</script>
</html>

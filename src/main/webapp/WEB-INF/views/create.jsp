
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>Add Player</title>

    <script>
        $(document).ready(function () {
            $.ajax({
            url: './land',
            dataType: 'json',
            success: function(data, status, settings) {
                getCountries(data)
            }});
        })
    </script>

    <script>
        function getCountries (data) {
            var arr = data['countries'];
            for (i = 0; i < arr.length; i++){
                var country = arr[i];
                var opt = document.createElement('option');
                opt.innerHTML = country;
                opt.value = country;
                document.getElementById('country').appendChild(opt);
            }
        }
    </script>



    <script>
    function getClubs() {
        deleteOptions();
        var countryVal = $('#country').val();
        $.ajax({
            type: 'POST',
            url:'./clubs',
            data: countryVal,
            datatype: 'json',
            success: function (data, status, settings) {
                var arr = data['clubs'];
                for (var i = 0; i < arr.length; i++) {
                    var country = arr[i];
                    var opt = document.createElement('option');
                    opt.innerHTML = country;
                    opt.value = country;
                    document.getElementById('clubs').appendChild(opt);
                }
            }
        })
    }

    function deleteOptions() {
        var parent = document.getElementById('clubs');
        var nodes = parent.childNodes;
        for (var i = 0; i < nodes.length; i++) {
            var elem = nodes[i];
            if (elem.nodeValue != '') {
                parent.removeChild(elem);
                i--;
            }
        }

    }
    </script>
</head>
<body>
<br/>
<br/>
<form action="${pageContext.request.contextPath}/addPlayer" method="post">
    <label>name</label>
    <input type="text" name="name"><br/>
    <label>lastName</label>
    <input type="text" name="lastName"><br/>
    <label>marketValue</label>
    <input type="text" name="marketValue"><br/>
    <label>country</label>
<%--    <input type="text" name="country"><br/>--%>
    <select id="country" name="country" onchange="getClubs()">
        <option value="" disabled selected> Select your option</option>
    </select><br/>
    <label>club</label>
<%--    <input type="text" name="club"><br/>--%>
    <select id="clubs" name="club">
        <option value="" disabled selected> Select your option</option>
    </select><br/>
    <input type="submit" value="Add player">
</form>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Samaritan - Feedback View</title>
    <link rel="stylesheet" href="content/css/bootstrap.css">
    <link rel="stylesheet" href="content/css/feedback.css">    

</head>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>

    <div class="hero is-info is-fullheight">
        <div id="navigation" style="padding: 0px;"></div>

        <main style="background-color: #fff;color: #000">

            <div class='spacer'></div>

            <header>
                <h1 id='title'>
                    Feedback View
                </h1>
            </header>
        </main>
    </div>
</body>

<script>
    var _table_ = document.createElement('table'),
        _tr_ = document.createElement('tr'),
        _th_ = document.createElement('th'),
        _td_ = document.createElement('td');

    function buildHtmlTable(arr) {
        var table = _table_.cloneNode(false),
            columns = addAllColumnHeaders(arr, table);
        for (var i = 0, maxi = arr.length; i < maxi; ++i) {
            var tr = _tr_.cloneNode(false);
            for (var j = 0, maxj = columns.length; j < maxj; ++j) {
                var td = _td_.cloneNode(false);
                cellValue = arr[i][columns[j]];
                td.appendChild(document.createTextNode(arr[i][columns[j]] || ''));
                tr.appendChild(td);
            }
            table.appendChild(tr);
        }
        return table;
    }

    function addAllColumnHeaders(arr, table) {
        var columnSet = [],
            tr = _tr_.cloneNode(false);
        for (var i = 0, l = arr.length; i < l; i++) {
            for (var key in arr[i]) {
                if (arr[i].hasOwnProperty(key) && columnSet.indexOf(key) === -1) {
                    columnSet.push(key);
                    var th = _th_.cloneNode(false);
                    th.appendChild(document.createTextNode(key));
                    tr.appendChild(th);
                }
            }
        }
        table.appendChild(tr);
        return columnSet;
    }


    document.body.appendChild(buildHtmlTable([{
            "name": "Akshay",
            "age": 50,
            "email": "akshayronaldo@gmail.com",
        },
        {
            "name": "himanshu",
            "age": "25",
            "email": "swimming@x.com",
        },
        {
            "name": "Akash",
            "info": "Really great job! All the best!"
        }
    ]));

    document.getElementsByTagName('table')[0].classList.add("table-bordered");
    document.getElementsByTagName('table')[0].classList.add("feedback-table");
</script>

</html>
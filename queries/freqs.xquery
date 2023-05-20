

<html>
<head>
</head>
    <body>
        <table  style="margin-left: auto; margin-right: auto;">
         <caption>Name: Sayed Sohail Pasha Peerzade</caption>
         <caption>Student ID: 220541549</caption>
        <caption><h2>Q B: Frequency Query</h2></caption>
            <tr>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Target</th>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Successor</th>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Frequency</th>
            </tr>
        
            {
            
            let $targetWordGiven := "has"
            let $targetWord := collection("?select=*.xml")//w[lower-case(normalize-space()) = $targetWordGiven]
            for $distinctWord in distinct-values($targetWord/following-sibling::w[1])
            let $frequency := count($targetWord/following-sibling::w[1][. = $distinctWord])
            order by $frequency descending
            return
            <tr style="border-collapse: collapse;">
                <td style="border: 1px solid #ccc; padding: 8px;"> {$targetWordGiven} </td>
                <td style="border: 1px solid #ccc; padding: 8px;"> {$distinctWord} </td>
                   <td style="border: 1px solid #ccc; padding: 8px;"> {$frequency} </td>
                
            </tr>
            }
        </table>
    </body>
</html>
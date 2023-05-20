

<html>
<head>
</head>
    <body>
        <table  style="margin-left: auto; margin-right: auto;">
          <caption>Name: Sayed Sohail Pasha Peerzade</caption>
           <caption>Student ID: 220541549</caption>
           <caption><h2>Q A: Extract Query</h2></caption>
            <tr>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Target</th>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Successor</th>
            </tr>
        
            {
            for $word in collection("?select=*.xml")//w
            
            let $lowercasedWord := lower-case($word),
                $targetWord := normalize-space($lowercasedWord),
                
                $successorWord := normalize-space(lower-case($word/following-sibling::w[1]))
            where $targetWord = 'has'
            order by $targetWord 
            return
            <tr style="border-collapse: collapse;">
                <td style="border: 1px solid #ccc; padding: 8px;"> {$targetWord} </td>
                <td style="border: 1px solid #ccc; padding: 8px;"> {$successorWord} </td>
            </tr>
            }
        </table>
    </body>
</html>
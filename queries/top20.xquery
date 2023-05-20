

<html>
<head>
</head>
    <body>
        <table  style="margin-left: auto; margin-right: auto;">
         <caption>Name: Sayed Sohail Pasha Peerzade</caption>
         <caption>Student ID: 220541549</caption>
        <caption><h2>Q D: Top 20 Results</h2></caption>
            <tr>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Target</th>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Successor</th>
                <th style="background: #ccc; border: 1px solid #ccc; padding: 8px;">Probability</th>
            </tr>
        
            {
            
            let $targetWordGiven := "has"
            let $targetWord := collection("?select=*.xml")//w[lower-case(normalize-space()) = $targetWordGiven]
            let $distinctWordsList := distinct-values($targetWord/following-sibling::w[1])
            let $probailityList :=
                  for $distinctWord at $i in $distinctWordsList
                  let $frequency := count($targetWord/following-sibling::w[1][. = $distinctWord])
                  let $totalAppearance := count(collection("?select=*.xml")//w[lower-case(normalize-space()) = lower-case(normalize-space($distinctWord))])
                  let $probability := round($frequency div $totalAppearance, 6)
                  order by $probability descending
                  return 
                  $probability
            for $output  at $count in subsequence($probailityList, 1,20)
            return
            <tr style="border-collapse: collapse;">
                <td style="border: 1px solid #ccc; padding: 8px;"> {$targetWordGiven} </td>
                <td style="border: 1px solid #ccc; padding: 8px;"> {$distinctWordsList[$count]} </td>
                   <td style="border: 1px solid #ccc; padding: 8px;"> {$output} </td>
                
            </tr>
            }
        </table>
    </body>
</html>
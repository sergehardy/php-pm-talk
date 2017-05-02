<?php
$usage = round(memory_get_usage(true)/1000000 ,2);
$proc=  sys_getloadavg();
?>
<table>
    <tbody>
        <tr>
            <th>Mémoire</th>
            <td><?php echo $usage;?></td>
            <td>Mo</td>
        </tr>
        <tr>
            <th>Charge</th>
            <td><?php echo sprintf("%s %s %s",$proc[0],$proc[1],$proc[2]);?></td>
            <td>_</td>
        </tr>
    </tbody>
</table>


{include file="header.tpl" title="Info"}
<h2>Upload History</h2>
<hr>
<script type="text/javascript" charset="utf-8">
            $(document).ready(function(){
                $('#datatables').dataTable({
                    "sPaginationType":"full_numbers",
                    "aaSorting":[[2, "desc"]],
                    "bJQueryUI":true
                });
            })
            
</script>
<table  id="datatables" class="display">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Rank</th>
                  <th>Roll No</th>
                  <th>Student Name</th>
                  <th>Total</th>
                  <th>Percentage</th>
                </tr>
              </thead>
              <tbody>
              {foreach $data as $value}
                  <tr>                 
                  <td>{$value.id}</td>
                  <td>{$value.rank}</td>
                  <td>{$value.roll_no}</td>
                  <td>{$value.student_name}</td>
                  <td>{$value.total}</td>
                  <td>{$value.percentage}</td>                                    
                  </tr>         
              {/foreach}
                      
              </tbody>
</table>
{include file="footer.tpl" title="Info"}

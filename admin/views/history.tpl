{include file="header.tpl" title="Info"}
<h2>Upload History</h2>
<hr>
<table class="table table-bordered">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Department</th>
                  <th>No Column</th>
                  <th>No of record</th>
                  <th>Uploaded At</th>
                  <th>created At</th>
                </tr>
              </thead>
              <tbody>
              {foreach $data as $value}
                  <tr>                 
                  <td>{$value.id}</td>
                  <td>{$value.dept}</td>
                  <td>{$value.no_column}</td>
                  <td>{$value.no_of_record}</td>
                  <td>{$value.uloaded_at}</td>
                  <td>{$value.created_at}</td>                                    
                  </tr>         
              {/foreach}
                      
              </tbody>
</table>
{include file="footer.tpl" title="Info"}
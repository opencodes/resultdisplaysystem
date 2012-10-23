{include file="header.tpl" title="Info"}
<div class="row" >
<div class="page-header">
    <h1>Result  <small>.</small></h1>
</div>

{if $data}
<table class="table table-bordered">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Rank</th>
                  <th>Total</th>
                  <th>Percentage</th>
                  <th>Percentile</th>
                </tr>
              </thead>
              <tbody>
              {foreach $data as $value}
                  <tr>                 
                  <td><a href="resultview.php?course={$course}&id={$value.id}" >{$value.id}</a></td>
                  <td>{$value.rank}</td>
                  <td>{$value.total}</td>
                  <td>{$value.percentage}</td>
                  <td>{$value.percentile}</td>
                  </tr>         
              {/foreach}                      
              </tbody>
</table>
{else}
<div class="alert">
    <strong>Warning!</strong> no result found.
</div>
{/if}      
</div>

{include file="footer.tpl" title="Info"}
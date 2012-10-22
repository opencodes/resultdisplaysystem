{include file="header.tpl" title="Info"}
<div class="row" >
<div class="page-header">
    <h1>Marksheet </h1>
</div>
<table class="table table-bordered"> 
<tbody>
                  <tr> <td>Student Name</td>
                  <td>{$data.student_name}</td></tr>
</table>
<table class="table table-bordered">              
              <tbody>
            
                  <tr>                 
                  <th>RANK</th>
                  <th>TOTAL</th>
                  <th>PERCENTAGE</th>
                  <th>PERCENTILE</th>
                  <th>GRADE</th>
                  </tr>    
                  <tr>                 
                  <td>{$data.rank}</td>
                  <td>{$data.total}</td>
                  <td>{$data.percentage}</td>
                  <td>{$data.percentile}</td>
                  <td>{$data.gradde}</td>
                  </tr>  
                  <tr>   
			</tbody>
</table>              
<table class="table table-bordered">              
              <tbody> 
                  		 	 	 	 	 	  
                  <tr>                 
                  <td colspan='3'>PHYSICS</td>
                  <td colspan='3'>CHEMISTRY</td>
                  <td colspan='3'>MATHS</td>
                 
                  </tr> 

                <tr>                 
                  <td>Marks </td>
                  <td>Percentage </td>
                  <td> Rank</td>
                  <td>Marks </td>
                  <td>Percentage </td>
                  <td> Rank</td>
                  <td>Marks </td>
                  <td>Percentage </td>
                  <td> Rank</td>
                  </tr>  
                  <tr>                 
                  <td>{$data.phy_marks}  </td>
                  <td>{$data.phy_percentage}</td>
                  <td>{$data.phy_rank}</td>
                  <td>{$data.chem_marks}  </td>
                  <td>{$data.chem_percentage}</td>
                  <td>{$data.chem_rank}</td>
                  <td>{$data.maths_marks}  </td>
                  <td>{$data.math_percentage}</td>
                  <td>{$data.maths_rank}</td>
                  </tr>        
              </tbody>
</table>
</div>

{include file="footer.tpl" title="Info"}
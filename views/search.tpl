{include file="header.tpl" title="Info"}
<div class="row" >
<div class="page-header">
    <h1>Result Search <small>find your result by respective course and roll no.</small></h1>
</div>
<form class="form-horizontal" action="result.php" method="post">
        <fieldset>
          <div class="control-group">
            <label for="input01" class="control-label">Entr Roll No</label>
            <div class="controls">
              <select type="text" id="input01" name="course" class="input-xlarge">
              <option value='iit'>IIT </option>
              <option value="pmt">PMT</option>
              </select>
              <input type="text" id="input01"   name="rollno" class="input-xlarge">
              <button class="btn btn-primary" type="submit">Search Result </button>
              
            </div>
          </div>         
      
        </fieldset>
</form>

</div>

{include file="footer.tpl" title="Info"}
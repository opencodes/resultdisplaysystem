{include file="header.tpl" title="Info"}
<div class="row" >
<div class="page-header">
    <h1>Result Search <small>find your result by respective course and roll no.</small></h1>
</div>
<form class="form-horizontal">
        <fieldset>
          <div class="control-group">
            <label for="input01" class="control-label">Search Result</label>
            <div class="controls">
              <select type="text" id="input01" name="course" class="input-xlarge">
              <option value='iit'>IIT </option>
              <option value="pmt">PMT</option>
              </select>
              <input type="text" id="input01" value="Enter roll no." class="input-xlarge">
              <button class="btn btn-primary" type="submit">Save changes</button>
              
            </div>
          </div>         
      
        </fieldset>
      </form>
</div>
{include file="footer.tpl" title="Info"}
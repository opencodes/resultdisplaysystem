{include file="header.tpl" title="Info"}
<h1>Upload CSV </h1>
<hr>
<a href="sample.csv">Download Sample CSV</a>
</br>
</br>
{if $uploaded eq 1}
<div class="alert">
    <strong>Warning!</strong> Data for current date has allready been uploaded.
</div>
{else}
<form action="success.php" method="post" enctype="multipart/form-data">
<input type="file" name="csv" value="" />
<input type="submit" name="submit" value="Save" /></form>
{/if}
{include file="footer.tpl" title="Info"}

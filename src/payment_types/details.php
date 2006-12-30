<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php

include("./include/include_main.php");
include("./include/validation.php");
echo <<<EOD
<title>{$title} :: {$LANG_payment_type_details}</title>
<link rel="stylesheet" type="text/css" href="themes/{$theme}/tables.css">

EOD;
jsBegin();
jsFormValidationBegin("frmpost");
jsValidateRequired("pt_description",$LANG_payment_type_description);
jsFormValidationEnd();
jsEnd();

#get the invoice id
$payment_type_id = $_GET['submit'];

#Info from DB print
$conn = mysql_connect("$db_host","$db_user","$db_password");
mysql_select_db("$db_name",$conn);

#customer query
$print_payment_type = "SELECT * FROM si_payment_types WHERE pt_id = $payment_type_id";
$result_payment_type = mysql_query($print_payment_type, $conn) or die(mysql_error());

while ($Array = mysql_fetch_array($result_payment_type) ) {
	$pt_idField = $Array['pt_id'];
	$pt_descriptionField = $Array['pt_description'];
	$pt_enabledField = $Array['pt_enabled'];

	if ($pt_enabledField == 1) {
		$wording_for_enabled = $wording_for_enabledField;	
	} else {
		$wording_for_enabled = $wording_for_disabledField;
	}

};


if ($_GET['action'] === 'view') {

$display_block = <<<EOD
	
	<table align="center">
	<tr>
		<td class="details_screen">{$LANG_payment_type_id}</td><td>{$pt_idField}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_description}</td><td>{$pt_descriptionField}</td>
	</tr>
	<tr>
		<td class="details_screen">{$wording_for_enabledField}</td><td>{$wording_for_enabled}</td>
	</tr>
	</table>

EOD;
$footer = "

<div id='footer'><a href='?submit={$pt_idField}&action=edit'>{$LANG_edit}</a></div>
";

}

else if ($_GET['action'] === 'edit') {

#do the product enabled/disblaed drop down
$display_block_enabled = "<select name=\"pt_enabled\">
<option value=\"$pt_enabledField\" selected style=\"font-weight: bold\">$wording_for_enabled</option>
<option value=\"1\">$wording_for_enabledField</option>
<option value=\"0\">$wording_for_disabledField</option>
</select>";

$display_block = <<<EOD

	<table align=center>
	<tr>
		<td class="details_screen">{$LANG_payment_type_id}</td>
		<td>{$pt_idField}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_description}</td>
		<td><input type="text" name="pt_description" value="{$pt_descriptionField}"
		 size="50" /></td>
	</tr>
	<tr>
		<td class="details_screen">{$wording_for_enabledField} </td>
		<td>{$display_block_enabled}</td>
	</tr>
	</table>

EOD;

$footer = <<<EOD

<input type="submit" name="cancel" value="{$LANG_cancel}" />
<input type="submit" name="save_payment_type" value="{$LANG_save_payment_type}" />
<input type="hidden" name="op" value="edit_payment_type" />

EOD;
}

?>
<script type="text/javascript" src="niftycube.js"></script>
<script type="text/javascript">
window.onload=function(){
Nifty("div#container");
Nifty("div#content,div#nav","same-height small");
Nifty("div#header,div#footer","small");
}
</script>
</head>
<body>
<?php
$mid->printMenu('hormenu1');
$mid->printFooter();
echo <<<EOD

<br>
<form name="frmpost" action="insert_action.php?submit={$_GET['submit']}"
 method="post" onsubmit="return frmpost_Validator(this)">
<div id="container">
<div id="header"><b>{$LANG_payment_type}</b></div>
{$display_block}
<div id="footer">
{$footer}

EOD;
?>
</div>
</div>
</body>
</html>
<?php


$block = <<<EOD
<form name="frmpost" ACTION="index.php?module=customers&view=save"
	METHOD=POST onsubmit="return frmpost_Validator(this)">
<div id="top"><b>{$LANG_customer_add}</b></div>
<hr></hr>
<table align=center>
	<tr>
		<td class="details_screen">{$LANG_customer_name}</td>
		<td><input type=text name="c_name" size=25></td>
	</tr>
	</tr>
	<td class="details_screen">{$LANG_customer_contact} <a
		href="./documentation/info_pages/customer_contact.html"
		rel="gb_page_center[450, 450]"><img
		src="./images/common/help-small.png"></img></a></td>
	<td><input type=text name="c_attention" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_street}</td>
		<td><input type=text name="c_street_address" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_street2} <a
			href="./documentation/info_pages/street2.html"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="c_street_address2" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_city}</td>
		<td><input type=text name="c_city" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_state}</td>
		<td><input type=text name="c_state" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_zip}</td>
		<td><input type=text name="c_zip_code" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_country} ({$LANG_optional})</td>
		<td><input type=text name="c_country" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_phone}</td>
		<td><input type=text name="c_phone" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_mobile_phone}</td>
		<td><input type=text name="c_mobile_phone" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_fax}</td>
		<td><input type=text name="c_fax" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_email}</td>
		<td><input type=text name="c_email" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel[1]} <a
			href="./documentation/info_pages/custom_fields.html"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="c_custom_field1" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel[2]} <a
			href="./documentation/info_pages/custom_fields.html"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="c_custom_field2" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel[3]} <a
			href="./documentation/info_pages/custom_fields.html"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="c_custom_field3" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel[4]} <a
			href="./documentation/info_pages/custom_fields.html"
			rel="gb_page_center[450, 450]"><img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="c_custom_field4" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_notes}</td>
		<td><textarea name='c_notes' rows=8 cols=50></textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$wording_for_enabledField}</td>
		<td>{$display_block_enabled}</td>
	</tr>
</table>
<hr></hr>
<input type=submit name="submit" value="{$LANG_insert_customer}">
<input type=hidden name="op" value="insert_customer">
</form>
EOD;

?>
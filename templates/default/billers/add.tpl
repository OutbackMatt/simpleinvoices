<?php

$block = <<<EOD
	<FORM name="frmpost" ACTION="index.php?module=billers&view=save" METHOD=POST onsubmit="return frmpost_Validator(this)">
<b>{$LANG_biller_to_add}</b>
    <hr></hr>
<table align="center" >
	<tr>
		<td class="details_screen">{$LANG_biller_name}</td><td><input type=text name="b_name" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_street}</td><td><input type=text name="b_street_address" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_street2} <a href="./src/documentation/info_pages/street2.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td><input type=text name="b_street_address2" size=25>
</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_city}</td><td><input type=text name="b_city" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_state}</td><td><input type=text name="b_state" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_zip}</td><td><input type=text name="b_zip_code" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_country} ({$LANG_optional})</td><td><input type=text name="b_country" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_phone}</td><td><input type=text name="b_phone" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_mobile_phone}</td><td><input type=text name="b_mobile_phone" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_fax}</td><td><input type=text name="b_fax" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_email}</td><td><input type=text name="b_email" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel['1']} <a href="./documentation/info_pages/custom_fields.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td><input type=text name="b_custom_field1" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel['2']} <a href="./documentation/info_pages/custom_fields.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td><input type=text name="b_custom_field2" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel['3']} <a href="./documentation/info_pages/custom_fields.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td><input type=text name="b_custom_field3" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel['4']} <a href="./documentation/info_pages/custom_fields.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td><input type=text name="b_custom_field4" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_logo_file} <a href="./documentation/info_pages/insert_biller_text.html" rel="gb_page_center[450, 450]"><img src="./images/common/help-small.png"></img></a></td><td>{$display_block_logo_list}</td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_invoice_footer}</td><td><textarea input type=text name="b_co_footer" rows=4 cols=50></textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG_notes}</td><td><textarea input type=text name="b_notes" rows=8 cols=50></textarea></td>
	</tr>

	<tr>
		<td class="details_screen">{$wording_for_enabledField}</td><td>{$display_block_enabled}</td>
	</tr>


	</div>
	</div>

        </div>
	</tbody>
</table>
<hr></hr>
	<input type="submit" name="submit" value="{$LANG_insert_biller}" />
	<input type="hidden" name="op" value="insert_biller" />


</FORM>
EOD;

?>
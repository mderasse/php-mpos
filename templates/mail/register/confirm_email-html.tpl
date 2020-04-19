<tr style="margin: 0; padding: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px;">
    <td class="content-block" style="margin: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; padding: 0 0 20px;" valign="top">
        You have created a new account. In order to complete the registration process please activate your account:
    </td>
</tr>
<tr style="margin: 0; padding: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px;">
    <td class="content-block aligncenter" style="margin: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; padding: 0 0 20px; text-align: center;" valign="top" align="center">
        <a href="http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=account&action=confirm&token={nocache}{$DATA.token}{/nocache}" class="btn-primary" style="margin: 0; padding: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; text-decoration: none; color: #FFF; background-color: #348eda; border: solid #348eda; border-width: 10px 20px; line-height: 2; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; text-transform: capitalize;">Activate your account</a>
    </td>
</tr>
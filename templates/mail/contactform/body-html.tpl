<tr style="margin: 0; padding: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px;">
    <td class="content-block" style="margin: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; padding: 0 0 20px;" valign="top">
        {nocache}{$DATA.senderName}{/nocache} Sent you a message
    </td>
</tr>
<tr style="margin: 0; padding: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px;">
    <td class="content-block aligncenter" style="margin: 0; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; padding: 0 0 20px; text-align: center;" valign="top" align="center">
        Senders Email: {nocache}{$DATA.senderEmail}{/nocache}<br />
        Subject: {nocache}{$DATA.senderSubject}{/nocache}<br />
        Personal message:<br />
        {nocache}{$DATA.senderMessage}{/nocache}
    </td>
</tr>
You have requested a password reset through our online form.
In order to complete the request please follow this link:

http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=password&action=change&token={nocache}{$DATA.token}{/nocache}

You will be asked to change your password.
You can then use this new password to login to your account.
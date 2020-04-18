You have a pending request to change your account details.

If you initiated this request, please follow the link below to confirm your changes.

http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=account&action=edit&ea_token={nocache}{$DATA.token}{/nocache}

If you suspect any suspicious activity on your account,
please change your password and enable two-factor authentication.
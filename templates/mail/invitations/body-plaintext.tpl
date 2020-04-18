{nocache}{$DATA.username}{/nocache} invited you to participate on this pool.
In order to create your account, please follow this link:

http{if $smarty.server.HTTPS|default:"" eq "on"}s{/if}://{$smarty.server.SERVER_NAME}{if $smarty.server.SERVER_PORT != "443" && $smarty.server.SERVER_PORT != "80"}:{$smarty.server.SERVER_PORT}{/if}{$smarty.server.SCRIPT_NAME}?page=register&token={nocache}{$DATA.token}{/nocache}

{if $DATA.message}
Personal message:
{nocache}{$DATA.message}{/nocache}
{/if}
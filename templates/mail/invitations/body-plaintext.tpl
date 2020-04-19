{nocache}{$DATA.username}{/nocache} invited you to participate on this pool.
In order to create your account, please follow this link:

{$WEBSITEURL}/index.php?page=register&token={nocache}{$DATA.token}{/nocache}

{if $DATA.message}
Personal message:
{nocache}{$DATA.message}{/nocache}
{/if}
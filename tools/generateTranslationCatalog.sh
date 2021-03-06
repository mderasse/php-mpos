#!/bin/bash
./tsmarty2c.php -o mpos.pot ../templates/bootstrap/

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"en\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"fr\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"es\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"de\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"it\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"ru\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot

echo "" >> mpos.pot
echo "#: ../templates/bootstrap//global/header.tpl:70" >> mpos.pot
echo "msgid \"zh\"" >> mpos.pot
echo "msgstr \"\"" >> mpos.pot


find ../include -iname "*.php" | xargs xgettext --from-code=UTF-8 -k_e -k_x -k__ -j -o mpos.pot
xgettext --from-code=UTF-8 -k_e -k_x -k__ -j -o mpos.pot ../public/index.php


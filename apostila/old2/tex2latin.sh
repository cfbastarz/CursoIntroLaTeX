#!/bin/sed -f
#
# tex2latin - script sed que converte acentos latex para latin
# Copyright (C) 2001 Elgio Schlemer
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# Elgio Schlemer  02/Out/2001
# Exemplo:   "\'a"  ->  "б"
#
# Nao remove as { } opcionais.
#             Exemplo:  "{\'a}" ->  "{б}"
#
# Forma de execuзгo:
# cat arquivo.tex | tex2latin
# Joga na saida padrao o arquivo convertido
#
# Ou 
# tex2latin arquivo.tex
# Converte arquivo.tex e joga o resultado na saida padrao.
#
# ATENCAO: JAMAIS FAЗA:
#           tex2latin arquivo.tex > arquivo.tex
#           cat arquivo.tex | tex2latin > arquivo.tex
# Isto farah voce PERDER o arquivo!!!

# Vogais, acento agudo
s/\\'a/б/g
s/\\'e/й/g
s/\\'\\i/н/g
s/\\'o/у/g
s/\\'u/ъ/g

s/\\'A/Б/g
s/\\'E/Й/g
s/\\'I/Н/g
s/\\'O/У/g
s/\\'U/Ъ/g

# Vogais, acento crase
s/\\`a/а/g
s/\\`e/и/g
s/\\`i/м/g
s/\\`o/у/g
s/\\`u/щ/g

s/\\`A/А/g
s/\\`E/И/g
s/\\`I/М/g
s/\\`O/Т/g
s/\\`U/Щ/g

# Vogais, til
s/\\~a/г/g
s/\\~o/х/g
s/\\~n/с/g

s/\\~A/Г/g
s/\\~O/Х/g
s/\\~N/С/g

# Cedilha
s/\\c c/з/g
s/\\c{c}/з/g
s/\\c C/З/g
s/\\c{C}/З/g

# Vogais, acento cincunflexo
s/\\^a/в/g
s/\\^e/к/g
s/\\^i/о/g
s/\\^o/ф/g
s/\\^u/ы/g

s/\\^A/В/g
s/\\^E/К/g
s/\\^I/О/g
s/\\^O/Ф/g
s/\\^U/Ы/g


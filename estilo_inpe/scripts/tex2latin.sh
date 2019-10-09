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
# Exemplo:   "\'a"  ->  "á"
#
# Nao remove as { } opcionais.
#             Exemplo:  "{\'a}" ->  "{á}"
#
# Forma de execução:
# cat arquivo.tex | tex2latin
# Joga na saida padrao o arquivo convertido
#
# Ou 
# tex2latin arquivo.tex
# Converte arquivo.tex e joga o resultado na saida padrao.
#
# ATENCAO: JAMAIS FAÇA:
#           tex2latin arquivo.tex > arquivo.tex
#           cat arquivo.tex | tex2latin > arquivo.tex
# Isto farah voce PERDER o arquivo!!!

# Vogais, acento agudo
s/\\'a/á/g
s/\\'e/é/g
s/\\'\\i/í/g
s/\\'o/ó/g
s/\\'u/ú/g

s/\\'A/Á/g
s/\\'E/É/g
s/\\'I/Í/g
s/\\'O/Ó/g
s/\\'U/Ú/g

# Vogais, acento crase
s/\\`a/à/g
s/\\`e/è/g
s/\\`i/ì/g
s/\\`o/ó/g
s/\\`u/ù/g

s/\\`A/À/g
s/\\`E/È/g
s/\\`I/Ì/g
s/\\`O/Ò/g
s/\\`U/Ù/g

# Vogais, til
s/\\~a/ã/g
s/\\~o/õ/g
s/\\~n/ñ/g

s/\\~A/Ã/g
s/\\~O/Õ/g
s/\\~N/Ñ/g

# Cedilha
s/\\c c/ç/g
s/\\c{c}/ç/g
s/\\c C/Ç/g
s/\\c{C}/Ç/g

# Vogais, acento cincunflexo
s/\\^a/â/g
s/\\^e/ê/g
s/\\^i/î/g
s/\\^o/ô/g
s/\\^u/û/g

s/\\^A/Â/g
s/\\^E/Ê/g
s/\\^I/Î/g
s/\\^O/Ô/g
s/\\^U/Û/g


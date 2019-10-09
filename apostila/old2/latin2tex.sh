#!/bin/sed -f
#
# latin2tex - script sed que converte acentos latin para comandos TeX
# Copyright (C) 2002 Rafael Ávila
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
# -----------------------------------------------
# latin2tex v1.0
# uso: tex2latin < in.latin > out.tex
# baseado no script `tex2latin' de Elgio Schlemer
#
# a versão mais recente de ambos pode ser encontrada em
# http://www.inf.ufrgs.br/utug/download

# Vogais, acento agudo
s/á/{\\'a}/g
s/é/{\\'e}/g
s/í/{\\'\\i}/g
s/ó/{\\'o}/g
s/ú/{\\'u}/g

s/Á/{\\'A}/g
s/É/{\\'E}/g
s/Í/{\\'I}/g
s/Ó/{\\'O}/g
s/Ú/{\\'U}/g

# Vogais, acento crase
s/à/{\\`a}/g
s/è/{\\`e}/g
s/ì/{\\`i}/g
s/ó/{\\`o}/g
s/ù/{\\`u}/g

s/À/{\\`A}/g
s/È/{\\`E}/g
s/Ì/{\\`I}/g
s/Ò/{\\`O}/g
s/Ù/{\\`U}/g

# Vogais, til
s/ã/{\\~a}/g
s/õ/{\\~o}/g
s/ñ/{\\~n}/g

s/Ã/{\\~A}/g
s/Õ/{\\~O}/g
s/Ñ/{\\~N}/g

# Cedilha
s/ç/{\\c{c}}/g
s/ç/{\\c{c}}/g
s/Ç/{\\c{C}}/g
s/Ç/{\\c{C}}/g

# Vogais, acento cincunflexo
s/â/{\\^a}/g
s/ê/{\\^e}/g
s/î/{\\^i}/g
s/ô/{\\^o}/g
s/û/{\\^u}/g

s/Â/{\\^A}/g
s/Ê/{\\^E}/g
s/Î/{\\^I}/g
s/Ô/{\\^O}/g
s/Û/{\\^U}/g


#!/usr/bin/perl
#########################################################3
print "Script \t\"pdftohtmlB \" \n\t(Convert: PDF -> HTML)\n\nAuthor: Bruno Roth (roth\@lit.inpe.br)\n\n\n";

print "USE:\n\tpdftohtmlB PDF DEVICE RESOLUTION PAGE_SIZE_HTML [IMG|NOIMG]\n\n";
print "OPTIONS:\n";
print "\tPDF: \t\tfile\n";
print "\tDEVICE: \tpngmono pnggray png16 png256 png16m jpeg jpeggray \n";
print "\tRESOLUTION: \tpixels/inch resolution\n";
print "\tPAGE_SIZE_HTML: page (HTML) size in pixels\n";
print "\tIMG | NOIMG: \"Create/Not create\" device image\n";
#print "\tUPDATE_DEVICE_IMG: update device image#\n";

print "\n\nEX:\n\tpdftohtmlB file.pdf jpeg 100 500x0 IMG \n\n\n";


if(@ARGV != 5){
	exit;
}
########################################################3
#Configure

$namepdf="../@ARGV[0]";
$basenamefig = "./p";

if (grep(/png/,@ARGV[1])){
	$fig="png";
}
else{
	$fig="jpg";
}
@reshtml = split(/x/,@ARGV[3]);
$width=@reshtml[0];#842;
$height=@reshtml[1];#595;

$dpi=@ARGV[2];

@namepdfTMPL =  split(/\./,@ARGV[0]);
$namepdfTMP = @namepdfTMPL[0];
$dirhtml="html$namepdfTMP";

#print @ARGV[0],$namepdf,$basenamefig,$fig,$width,$height,$dirhtml;
#exit;


###########################################################################

mkdir($dirhtml,0777);
chdir($dirhtml);

####################
if (!@ARGV[5]=="0"){
	system("/usr/bin/gs -r$dpi -dNOPAUSE -dBATCH -sDEVICE=@ARGV[1] -sOutputFile=$basenamefig@ARGV[5].$fig -dFirstPage=@ARGV[5] -dLastPage=@ARGV[5] $namepdf");
	exit();
}
######################

$cont = -1;
$beginHtml="
<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">
<html>
<head>
  <meta http-equiv=\"content-type\" content=\"text/html; charset=ISO-8859-1\">
  <link href=\"./html.css\" rel=\"stylesheet\" type=\"text/css\">
</head>
<body bgcolor=\"#FFFFFF\">
<table border=1 width=\"100%\" >
<tr align=\"center\" valign=\"top\" >
";
$endHtml="
</tr>
</table>
</body>
</html>
";

$beginFigure = "<div align=\"center\"><img src=\"";
$endFigure= "\"";

if(!$width=="0"){
        $endFigure = "$endFigure width=\"$width\"";
}

if(!$height=="0"){
	$endFigure = "$endFigure height=\"$height\"";
}

$endFigure= "$endFigure border=\"0\" align=\"middle\"></div>";
#$endFigure= "\" border=\"0\" align=\"middle\"></div>";

$htmlcss="
body {
        background-color: white;
}
";
####################
system("/bin/echo \"$htmlcss\" > html.css");
######################

####################
#system("/usr/bin/gs -r$dpi -dNOPAUSE -dBATCH -sDEVICE=@ARGV[1] -sOutputFile=$basenamefig\%d.$fig $namepdf");
if (!grep(/NOIMG/,@ARGV[4])){
	system("/usr/bin/gs -r$dpi -dNOPAUSE -dBATCH -sDEVICE=@ARGV[1] -sOutputFile=$basenamefig\%d.$fig $namepdf");
}
######################


@filespng = qx!ls *.$fig!;
$firstpage = -1; 
$lastpage = scalar(@filespng)-2; 
while($line = <@filespng>){
print "PAGE: $cont\n";

open(OUT,">$basenamefig$cont.html");
print OUT $beginHtml,"\n";
print OUT "<td>";
print OUT "<B>PAG: $cont</B><br><HR>";
#print OUT "<B>NAVEGAÇÃO:</B><br>";
print OUT "<a href=\"./$basenamefig$firstpage.html\">[INICIO]</A><BR>";
$tmp = scalar($cont) + 50;
if ($tmp>$lastpage){$tmp=$lastpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[+50]</A><BR>";
$tmp = scalar($cont) + 10;
if ($tmp>$lastpage){$tmp=$lastpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[+10]</A><BR>";
$tmp = scalar($cont) + 5;
if ($tmp>$lastpage){$tmp=$lastpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[+05]</A><BR>";
$tmp = scalar($cont) + 1;
if ($tmp>$lastpage){$tmp=$lastpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[+01]</A><BR>";
$tmp = scalar($cont) - 1;
if ($tmp<$firstpage){$tmp=$firstpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[-01]</A><BR>";
$tmp = scalar($cont) - 5;
if ($tmp<$firstpage){$tmp=$firstpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[-05]</A><BR>";
$tmp = scalar($cont) - 10;
if ($tmp<$firstpage){$tmp=$firstpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[-10]</A><BR>";
$tmp = scalar($cont) - 50;
if ($tmp<$firstpage){$tmp=$firstpage;}
print OUT "<a href=\"./$basenamefig$tmp.html\">[-50]</A><BR>";

print OUT "<a href=\"./$basenamefig$lastpage.html\">[FIM]</A><BR>";

print OUT "<HR>";
#print OUT "<a href=\"./@ARGV[0]\">[@ARGV[0]]</a><BR>";
print OUT "<a href=\"../@ARGV[0]\">[PDF]</a><BR>";


#for($cont2=1 ; $cont2 <= scalar(@filespng) ; $cont2++){
#	print OUT "<a href=\"./$basenamefig$cont2.html\">[$cont2]</a> ";
#}
$contAux = $cont+2;
print OUT "</td>";
	print OUT "<td><a href=$basenamefig$contAux.$fig>",$beginFigure,$basenamefig,$contAux,".",$fig,$endFigure,"</a></td>","\n",; 	
	print OUT $endHtml;
close(OUT);
	$cont = $cont + 1;


}

exit;

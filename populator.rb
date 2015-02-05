class HtmlEntitiesPopulator
  def initialize(output_path)
    @output_path = output_path
  end

  def populate
    File.open(@output_path, 'w:UTF-8') do |out|
      out.write <<-eos
{
  "metadata" : {
    "mapping" : {
      "_all" : {
        "enabled" : false
      },
      "properties" : {
        "symbol" : {
          "type" : "string",
          "index" : "not_analyzed"
        },
        "code" : {
          "type" : "string",
          "index" : "not_analyzed"
        },
        "namedCode" : {
          "type" : "string",
          "index" : "not_analyzed"
        },
        "aliases" : {
          "type" : "string",
          "index" : "analyzed"
        }
      }
    }
  },
  "updates" : [
    {"symbol":"™","code":"&#8482;","namedCode":"","aliases": ["trademark", "tm"]},
    {"symbol":"€","code":"","namedCode":"&euro;","aliases": ["euro"]},
    {"symbol":"Space","code":"&#32;","namedCode":"&nbsp;","aliases": ["space"]},
    {"symbol":"!","code":"&#33;","namedCode":"","aliases": ["exclamation mark", "exclamation point", "bang"]},
    {"symbol":"\\"","code":"&#34;","namedCode":"&quot;","aliases": ["quote", "double quote", "quotation", "quotation mark", "quote mark"]},
    {"symbol":"#","code":"&#35;","namedCode":"","aliases": ["pound", "hash", "octothorpe"]},
    {"symbol":"$","code":"&#36;","namedCode":"","aliases": ["dollar"]},
    {"symbol":"%","code":"&#37;","namedCode":"","aliases": ["percent"]},
    {"symbol":"&","code":"&#38;","namedCode":"&amp;","aliases": ["ampersand"]},
    {"symbol":"'","code":"&#39;","namedCode":"","aliases": ["single quote"]},
    {"symbol":"(","code":"&#40;","namedCode":"","aliases": ["left parenthesis", "left paren"]},
    {"symbol":")","code":"&#41;","namedCode":"","aliases": ["right parenthesis", "right paren"]},
    {"symbol":"*","code":"&#42;","namedCode":"","aliases": ["star", "asterisk"]},
    {"symbol":"+","code":"&#43;","namedCode":"","aliases": ["plus"]},
    {"symbol":",","code":"&#44;","namedCode":"","aliases": ["comma"]},
    {"symbol":"-","code":"&#45;","namedCode":"","aliases": ["dash", "hyphen"]},
    {"symbol":".","code":"&#46;","namedCode":"","aliases": ["period"]},
    {"symbol":"/","code":"&#47;","namedCode":"","aliases": ["slash", "forward slash"]},
    {"symbol":"0","code":"&#48;","namedCode":"","aliases": ["zero"]},
    {"symbol":"1","code":"&#49;","namedCode":"","aliases": ["one"]},
    {"symbol":"2","code":"&#50;","namedCode":"","aliases": ["two"]},
    {"symbol":"3","code":"&#51;","namedCode":"","aliases": ["three"]},
    {"symbol":"4","code":"&#52;","namedCode":"","aliases": ["four"]},
    {"symbol":"5","code":"&#53;","namedCode":"","aliases": ["five"]},
    {"symbol":"6","code":"&#54;","namedCode":"","aliases": ["six"]},
    {"symbol":"7","code":"&#55;","namedCode":"","aliases": ["seven"]},
    {"symbol":"8","code":"&#56;","namedCode":"","aliases": ["eight"]},
    {"symbol":"9","code":"&#57;","namedCode":"","aliases": ["nine"]},
    {"symbol":":","code":"&#58;","namedCode":"","aliases": ["colon"]},
    {"symbol":";","code":"&#59;","namedCode":"","aliases": ["semicolon"]},
    {"symbol":"<","code":"&#60;","namedCode":"&lt;","aliases":["less than"]},
    {"symbol":"=","code":"&#61;","namedCode":"","aliases": ["equal"]},
    {"symbol":">","code":"&#62;","namedCode":"&gt;","aliases": ["greater than"]},
    {"symbol":"?","code":"&#63;","namedCode":"","aliases": ["question", "question mark"]},
    {"symbol":"@","code":"&#64;","namedCode":"","aliases": ["at"]},
    {"symbol":"A","code":"&#65;","namedCode":""},{"symbol":"B","code":"&#66;","namedCode":""},{"symbol":"C","code":"&#67;","namedCode":""},{"symbol":"D","code":"&#68;","namedCode":""},{"symbol":"E","code":"&#69;","namedCode":""},{"symbol":"F","code":"&#70;","namedCode":""},{"symbol":"G","code":"&#71;","namedCode":""},{"symbol":"H","code":"&#72;","namedCode":""},{"symbol":"I","code":"&#73;","namedCode":""},{"symbol":"J","code":"&#74;","namedCode":""},{"symbol":"K","code":"&#75;","namedCode":""},{"symbol":"L","code":"&#76;","namedCode":""},{"symbol":"M","code":"&#77;","namedCode":""},{"symbol":"N","code":"&#78;","namedCode":""},{"symbol":"O","code":"&#79;","namedCode":""},{"symbol":"P","code":"&#80;","namedCode":""},{"symbol":"Q","code":"&#81;","namedCode":""},{"symbol":"R","code":"&#82;","namedCode":""},{"symbol":"S","code":"&#83;","namedCode":""},{"symbol":"T","code":"&#84;","namedCode":""},{"symbol":"U","code":"&#85;","namedCode":""},{"symbol":"V","code":"&#86;","namedCode":""},{"symbol":"W","code":"&#87;","namedCode":""},{"symbol":"X","code":"&#88;","namedCode":""},{"symbol":"Y","code":"&#89;","namedCode":""},{"symbol":"Z","code":"&#90;","namedCode":""},
    {"symbol":"[","code":"&#91;","namedCode":"","aliases":["opening bracket", "left bracket", "left square bracket"]},
    {"symbol":"\\\\","code":"&#92;","namedCode":"","aliases": ["backslash"]},
    {"symbol":"]","code":"&#93;","namedCode":"","aliases": ["closing bracket", "right bracket", "right square bracket"]},
    {"symbol":"^","code":"&#94;","namedCode":"","aliases": ["caret", "circumflex"]},
    {"symbol":"_","code":"&#95;","namedCode":"","aliases": ["underscore"]},
    {"symbol":"`","code":"&#96;","namedCode":"","aliases": ["grave accent", "backtick", "backquote"]},
    {"symbol":"a","code":"&#97;","namedCode":""},{"symbol":"b","code":"&#98;","namedCode":""},{"symbol":"c","code":"&#99;","namedCode":""},{"symbol":"d","code":"&#100;","namedCode":""},{"symbol":"e","code":"&#101;","namedCode":""},{"symbol":"f","code":"&#102;","namedCode":""},{"symbol":"g","code":"&#103;","namedCode":""},{"symbol":"h","code":"&#104;","namedCode":""},{"symbol":"i","code":"&#105;","namedCode":""},{"symbol":"j","code":"&#106;","namedCode":""},{"symbol":"k","code":"&#107;","namedCode":""},{"symbol":"l","code":"&#108;","namedCode":""},{"symbol":"m","code":"&#109;","namedCode":""},{"symbol":"n","code":"&#110;","namedCode":""},{"symbol":"o","code":"&#111;","namedCode":""},{"symbol":"p","code":"&#112;","namedCode":""},{"symbol":"q","code":"&#113;","namedCode":""},{"symbol":"r","code":"&#114;","namedCode":""},{"symbol":"s","code":"&#115;","namedCode":""},{"symbol":"t","code":"&#116;","namedCode":""},{"symbol":"u","code":"&#117;","namedCode":""},{"symbol":"v","code":"&#118;","namedCode":""},{"symbol":"w","code":"&#119;","namedCode":""},{"symbol":"x","code":"&#120;","namedCode":""},{"symbol":"y","code":"&#121;","namedCode":""},{"symbol":"z","code":"&#122;","namedCode":""},
    {"symbol":"{","code":"&#123;","namedCode":"","aliases": ["left brace", "left curly brace"]},
    {"symbol":"|","code":"&#124;","namedCode":"","aliases": ["pipe", "vertical bar"]},
    {"symbol":"}","code":"&#125;","namedCode":"","aliases": ["right brace", "right curly brace"]},
    {"symbol":"~","code":"&#126;","namedCode":"","aliases": ["tilde"]},
    {"symbol":"Non-breaking space","code":"&#160;","namedCode":"&nbsp;","aliases": ["non-breaking space"]},
    {"symbol":"¡","code":"&#161;","namedCode":"&iexcl;","aliases":["inverted exclamation mark"]},
    {"symbol":"¢","code":"&#162;","namedCode":"&cent;","aliases": ["cent"]},
    {"symbol":"£","code":"&#163;","namedCode":"&pound;","aliases": ["pound"]},
    {"symbol":"¤","code":"&#164;","namedCode":"&curren;","aliases":["currency"]},
    {"symbol":"¥","code":"&#165;","namedCode":"&yen;","aliases": ["Yen", "Japanese Yen"]},
    {"symbol":"¦","code":"&#166;","namedCode":"&brvbar;","aliases":["broken vertical bar"]},
    {"symbol":"§","code":"&#167;","namedCode":"&sect;","aliases": ["section"]},
    {"symbol":"¨","code":"&#168;","namedCode":"&uml;","aliases":["spacing diaeresis","umlaut"]},
    {"symbol":"©","code":"&#169;","namedCode":"&copy;","aliases": ["copyright"]},
    {"symbol":"ª","code":"&#170;","namedCode":"&ordf;","aliases":["feminine ordinal"]},
    {"symbol":"«","code":"&#171;","namedCode":"","aliases":["left double angle quotes"]},
    {"symbol":"¬","code":"&#172;","namedCode":"&not;","aliases":["not"]},
    {"symbol":"­","code":"&#173;","namedCode":"&shy;","aliases":["soft hyphen"]},
    {"symbol":"®","code":"&#174;","namedCode":"&reg;","aliases": ["registered trademark", "registered"]},
    {"symbol":"¯","code":"&#175;","namedCode":"&macr;","aliases":["spaced macron", "overline"]},
    {"symbol":"°","code":"&#176;","namedCode":"&deg;","aliases": ["degree"]},
    {"symbol":"±","code":"&#177;","namedCode":"&plusmn;","aliases": ["plus or minus"]},
    {"symbol":"²","code":"&#178;","namedCode":"&sup2;","aliases": ["squared", "superscript two", "superscript 2"]},
    {"symbol":"³","code":"&#179;","namedCode":"&sup3;","aliases": ["cubed", "superscript three", "superscript 3"]},
    {"symbol":"´","code":"&#180;","namedCode":"&acute;","aliases": ["acute accent", "spacing acute"]},
    {"symbol":"µ","code":"&#181;","namedCode":"&micro;","aliases": ["micro"]},
    {"symbol":"¶","code":"&#182;","namedCode":"&para;","aliases": ["paragraph", "pilcrow"]},
    {"symbol":"·","code":"&#183;","namedCode":"&middot;","aliases": ["dot", "middle dot", "Georgian comma"]},
    {"symbol":"¸","code":"&#184;","namedCode":"&cedil;","aliases":["spacing cedilla"]},
    {"symbol":"¹","code":"&#185;","namedCode":"&sup1;","aliases":["superscript one", "superscript 1"]},
    {"symbol":"º","code":"&#186;","namedCode":"&ordm;"},{"symbol":"»","code":"&#187;","namedCode":"&raquo;"},
    {"symbol":"¼","code":"&#188;","namedCode":"&frac14;","aliases": ["quarter", "one quarter", "fourth", "one fourth"]},
    {"symbol":"½","code":"&#189;","namedCode":"&frac12;","aliases": ["half", "one half"]},
    {"symbol":"¾","code":"&#190;","namedCode":"&frac34;","aliases": ["three fourths", "three quarters"]},
    {"symbol":"¿","code":"&#191;","namedCode":"&iquest;", "aliases":["inverted question", "inverted question mark"]},
    {"symbol":"À","code":"&#192;","namedCode":"&Agrave;"},{"symbol":"Á","code":"&#193;","namedCode":"&Aacute;"},{"symbol":"Â","code":"&#194;","namedCode":"&Acirc;"},{"symbol":"Ã","code":"&#195;","namedCode":"&Atilde;"},{"symbol":"Ä","code":"&#196;","namedCode":"&Auml;"},{"symbol":"Å","code":"&#197","namedCode":"&Aring;"},{"symbol":"Æ","code":"&#198;","namedCode":"&AElig;"},
    {"symbol":"Ç","code":"&#199;","namedCode":"&Ccedil;"},
    {"symbol":"È","code":"&#200;","namedCode":"&Egrave;"},{"symbol":"É","code":"&#201;","namedCode":"&Eacute;"},{"symbol":"Ê","code":"&#202;","namedCode":"&Ecirc;"},{"symbol":"Ë","code":"&#203;","namedCode":"&Euml;"},{"symbol":"Ì","code":"&#204;","namedCode":"&Igrave;"},{"symbol":"Í","code":"&#205;","namedCode":"&Iacute;"},{"symbol":"Î","code":"&#206;","namedCode":"&Icirc;"},{"symbol":"Ï","code":"&#207;","namedCode":"&Iuml;"},{"symbol":"Ð","code":"&#208;","namedCode":"&ETH;"},{"symbol":"Ñ","code":"&#209;","namedCode":"&Ntilde;"},{"symbol":"Ò","code":"&#210;","namedCode":"&Ograve;"},{"symbol":"Ó","code":"&#211;","namedCode":"&Oacute;"},{"symbol":"Ô","code":"&#212;","namedCode":"&Ocirc;"},{"symbol":"Õ","code":"&#213;","namedCode":"&Otilde;"},{"symbol":"Ö","code":"&#214;","namedCode":"&Ouml;"},
    {"symbol":"×","code":"&#215;","namedCode":"&times;","aliases": ["times", "multiplication", "multiply"]},
    {"symbol":"Ø","code":"&#216;","namedCode":"&Oslash;","aliases": ["null set", "empty set"]},
    {"symbol":"Ù","code":"&#217;","namedCode":"&Ugrave;"},{"symbol":"Ú","code":"&#218;","namedCode":"&Uacute;"},{"symbol":"Û","code":"&#219;","namedCode":"&Ucirc;"},{"symbol":"Ü","code":"&#220;","namedCode":"&Uuml;"},{"symbol":"Ý","code":"&#221;","namedCode":"&Yacute;"},{"symbol":"Þ","code":"&#222;","namedCode":"&THORN;"},{"symbol":"ß","code":"&#223;","namedCode":"&szlig;"},{"symbol":"à","code":"&#224;","namedCode":"&agrave;"},{"symbol":"á","code":"&#225;","namedCode":"&aacute;"},{"symbol":"â","code":"&#226;","namedCode":"&acirc;"},{"symbol":"ã","code":"&#227;","namedCode":"&atilde;"},{"symbol":"ä","code":"&#228;","namedCode":"&auml;"},{"symbol":"å","code":"&#229;","namedCode":"&aring;"},{"symbol":"æ","code":"&#230;","namedCode":"&aelig;"},{"symbol":"ç","code":"&#231;","namedCode":"&ccedil;"},{"symbol":"è","code":"&#232;","namedCode":"&egrave;"},{"symbol":"é","code":"&#233;","namedCode":"&eacute;"},{"symbol":"ê","code":"&#234;","namedCode":"&ecirc;"},{"symbol":"ë","code":"&#235;","namedCode":"&euml;"},{"symbol":"ì","code":"&#236;","namedCode":"&igrave;"},{"symbol":"í","code":"&#237","namedCode":"&iacute;"},{"symbol":"î","code":"&#238;","namedCode":"&icirc;"},{"symbol":"ï","code":"&#239;","namedCode":"&iuml;"},{"symbol":"ð","code":"&#240;","namedCode":"&eth;"},{"symbol":"ñ","code":"&#241;","namedCode":"&ntilde;"},{"symbol":"ò","code":"&#242;","namedCode":"&ograve;"},{"symbol":"ó","code":"&#243;","namedCode":"&oacute;"},{"symbol":"ô","code":"&#244;","namedCode":"&ocirc;"},{"symbol":"õ","code":"&#245;","namedCode":"&otilde;"},{"symbol":"ö","code":"&#246;","namedCode":"&ouml;"},{"symbol":"÷","code":"&#247;","namedCode":"&divide;"},{"symbol":"ø","code":"&#248;","namedCode":"&oslash;"},{"symbol":"ù","code":"&#249;","namedCode":"&ugrave;"},{"symbol":"ú","code":"&#250;","namedCode":"&uacute;"},{"symbol":"û","code":"&#251;","namedCode":"&ucirc;"},{"symbol":"ü","code":"&#252;","namedCode":"&uuml;"},{"symbol":"ý","code":"&#253;","namedCode":"&yacute;"},{"symbol":"þ","code":"&#254;","namedCode":"&thorn;"},{"symbol":"ÿ","code":"&#255;","namedCode":""},{"symbol":"Ā","code":"&#256;","namedCode":""},{"symbol":"ā","code":"&#257;","namedCode":""},{"symbol":"Ă","code":"&#258;","namedCode":""},{"symbol":"ă","code":"&#259;","namedCode":""},{"symbol":"Ą","code":"&#260;","namedCode":""},{"symbol":"ą","code":"&#261;","namedCode":""},{"symbol":"Ć","code":"&#262;","namedCode":""},{"symbol":"ć","code":"&#263;","namedCode":""},{"symbol":"Ĉ","code":"&#264;","namedCode":""},{"symbol":"ĉ","code":"&#265;","namedCode":""},{"symbol":"Ċ","code":"&#266;","namedCode":""},{"symbol":"ċ","code":"&#267;","namedCode":""},{"symbol":"Č","code":"&#268;","namedCode":""},{"symbol":"č","code":"&#269;","namedCode":""},{"symbol":"Ď","code":"&#270;","namedCode":""},{"symbol":"ď","code":"&#271;","namedCode":""},{"symbol":"Đ","code":"&#272;","namedCode":""},{"symbol":"đ","code":"&#273;","namedCode":""},{"symbol":"Ē","code":"&#274;","namedCode":""},{"symbol":"ē","code":"&#275;","namedCode":""},{"symbol":"Ĕ","code":"&#276;","namedCode":""},{"symbol":"ĕ","code":"&#277","namedCode":""},{"symbol":"Ė","code":"&#278;","namedCode":""},{"symbol":"ė","code":"&#279;","namedCode":""},{"symbol":"Ę","code":"&#280;","namedCode":""},{"symbol":"ę","code":"&#281;","namedCode":""},{"symbol":"Ě","code":"&#282;","namedCode":""},{"symbol":"ě","code":"&#283;","namedCode":""},{"symbol":"Ĝ","code":"&#284;","namedCode":""},{"symbol":"ĝ","code":"&#285;","namedCode":""},{"symbol":"Ğ","code":"&#286;","namedCode":""},{"symbol":"ğ","code":"&#287;","namedCode":""},{"symbol":"Ġ","code":"&#288;","namedCode":""},{"symbol":"ġ","code":"&#289;","namedCode":""},{"symbol":"Ģ","code":"&#290;","namedCode":""},{"symbol":"ģ","code":"&#291;","namedCode":""},{"symbol":"Ĥ","code":"&#292;","namedCode":""},{"symbol":"ĥ","code":"&#293;","namedCode":""},{"symbol":"Ħ","code":"&#294;","namedCode":""},{"symbol":"ħ","code":"&#295;","namedCode":""},{"symbol":"Ĩ","code":"&#296;","namedCode":""},{"symbol":"ĩ","code":"&#297;","namedCode":""},{"symbol":"Ī","code":"&#298;","namedCode":""},{"symbol":"ī","code":"&#299;","namedCode":""},{"symbol":"Ĭ","code":"&#300;","namedCode":""},{"symbol":"ĭ","code":"&#301;","namedCode":""},{"symbol":"Į","code":"&#302;","namedCode":""},{"symbol":"į","code":"&#303;","namedCode":""},{"symbol":"İ","code":"&#304;","namedCode":""},{"symbol":"ı","code":"&#305;","namedCode":""},{"symbol":"Ĳ","code":"&#306;","namedCode":""},{"symbol":"ĳ","code":"&#307;","namedCode":""},{"symbol":"Ĵ","code":"&#308;","namedCode":""},{"symbol":"ĵ","code":"&#309;","namedCode":""},{"symbol":"Ķ","code":"&#310;","namedCode":""},{"symbol":"ķ","code":"&#311;","namedCode":""},{"symbol":"ĸ","code":"&#312;","namedCode":""},{"symbol":"Ĺ","code":"&#313;","namedCode":""},{"symbol":"ĺ","code":"&#314;","namedCode":""},{"symbol":"Ļ","code":"&#315;","namedCode":""},{"symbol":"ļ","code":"&#316;","namedCode":""},{"symbol":"Ľ","code":"&#317","namedCode":""},{"symbol":"ľ","code":"&#318;","namedCode":""},{"symbol":"Ŀ","code":"&#319;","namedCode":""},{"symbol":"ŀ","code":"&#320;","namedCode":""},{"symbol":"Ł","code":"&#321;","namedCode":""},{"symbol":"ł","code":"&#322;","namedCode":""},{"symbol":"Ń","code":"&#323;","namedCode":""},{"symbol":"ń","code":"&#324;","namedCode":""},{"symbol":"Ņ","code":"&#325;","namedCode":""},{"symbol":"ņ","code":"&#326;","namedCode":""},{"symbol":"Ň","code":"&#327;","namedCode":""},{"symbol":"ň","code":"&#328;","namedCode":""},{"symbol":"ŉ","code":"&#329;","namedCode":""},{"symbol":"Ŋ","code":"&#330;","namedCode":""},{"symbol":"ŋ","code":"&#331;","namedCode":""},{"symbol":"Ō","code":"&#332;","namedCode":""},{"symbol":"ō","code":"&#333;","namedCode":""},{"symbol":"Ŏ","code":"&#334;","namedCode":""},{"symbol":"ŏ","code":"&#335;","namedCode":""},{"symbol":"Ő","code":"&#336;","namedCode":""},{"symbol":"ő","code":"&#337;","namedCode":""},{"symbol":"Œ","code":"&#338;","namedCode":""},{"symbol":"œ","code":"&#339;","namedCode":""},{"symbol":"Ŕ","code":"&#340;","namedCode":""},{"symbol":"ŕ","code":"&#341;","namedCode":""},{"symbol":"Ŗ","code":"&#342;","namedCode":""},{"symbol":"ŗ","code":"&#343;","namedCode":""},{"symbol":"Ř","code":"&#344;","namedCode":""},{"symbol":"ř","code":"&#345;","namedCode":""},{"symbol":"Ś","code":"&#346;","namedCode":""},{"symbol":"ś","code":"&#347;","namedCode":""},{"symbol":"Ŝ","code":"&#348;","namedCode":""},{"symbol":"ŝ","code":"&#349;","namedCode":""},{"symbol":"Ş","code":"&#350;","namedCode":""},{"symbol":"ş","code":"&#351;","namedCode":""},{"symbol":"Š","code":"&#352;","namedCode":""},{"symbol":"š","code":"&#353;","namedCode":""},{"symbol":"Ţ","code":"&#354;","namedCode":""},{"symbol":"ţ","code":"&#355;","namedCode":""},{"symbol":"Ť","code":"&#356;","namedCode":""},{"symbol":"ť","code":"&#357","namedCode":""},{"symbol":"Ŧ","code":"&#358;","namedCode":""},{"symbol":"ŧ","code":"&#359;","namedCode":""},{"symbol":"Ũ","code":"&#360;","namedCode":""},{"symbol":"ũ","code":"&#361;","namedCode":""},{"symbol":"Ū","code":"&#362;","namedCode":""},{"symbol":"ū","code":"&#363;","namedCode":""},{"symbol":"Ŭ","code":"&#364;","namedCode":""},{"symbol":"ŭ","code":"&#365;","namedCode":""},{"symbol":"Ů","code":"&#366;","namedCode":""},{"symbol":"ů","code":"&#367;","namedCode":""},{"symbol":"Ű","code":"&#368;","namedCode":""},{"symbol":"ű","code":"&#369;","namedCode":""},{"symbol":"Ų","code":"&#370;","namedCode":""},{"symbol":"ų","code":"&#371;","namedCode":""},{"symbol":"Ŵ","code":"&#372;","namedCode":""},{"symbol":"ŵ","code":"&#373;","namedCode":""},{"symbol":"Ŷ","code":"&#374;","namedCode":""},{"symbol":"ŷ","code":"&#375;","namedCode":""},{"symbol":"Ÿ","code":"&#376;","namedCode":""},{"symbol":"Ź","code":"&#377;","namedCode":""},{"symbol":"ź","code":"&#378;","namedCode":""},{"symbol":"Ż","code":"&#379;","namedCode":""},{"symbol":"ż","code":"&#380;","namedCode":""},{"symbol":"Ž","code":"&#381;","namedCode":""},{"symbol":"ž","code":"&#382;","namedCode":""},{"symbol":"ſ","code":"&#383;","namedCode":""},{"symbol":"Ŕ","code":"&#340;","namedCode":""},{"symbol":"ŕ","code":"&#341;","namedCode":""},{"symbol":"Ŗ","code":"&#342;","namedCode":""},{"symbol":"ŗ","code":"&#343;","namedCode":""},{"symbol":"Ř","code":"&#344;","namedCode":""},{"symbol":"ř","code":"&#345;","namedCode":""},{"symbol":"Ś","code":"&#346;","namedCode":""},{"symbol":"ś","code":"&#347;","namedCode":""},{"symbol":"Ŝ","code":"&#348;","namedCode":""},{"symbol":"ŝ","code":"&#349;","namedCode":""},{"symbol":"Ş","code":"&#350;","namedCode":""},{"symbol":"ş","code":"&#351;","namedCode":""},{"symbol":"Š","code":"&#352;","namedCode":""},{"symbol":"š","code":"&#353;","namedCode":""},{"symbol":"Ţ","code":"&#354;","namedCode":""},{"symbol":"ţ","code":"&#355;","namedCode":""},{"symbol":"Ť","code":"&#356;","namedCode":""},{"symbol":"ť","code":"&#577;","namedCode":""},{"symbol":"Ŧ","code":"&#358;","namedCode":""},{"symbol":"ŧ","code":"&#359;","namedCode":""},{"symbol":"Ũ","code":"&#360;","namedCode":""},{"symbol":"ũ","code":"&#361;","namedCode":""},{"symbol":"Ū","code":"&#362;","namedCode":""},{"symbol":"ū","code":"&#363;","namedCode":""},{"symbol":"Ŭ","code":"&#364;","namedCode":""},{"symbol":"ŭ","code":"&#365;","namedCode":""},{"symbol":"Ů","code":"&#366;","namedCode":""},{"symbol":"ů","code":"&#367;","namedCode":""},{"symbol":"Ű","code":"&#368;","namedCode":""},{"symbol":"ű","code":"&#369;","namedCode":""},{"symbol":"Ų","code":"&#370;","namedCode":""},{"symbol":"ų","code":"&#371;","namedCode":""},{"symbol":"Ŵ","code":"&#372;","namedCode":""},{"symbol":"ŵ","code":"&#373;","namedCode":""},{"symbol":"Ŷ","code":"&#374;","namedCode":""},{"symbol":"ŷ","code":"&#375;","namedCode":""},{"symbol":"Ÿ","code":"&#376;","namedCode":""},{"symbol":"Ź","code":"&#377","namedCode":""},{"symbol":"ź","code":"&#378;","namedCode":""},{"symbol":"Ż","code":"&#379;","namedCode":""},{"symbol":"ż","code":"&#380;","namedCode":""},{"symbol":"Ž","code":"&#381;","namedCode":""},{"symbol":"ž","code":"&#382;","namedCode":""},{"symbol":"ſ","code":"&#383;","namedCode":""},
    {"symbol":"…","code":"&#8240;","namedCode":"","aliases":["ellipsis", "horizontal ellipsis"]},
    {"symbol":"‒","code":"&#8210;","namedCode":"","aliases":["figure dash"]},
    {"symbol":"–","code":"&#8211","namedCode":"&ndash;","aliases":["en dash"]},
    {"symbol":"—","code":"&#8212","namedCode":"&mdash;","aliases":["em dash"]},
    {"symbol":"―","code":"&#8213","namedCode":"","aliases":["horizontal bar"]},
    {"symbol":"⁓","code":"&#8275","namedCode":"","aliases":["swung dash"]}
  ]
}
eos
    end
  end
end

output_filename = 'html_entities.json'

ARGV.each do |arg|
  output_filename = arg
end

populator = HtmlEntitiesPopulator.new(output_filename)

populator.populate()
system("bzip2 -kf #{output_filename}")
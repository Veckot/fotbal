-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost:3306
-- Vytvořeno: Ned 07. zář 2025, 21:27
-- Verze serveru: 8.0.30
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `transfermarkt`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date` int NOT NULL,
  `top` tinyint NOT NULL,
  `text` text NOT NULL,
  `published` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `article`
--

INSERT INTO `article` (`id`, `link`, `title`, `photo`, `date`, `top`, `text`, `published`) VALUES
(1, 'article/1-janotka', 'Janotka: Spokojenost s výsledkem i hrou. Byli jsme dominantní', 'janotka.jpeg', 1751663291, 1, ' <p>Stejně jako v pondělním utkání, také v pátek zvítězili Hanáci v přípravě 3:1, když ve druhém duelu v rámci rakouského soustředění porazili maďarský Debrecen. Zatímco proti Kluži padaly góly až po změně stran, tentokrát to bylo už v první půli. Trenér Tomáš Janotka byl po utkání s DVSC spokojen s výsledkem i předvedenou hrou. „<i>Byli jsme dominantní. Zejména v první půli, kdy jsme předváděli rychlé a dynamické akce</i>,“ okomentoval první půli, kdy se prosadili postupně Breite, Vašulín a z penalty Janošek.  </p>\r\n                    <p><strong></strong><strong>Máme za sebou druhý zápas na soustředění, maďarský Debrecen jsme porazili 3:1. Jste spokojen?</strong><br>„<i>Zasloužená výhra. Jsem spokojen nejen s výsledkem, ale také s tím, jak jsme se prezentovali. Myslím si, že jsme byli dominantní. Zejména v první půli jsme předváděli rychlé, dynamické a svižné akce. Vytvářeli jsme si brankové příležitosti. Stejně tak i druhý poločas, kdy po prostřídání naše hra neztratila tempo. Další příležitosti ke skórování jsme měli, soupeř si sice nějaké příležitosti vytvořil, ale nebylo tam z jeho strany větší množství šancí, které by nás musely trápit. Skóre určitě odpovídá tomu, co se dělo na hřišti. Jednu až dvě branky jsme ještě mohli vstřelit.</i>“</p>  <p><strong>Už po utkání proti Kluži jsme se bavili o Danovi Vašulínovi. Dnes druhý zápas po sobě vstřelil gól. Zatím ideální stav?</strong><br> „<i>Myslím si, že pro útočníka jsou góly velice důležité. Jsem rád, že se zase prosadil, dokáže mít dobrý výběr ve vápně a zúročit příležitost, kterou měl.</i>“</p>  <p><strong>Poprvé hrál Dominik Janošek, který si připsal asistenci u gólu Vašulína a proměnil penaltu. Jak hodnotíte jeho výkon?</strong><br> „<i>Body hovoří za vše. Pokud si z utkání, kdy nastoupíte na pozici ofenzivního záložníka, odnesete 1+1, tak spokojeni musíte být. Dominik se snažil být aktivní, rozjíždět a doplňovat akce. Jsem rád, že si s týmem mohl poprvé zahrát, aby se s týmem sehrál.</i>“</p><p><iframe width=\"1074\" height=\"604\" src=\"https://www.youtube.com/embed/nTsZfE184UQ\" title=\"Janotka po výhře s Debrecenem\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen=\"\"></iframe><br></p>  <p><strong>Prosadil se i Radim Breite. Je fajn, když vstřelí gól i tak netypický střelec?</strong> <br> „<i>Radim skvěle trénuje, myslím, že dávky, které kluci dostávají, zvládá perfektně. Při gólové akci tam bylo z jeho strany výborné doplnění do koncovky z druhé vlny. Dostal se k míči na svou oblíbenou levou nohu, kterou nám dennodenně ukazuje na tréninku. Byla to pohotová střela po krásném centru Dana Vašulína, který vzešel z pěkné kombinace.</i>“</p>  <p><strong>Dalším debutantem byl Andres Dumitrescu. Jak se začleňuje do týmu?<br></strong> „<i>Je tady krátce, stejně tak jako Dominik. Nemůžeme tedy čekat, že výkony budou hned dokonalé. Tým se tady teprve formuje, hodně hráčů odešlo v létě po skončení sezóny hodně. Andresův výkon byl skvělý, snažil se doplňovat ofenzivu. Nějaké drobnosti tam najdeme, ale je to první zápas. Víme, co od něj můžeme očekávat.</i>“</p>  <p><strong>Na soustředění jste oba zápasy vyhráli. Jste s jeho průběhem spokojen?</strong><br> „<i>Všichni jsme spokojeni s tím, že jsme splnili to, co jsme si v rámci tréninkového procesu naplánovali. Ať už v terénu, nebo na hřišti. Dva zápasy, které jsme tady měli na programu, jsme vyhráli. Vidíme tady progres směrem do ofenzivy i defenzivy. S průběhem soustředění jsme maximálně spokojení. Nějaké lehké zranění si tento náročný program bohužel vždy vyžádá, ale věřím, že u nikoho to nebude nic vážného, a že se kluci brzy zapojí do tréninkového procesu.</i>“</p>', 1),
(2, 'article/2-becko', 'Béčko prohrálo v Polsku se Zagłębií Sosnowiec', 'becko.jpg', 1752095291, 1, '<p>Na soustředění v Polsku nastoupil B-tým do přípravného duelu proti Zagłębie Sosnowiec. Hrálo se ve Wodzislawi, kde naše rezerva podlehla účastníkovi druhé nejvyšší polské fotbalové soutěže 0:3.</p>\r\n <p>Sigma nastoupila v brance s osmnáctiletým Tomášem Ulenfeldem, šanci opět dostali Patrick Scott Riedl a David Drábek. Po návratu z Vyškova byl v sestavě také útočník Pavel Zifčák. Zápas se hrál netypicky na tři třetiny, tedy 3x30 minut a Zagłębie protočila téměř tři kompletní sestavy.</p>  <p>V první pasáži se Sigma proti silnému soupeři držela, jednou však inkasovala. Směrem dopředu měla díky presinku i dobré kombinaci z vlastní rozehrávky několik nadějných situací, které ale skončily před velkým vápnem soupeře. </p>  <p>Béčko se drželo více v zápase do 60. minuty. Sosnowiec poslal na hřiště třetí jedenáctku, po čemž už bylo pro Hanáky těžší držet s čerstvými Poláky krok, protože někteří svěřenci trenéra Westa hráli celé utkání. Soupeř přidal dvě branky a nakonec zvítězil 3:0.</p>  <p>V sobotu 12. července pak hraje béčko další přípravu v Prostějově proti domácímu celku, začátek duelu je v 17:00.</p>\r\n   <h2\">Ohlasy</h2>\r\n                            <b>Roman West:</b>\r\n<br>„<i>Soupeř byl velmi kvalitní, zápas splnil svůj účel. Kluci to poctivě odmakali, ale Sosnowiec vlastně prostřídal tři sestavy, což se pak na hře i výsledku v závěru zápasu hraného za deště projevilo. Zagłębie mělo od počátku herně navrch, my jsme tahali za kratší konec a výsledek je asi zasloužený. Hodinu jsme se drželi, po dalším prostřídání soupeře jsme dvakrát inkasovali a bylo rozhodnuto. Na soustředění se nám jinak daří trénovat vše, co máme v plánu, kluci jsou zdraví. V neděli se k nám připojil Pavel Zifčák, uvidíme, zda zůstane. V pondělí by se měl vrátit do přípravy i Vojtěch Křišťál.</i>“', 0),
(3, 'article/3-tkac', 'David Tkáč: Opouštím svou bublinu, ale tenhle krok byl potřeba', 'tkac.jpeg', 1751922491, 1, '  <p>David Tkáč se stal posilou Sigmy na konci minulého týdne, když A-tým ještě dokončoval soustředění v Rakousku. Teď už se ale čerstvý přírůstek ze Zlína připojil k novým spoluhráčům. <i>„Sigma mě může posunout dopředu jako hráče i jako člověka. Vystupuju trochu z komfortní zóny,“</i> řekl čerstvě třiadvacetiletý fotbalista v prvním rozhovoru. </p>\r\n                    <p><strong>Davide, vítej v Sigmě. </strong><strong>Prozraď, jak se rodil tvůj příchod do Sigmy?</strong></p><p><em>„Děkuju za uvítání. O zájmu Sigmy jsem se dozvěděl asi dva týdny zpátky od svého agenta. Když přišla nabídka, tak v podstatě nebylo nad čím váhat. Jednání potom bylo docela snadné a všechno šlo rychle. Prošel jsem zdravotní prohlídkou a jsem tady.“</em></p><p><em><iframe width=\"908\" height=\"511\" src=\"https://www.youtube.com/embed/unYex3Fgms8\" title=\"\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen=\"\"></iframe><br></em></p><p><strong>Tys strávil celou kariéru od malička ve Zlíně. Jak složité bylo rozhodnout se, že opustíš tu rodnou hroudu?</strong></p><p><em>„No, je to jiné. Opouštím trochu rodinu, bublinu svých kamarádů. Ale bylo rozhodně potřeba udělat tenhle krok. Trochu i vystoupit z komfortní zóny a jít dopředu. Myslím si, že mě to může posunout dopředu, ať už jako hráče, nebo jako člověka.“</em></p><p><strong>Co tě nejvíc do Olomouce zlákalo? Evropské poháry, které tady budeme mít po letech?</strong></p><p><em>„Určitě to byl jeden z aspektů. Zahrát si v evropských pohárech, to se nepodaří každému. Věřím, že tu šanci, kterou tady mám, chytím a že si zahraju. Sigma ale v mých očích celkově za poslední tři roky udělala velký pokrok. Beru to jako šanci zase se ukázat a zviditelnit a třeba se posunout výš.“</em></p><p><img class=\"img-fluid\" src=\"https://sigmafotbal.esports.cz/files/editor/sigma-david-tkac (6).jpg\"></p><p><strong>Tvá poslední sezóna ve druhé lize byla velmi úspěšná. Postoupili jste, střílel jsi góly. Bereš ji jako tu svou dosud nejlepší a průlomovou?</strong></p><p><em>„Byla to určitě jedna z těch lepších sezon. I když si myslím, že ještě lepší byla ta má první, kdy jsem jako mladý naskočil do ligy. Ta mi asi zůstane v hlavě napořád, i když potom přišlo nečekané zranění, které mě zabrzdilo. Ale i tato poslední sezona, byť ve druhé lize byla neuvěřitelná. Ať už kvůli tomu, co jsme dokázali s týmem, nebo osobně. Byla to celkově velká jízda. Takže se dá říct, že to byla průlomová sezona.“</em></p><p><strong>Do ligy jsi naskočil už v 18 letech, sám jsi zmínil zranění. Teď se do ligy vracíš, navíc v novém dresu. Připravený rozbalit to naplno?</strong></p><p><em>„Ano, ta sezóna ve druhé lize, je to něco jiného než v té první. Na tu první ligu se zase těším. Na týmy, které ji hrají, na všechno okolo.“</em></p><p><strong>S jakými ambicemi přicházíš do kádru? Jsi stále ještě relativně mladý hráč, konkurence není malá.</strong></p><p><em>„Jedním z prvních cílů bude co nejdřív se aklimatizovat v novém týmu. Doufám, že mě kluci přijmou a na začátku trošku pomůžou. Bude to pro mě, jak jsem říkal, trošku výstup z komfortní zóny ze Zlína. A další ambicí je dokázat něco v tom evropském poháru. Nejlepší by bylo hned projít třeba přes předkolo do Evropské ligy, ale to teprve uvidíme. Ale těšíme se na to určitě všichni.“</em></p><p><img  class=\"img-fluid\" src=\"https://sigmafotbal.esports.cz/files/editor/sigma-david-tkac (16).jpg\"></p><p><strong>Znáš někoho z týmu osobně? Samozřejmě se nabízí členové realizačního týmu, ale třeba i spoluhráči z mládežnických reprezentací?</strong></p><p><em>„Jasně, tak z realizáku znám Otu Nováka a Míšu Molka, kteří sem do Olomouce přišli nedávno a s kterými už jsem prohodil pár slov. Přímo z týmu znám Vraštu, který byl ve Zlíně, hrával jsem s ním a je to super kluk. Taky ještě Domina Janoška, který tam byl, když jsem došel do áčka. Trošku znám Hadyho, se kterým jsem se potkal. Víceméně všechny ostatní kluky ale znám taky. Buď ze televize, nebo jsme proti sobě hrávali v mládeži. Co jsem měl možnost mluvit s trenérem, tak kabina je tady super.“</em></p><p><strong>Pomůže ti do začátku, že nejdeš do úplně neznámého prostředí někam na druhý konec republiky?</strong></p><p><em>„Určitě. Zlín je furt blízko, takže kdyby náhodou něco bych potřeboval, něco jsem třeba doma zapomněl, tak si pro to můžu zajet na otočku.“</em></p><p><strong>Jak to máš vlastně v plánu? Budeš bydlet přímo v Olomouci?</strong></p><p><em>„Určitě ano. Já na dojíždění moc nejsem, takže to by mi, myslím, po týdnu nebo po dvou už lezlo krkem, kdybych měl dojíždět každý den. Sháním si tedy bydlení přímo tady.“</em></p><p><strong>Už jsi stihnul poznat něco z Olomouce, když jsi dorazil mírně s předstihem a tým byl na soustředění?</strong></p><p><em>„Zatím nic moc extra. Vím, že město je krásné a těším se, až si ho projdu, ale zatím nebyl moc čas. Byl jsem tady jen pár měsíců zpátky na otočku.“</em></p>', 1),
(4, 'article/4-dorost', 'Sedmnáctka na úvod přípravy zdolala starší dorost Artisu 3:0', 'mladez.jpeg', 1752095291, 0, '', 1),
(5, 'article/5-permice', 'Permanentky na sezonu 2025/26 jsou v prodeji', 'permice.jpeg', 1750108091, 1, '   <p>Permanentní vstupenky na sezonu 2025/26 se prodávají od 23. června. Zůstávají zachovány slevy pro stávající permanentkáře. Všichni držitelé permanentních vstupenek budou mít předkupní právo na vstupenky v zápasech evropských pohárů. </p>\r\n                    <p>Prodej permanentek na novou sezonu byl spuštěn online i ve fanshopu na Andrově stadionu <strong>v pondělí 23. června v 10.00.</strong>\r\n</p><p>Stávající permanentkáři mají <strong>blokované svoje místo do 6. července.</strong> Stejně jako v minulých letech platí, že výměna permanentky vyjde levněji než nákup nové. Chceme tak ocenit vaši fanouškovskou věrnost.\r\n</p><p>Novinkou je, že domácí fandící zóna bude za brankou na jižní tribuně, stejně jako na vítězném finále MOL Cupu, kde panovala vynikající atmosféra, která týmu pomohla až k cenné trofeji.\r\n</p><p><strong><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"background-color: rgb(255, 255, 255);\">DŮLEŽITÉ UPOZORNĚNÍ</span></span></span></strong>\r\n</p><p><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"background-color: rgb(255, 255, 255);\">Vzhledem k nutným úpravám hlediště stadionu souvisejícím s účastí v soutěžích UEFA, nepůjdou některá místa stávajících permanentkářů vůbec do prodeje. <strong>TÝKÁ SE TO NĚKTERÝCH SEDADEL V SEKTORECH X, E, D a A.</strong> V takových případech bude pro vás vybráno jiné sedadlo ve stejné kategorii, nicméně budete si moct vybrat i jakékoliv jiné podle vlastních preferencí. V případě, že si budete chtít vybrat jiné místo, než jste měli doposud, nebo které vám bylo přiděleno, obraťte se, prosím, na ticketing@sigmafotbal.cz nebo osobně na pracovníky Fanshopu a vše společně vyřešíme.</span></span></span>\r\n</p><p><strong><strong>PODROBNÝ NÁVOD NA VÝMĚNU PERMANENTKY ONLINE SI MŮŽETE STÁHNOUT ZDE:</strong></strong>\r\n</p><p><a href=\"https://sigmafotbal.esports.cz/files/editor/Na&#769;vod k na&#769;kupu PERMIC PP - SK Sigma 2025_26.docx\">Návod na výměnu permanentek online</a>\r\n</p><p><a href=\"https://www.ticketportal.cz/event/SK-Sigma-Olomouc-permanentka-20252026?imedium=search\" target=\"_blank\"><img src=\"https://sigmafotbal.esports.cz/files/editor/KOUPIT PERMANENTKU4.png\" alt=\"\" width=\"700\" height=\"162\" style=\"display: block; width: 700px; height: 162px; margin: auto;\"></a>\r\n</p><p>Také v případě jakýchkoliv jiných problémů s nákupem či výměnou se obraťte na e-mail <u><a href=\"mailto:ticketing@sigmafotbal.cz\">ticketing@sigmafotbal.cz</a></u> .\r\n</p><h2>Na které zápasy permanentka platí?</h2><p>Permanentka platí na všechna domácí utkání v nejvyšší Chance Lize, na případná domácí utkání v MOL Cupu (s výjimkou finále) a všechny zápasy B-týmu v Moravskoslezské fotbalové lize.\r\n</p><p>Prodej vstupenek na utkání v evropských pohárech (Evropská liga, případně Konferenční liga) bude probíhat odděleně. Držitelé permanentek ale budou mít zaručen přednostní nákup lístků.\r\n</p><p>Kromě toho mají permanentkáři Sigmy také zajištěny výhody u klubových partnerů v rámci Bonus Programu nebo pozvánky na exkluzivní klubové akce, besedy s hráči, trenéry či funkcionáři a podobně. Při nákupu permanentky proto, prosím, nezapomeňte uvést také kontakty.\r\n</p><p><a href=\"https://sigmafotbal.cz/cz/bonus.php\"><strong>PODROBNÝ ROZPIS BONUS PROGRAMU</strong></a>\r\n</p><h2>Ceny permanentek</h2><p>Stejně jako v minulých letech jsou sedadla na stadionu rozdělena do čtyř kategorií s tím, že cenově nejdostupnější vstupenky budou na nekrytých místech za brankami.\r\n</p><p><img class=\"img-fluid\" src=\"https://sigmafotbal.esports.cz/files/editor/PLANEK STADIONU_2025-261.jpg\" \"=\"\">\r\n</p><p><br>\r\n</p><p><strong>Ceny permanentních vstupenek na sezonu 2025/26</strong>\r\n</p><p><strong></strong>\r\n</p><p><strong><img  class=\"img-fluid\" src=\"https://sigmafotbal.esports.cz/files/editor/Permice5.png\" \"=\"\"></strong>\r\n</p><strong><br></strong><h1>JEDNORÁZOVÉ VSTUPENKY</h1><p>Ceny vstupenek na jednotlivé ligové zápasy budou opět rozděleny do dvou úrovní. Duely s týmy TOP 4 (Sparta, Slavia, Ostrava a Plzeň) jsou zařazeny do první kategorie. Zápasy s ostatními týmy do druhé kategorie.\r\n</p><p>Cena permanentky vyjde v přepočtu tedy výrazně levněji, navrch získáte všechny výhody spojené s přednostním právem nákupu lístků na evropské zápasy, Bonus Program u partnerů či pozvánky na klubové akce.\r\n</p><h2>Ceny jednorázových vstupenek</h2><table><colgroup><col><col><col><col><col></colgroup>\r\n<tbody>\r\n<tr>\r\n	<td>\r\n	</td>\r\n	<td>\r\n		<p>T<strong>op zápasy (Sparta, Slavia, Ostrava, Plzeň)</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Ostatní zápasy Chance Ligy</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>B-tým v MSFL</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>V den utkání na pokladně</strong>\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>I. kategorie – krytá místa v sektorech B, C, D</strong><br><br>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>460\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>390\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>100\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>+50\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>II. kategorie – sektory A, E, P, R, S, T a nekrytá místa B, C, D</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>390\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>260\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>100\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>+50\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>III. kategorie - sektory F, G, H, O, U</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>320\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>200\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>100\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>+50\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>IV. kategorie – nekrytá místa V, W, X, Y, Z, J, K, L, M, N</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>260\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>150\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>100\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>+50\r\n		</p>\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table><p><strong>Slevy:</strong><br><em>ZTP/P - 100 % a ZTP - 50 % - prodej pouze na pokladně ve Fanshopu</em>\r\n</p><p><em>Děti do 15 let, studenti, důchodci 65 let a více – 50 %</em>\r\n</p><p><em>Děti do 6 let – 100 % bez nároku na místo</em>\r\n</p><p><strong>Porovnání ceny vstupenek za jednotlivé zápasy vs. permanentka</strong>\r\n</p><table><colgroup><col><col><col><col></colgroup>\r\n<tbody>\r\n<tr>\r\n	<td>\r\n	</td>\r\n	<td>\r\n		<p><strong>Jednotlivé nákupy</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Nová Permanentka</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p><strong>Úspora</strong>\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>I. kategorie</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>6910\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>5300\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>- 1610\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>II. kategorie</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>5200\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>4000\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>- 1210\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>III. kategorie</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>4080\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>3000\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>- 1080\r\n		</p>\r\n	</td>\r\n</tr>\r\n<tr>\r\n	<td>\r\n		<p><strong>IV. kategorie</strong>\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>3140\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>2400\r\n		</p>\r\n	</td>\r\n	<td>\r\n		<p>- 740\r\n		</p>\r\n	</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1),
(6, 'article/6-janosek', 'Janošek zapsal při debutu 1+1. Byl jsem natěšený, hlásil', 'janosek.jpeg', 1751617693, 1, '<p>První zápas v dresu Sigmy proti maďarskému Debrecenu vyšel Dominiku Janoškovi téměř na výbornou. Zapsal asistenci u gólu Daniela Vašulína a následně s přehledem proměnil penaltu a přispěl tak k vítězství Hanáků 3:1. <i>„Hrálo se mi parádně, byl jsem natěšený,“</i> vykládal pak Dominik Janošek bezprostředně po zápase před kamerou klubové televize. </p>\r\n                    <p><strong>Na závěr soustředění jsme zapsali druhou výhru. Jak se ti hrál první zápas za Sigmu?</strong></p><p>„<i>Hrálo se mi parádně. Byl jsem natěšený, protože už jsem byl asi měsíc a půl bez zápasu. Těšil jsem se i proto, že jsem v novém klubu. Jsem rád, že jsme to zvládli vítězně a ukončili soustředění dobře.“</i></p><p><strong>Jak se sžíváš s novými spoluhráči?</strong></p><p>„<i>Bylo to super. Navnímali jsme se už na trénincích. Ať je to Breiťák, Lanži nebo Váša, všichni jsou chytří kreativní hráči. To pak jde všechno rychleji, doufám, že si to pak přeneseme i do ligy.“</i></p><p><i><iframe width=\"908\" height=\"511\" src=\"https://www.youtube.com/embed/kOoCZWUKjMQ\" title=\"Janošek po výhře s Debrecenem\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen=\"\"></iframe><br></i></p><p><strong>Zaznamenal jsi 1+1, což ke skvělý start. Jako první přišla asistence.</strong></p><p>„<i>Měl jsem tam takový proběh, dostal jsem skvělou průnikovku od Hadyho, ale doběhl jsem to trochu na poslední chvíli, tak jsem si řekl, že to tam naslepo nastřelím po zemi před bránu. Vášova práce je tam být, takže bych ho zdrbal, kdyby tam nebyl (směje se). Dal gól a to je super.“</i></p><p><strong>Co gól z penalty?</strong></p><p>„<i>Trénuju to. Kopal jsem penalty celou kariéru, i v Holandsku mi to šlo, tak snad to bude i tak pokračovat.“</i></p><p><strong>Odehrál jsi plus minus 65 minut. Bylo to tak akorát?</strong></p><p>„<i>Asi jo. Po té dlouhé době asi jo. Je jasné, že herní praxe se nedá ničím nahradit. Myslím si, že to bude jen lepší a lepší. Cítím se dobře i v tréninku. I díky tomuto zápasu a ještě i generálce, která nás čeká, budeme na ligu dobře připravení.“</i></p>\r\n                               ', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `tm_id` int NOT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `deleted_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `team`
--

INSERT INTO `team` (`id`, `name`, `logo`, `tm_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'FC Arsenal', '11.png', 11, 1757278739, 1757278739, NULL),
(6, 'Derby County', '22.png', 22, 1757278741, 1757278741, NULL),
(7, 'FC Everton', '29.png', 29, 1757278744, 1757278744, NULL),
(8, 'FC Liverpool', '31.png', 31, 1757278747, 1757278747, NULL),
(9, 'Tottenham Hotspur', '148.png', 148, 1757278750, 1757278750, NULL),
(10, 'Blackburn Rovers', '164.png', 164, 1757278753, 1757278753, NULL),
(11, 'FC Southampton', '180.png', 180, 1757278754, 1757278754, NULL),
(12, 'Manchester City', '281.png', 281, 1757278757, 1757278757, NULL),
(13, 'AFC Sunderland', '289.png', 289, 1757278760, 1757278760, NULL),
(14, 'Birmingham City', '337.png', 337, 1757278762, 1757278762, NULL),
(15, 'FC Barnsley', '349.png', 349, 1757278764, 1757278764, NULL),
(16, 'Sheffield United', '350.png', 350, 1757278766, 1757278766, NULL),
(17, 'Swindon Town', '352.png', 352, 1757278768, 1757278768, NULL),
(18, 'Bolton Wanderers', '355.png', 355, 1757278770, 1757278770, NULL),
(19, 'Charlton Athletic', '358.png', 358, 1757278773, 1757278773, NULL),
(20, 'West Ham United', '379.png', 379, 1757278775, 1757278775, NULL),
(21, 'Leeds United', '399.png', 399, 1757278778, 1757278778, NULL),
(22, 'Aston Villa', '405.png', 405, 1757278780, 1757278780, NULL),
(23, 'Preston North End', '466.png', 466, 1757278783, 1757278783, NULL),
(24, 'Stoke City', '512.png', 512, 1757278786, 1757278786, NULL),
(25, 'Wolverhampton Wanderers', '543.png', 543, 1757278788, 1757278788, NULL),
(26, 'Cardiff City', '603.png', 603, 1757278790, 1757278790, NULL),
(27, 'FC Chelsea', '631.png', 631, 1757278793, 1757278793, NULL),
(28, 'FC Middlesbrough', '641.png', 641, 1757278795, 1757278795, NULL),
(29, 'Ipswich Town', '677.png', 677, 1757278798, 1757278798, NULL),
(30, 'Bristol City', '698.png', 698, 1757278800, 1757278800, NULL),
(31, 'Nottingham Forest', '703.png', 703, 1757278803, 1757278803, NULL),
(32, 'Newcastle United', '762.png', 762, 1757278806, 1757278806, NULL),
(33, 'Crystal Palace', '873.png', 873, 1757278809, 1757278809, NULL),
(34, 'FC Walsall', '899.png', 899, 1757278812, 1757278812, NULL),
(35, 'FC Fulham', '931.png', 931, 1757278815, 1757278815, NULL),
(36, 'West Bromwich Albion', '984.png', 984, 1757278817, 1757278817, NULL),
(37, 'Manchester United', '985.png', 985, 1757278820, 1757278820, NULL),
(38, 'Cambridge United', '986.png', 986, 1757278823, 1757278823, NULL),
(39, 'Oxford United', '988.png', 988, 1757278825, 1757278825, NULL),
(40, 'AFC Bournemouth', '989.png', 989, 1757278828, 1757278828, NULL),
(41, 'Coventry City', '990.png', 990, 1757278830, 1757278830, NULL),
(42, 'Milton Keynes Dons', '991.png', 991, 1757278832, 1757278832, NULL),
(43, 'Leicester City', '1003.png', 1003, 1757278835, 1757278835, NULL),
(44, 'FC Watford', '1010.png', 1010, 1757278837, 1757278837, NULL),
(45, 'FC Portsmouth', '1020.png', 1020, 1757278839, 1757278839, NULL),
(46, 'Bradford City', '1027.png', 1027, 1757278841, 1757278841, NULL),
(47, 'FC Millwall', '1028.png', 1028, 1757278844, 1757278844, NULL),
(48, 'Luton Town', '1031.png', 1031, 1757278846, 1757278846, NULL),
(49, 'FC Reading', '1032.png', 1032, 1757278849, 1757278849, NULL),
(50, 'Grimsby Town', '1034.png', 1034, 1757278852, 1757278852, NULL),
(51, 'Sheffield Wednesday', '1035.png', 1035, 1757278854, 1757278854, NULL),
(52, 'Queens Park Rangers', '1039.png', 1039, 1757278856, 1757278856, NULL),
(53, 'Crewe Alexandra', '1042.png', 1042, 1757278858, 1757278858, NULL),
(54, 'Notts County', '1045.png', 1045, 1757278861, 1757278861, NULL),
(55, 'Colchester United', '1060.png', 1060, 1757278864, 1757278864, NULL),
(56, 'Wigan Athletic', '1071.png', 1071, 1757278866, 1757278866, NULL),
(57, 'Peterborough United', '1072.png', 1072, 1757278868, 1757278868, NULL),
(58, 'Tranmere Rovers', '1074.png', 1074, 1757278871, 1757278871, NULL),
(59, 'Oldham Athletic', '1078.png', 1078, 1757278873, 1757278873, NULL),
(60, 'Stockport County', '1098.png', 1098, 1757278876, 1757278876, NULL),
(61, 'Huddersfield Town', '1110.png', 1110, 1757278879, 1757278879, NULL),
(62, 'AFC Wrexham', '1112.png', 1112, 1757278881, 1757278881, NULL),
(63, 'Norwich City', '1123.png', 1123, 1757278883, 1757278883, NULL),
(64, 'FC Burnley', '1132.png', 1132, 1757278886, 1757278886, NULL),
(65, 'FC Brentford', '1148.png', 1148, 1757278888, 1757278888, NULL),
(66, 'Leyton Orient', '1150.png', 1150, 1757278891, 1757278891, NULL),
(67, 'FC Blackpool', '1181.png', 1181, 1757278893, 1757278893, NULL),
(68, 'Rotherham United', '1194.png', 1194, 1757278895, 1757278895, NULL),
(69, 'Lincoln City', '1198.png', 1198, 1757278897, 1757278897, NULL),
(70, 'FC Port Vale', '1211.png', 1211, 1757278900, 1757278900, NULL),
(71, 'FC Chesterfield', '1219.png', 1219, 1757278902, 1757278902, NULL),
(72, 'Carlisle United', '1220.png', 1220, 1757278905, 1757278905, NULL),
(73, 'Brighton & Hove Albion', '1237.png', 1237, 1757278911, 1757278911, NULL),
(74, 'Northampton Town', '1302.png', 1302, 1757278913, 1757278913, NULL),
(75, 'Plymouth Argyle', '2262.png', 2262, 1757278916, 1757278916, NULL),
(76, 'Swansea City', '2288.png', 2288, 1757278918, 1757278918, NULL),
(77, 'Doncaster Rovers', '2454.png', 2454, 1757278920, 1757278920, NULL),
(78, 'Bristol Rovers', '2455.png', 2455, 1757278922, 1757278922, NULL),
(79, 'Hartlepool United', '2577.png', 2577, 1757278924, 1757278924, NULL),
(80, 'Wycombe Wanderers', '2805.png', 2805, 1757278927, 1757278927, NULL),
(81, 'FC Gillingham', '2814.png', 2814, 1757278929, 1757278929, NULL),
(82, 'Burton Albion', '2963.png', 2963, 1757278932, 1757278932, NULL),
(83, 'Hull City', '3008.png', 3008, 1757278934, 1757278934, NULL),
(84, 'Shrewsbury Town', '3054.png', 3054, 1757278936, 1757278936, NULL),
(85, 'Cheltenham Town', '3371.png', 3371, 1757278939, 1757278939, NULL),
(86, 'Rushden & Diamonds (- 2011)', '3536.png', 3536, 1757278941, 1757278941, NULL),
(87, 'Crawley Town', '3537.png', 3537, 1757278943, 1757278943, NULL),
(88, 'FC Stevenage', '3684.png', 3684, 1757278945, 1757278945, NULL),
(89, 'Accrington Stanley', '3688.png', 3688, 1757278947, 1757278947, NULL),
(90, 'FC Morecambe', '3697.png', 3697, 1757278949, 1757278949, NULL),
(91, 'Newport County', '3716.png', 3716, 1757278952, 1757278952, NULL),
(92, 'Mansfield Town', '3820.png', 3820, 1757278954, 1757278954, NULL),
(93, 'AFC Wimbledon', '3884.png', 3884, 1757278956, 1757278956, NULL),
(94, 'AFC Barrow', '6168.png', 6168, 1757278959, 1757278959, NULL),
(95, 'Exeter City', '6699.png', 6699, 1757278960, 1757278960, NULL),
(96, 'FC Bromley', '8981.png', 8981, 1757278962, 1757278962, NULL),
(97, 'Fleetwood Town', '11177.png', 11177, 1757278964, 1757278964, NULL),
(98, 'Harrogate Town', '12020.png', 12020, 1757278967, 1757278967, NULL),
(99, 'Salford City', '34888.png', 34888, 1757278969, 1757278969, NULL),
(100, 'FC Wimbledon (- 2004)', '114309.png', 114309, 1757278971, 1757278971, NULL);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `top` (`top`);

--
-- Indexy pro tabulku `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tm_id` (`tm_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

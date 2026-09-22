

![[Pasted image 20260415104736.png]]

# Klappentext

Der erste Tag im neuen Job, du bist maximal nervös...
Wie sind die Kollegen, wie ist der Chef?
Bist du zu over- oder underdressed?
Wirst du dich schnell zurecht finden?

all das und mehr geht dir durch den Kopf bist du das Büro dann entlich betrittst und dir nur denkst.... "?!"

---
> 🎓 **Hinweis zu den didaktischen Anmerkungen in diesem Dokument**
> Alle mit 🎓 gekennzeichneten Blöcke ordnen die jeweilige Spielmechanik einer oder mehreren lerntheoretischen Perspektiven zu (Behaviorismus, Kognitivismus, Konstruktivismus nach Reich, Konnektivismus) sowie motivationspsychologischen Konzepten (Motiv/Motivation, Selbstbestimmungstheorie/SDT). Sie ersetzen und vereinheitlichen die zuvor kursiv im Dokument verstreuten Einzelanmerkungen, um eine konsistente Argumentationslinie durch das gesamte Konzept zu ziehen. Diese Datei ist eine Kopie des Original-GDD – der Original-Inhalt bleibt unverändert, es wurden ausschließlich Anmerkungsblöcke ergänzt.

---

# Grundlegendes

 Ziel: Ein Spiel zu entwickeln, welches auf humoristische Art und Weise einem die Grundkonzepte von agilen Softwareentwicklungsprozessen näherbringt. Dies beinhaltet u.a. Sachen wie UML, Git, einfache Algorithmen, wie man Meetings strukturiert, SCRUM. Lerne anhand des Spiels die spezifischen Prozesse und warum diese eingesetzt werden und warum sie notwendig sind. Zeigen anhand von Beispielen warum es funktioniert, Vorher Nachher Geschichte. 
Motivation dahinter: Wir kennen schlechte Prozesse und wir wollen es besser machen und es spielerisch weitergeben 

> 🎓 **Didaktische Anmerkung — Übergeordneter theoretischer Rahmen**
> Chaoffice ist im Kern ein **konstruktivistisches Lernspiel** (vgl. Reich: Konstruktion – Rekonstruktion – Dekonstruktion), das an mehreren Stellen bewusst **kognitivistische Problemstellungen** nutzt (Präsentation eines Problems statt fertiger Lösung, Lehrperson/NPC als Tutor) und punktuell **behavioristische Elemente** zur unmittelbaren Rückmeldung einsetzt (Richtig/Falsch-Feedback, Verstärkung einzelner Teilschritte). Der NPC-Beziehungsgraph selbst greift zudem eine **konnektivistische** Grundidee auf: Wissen liegt nicht bei einer einzelnen Figur, sondern ist über das Netzwerk der NPCs verteilt – der Spieler muss dieses Netzwerk erst erschließen, um handlungsfähig zu werden ("know-where" statt "know-what"). Die Motivation der Spielenden wird durchgehend über die drei Grundbedürfnisse der Selbstbestimmungstheorie (Autonomie, Kompetenz, soziale Eingebundenheit) adressiert, siehe die einzelnen Tagesanmerkungen.

## Zielgruppe

aktuelle Überlegung ist (durch Refactoring-Aufgabe angestoßen) Semester 3-4 eines durchschnitts-Informatikstudenten an der HTWK Leipzig
neue Überlegung ist es an 1-2 Semesterstudenten zu richten, die somit das erste Mal einen groben Überblick über Strukturen von Softwareentwicklung bekommen, erste Stufe des Lernens: Konfrontation mit dem Thema

> 🎓 **Didaktische Anmerkung — Kognitivismus**
> Die Verschiebung der Zielgruppe auf das 1.–2. Semester macht didaktisch Sinn: Für Erstsemester ist die Konfrontation mit den Themen (SCRUM, UML, Code Smells) noch nicht mit korrigierendem Vorwissen "verstellt" – das Spiel kann als **erster aktiver Aufbau von Schemata** (Kognitivismus) fungieren, statt bereits vorhandenes (ggf. fehlerhaftes) Wissen zu rekonstruieren. Für höhere Semester wäre der Lerneffekt eher ein Rekonstruktions- als ein Konstruktionsprozess.

### Grundriss

# Charaktere
### Main Charakter

Hauptcharakter: Nondeskriptiv, geschlechtsneutral (für späteres ändern), MC weiß es einfach besser und ändert deswegen alles ab
Arbeiten wir uns hoch von Praktikantenstelle aus oder sind wir spezifisch dafür da das wir dieses Office umstrukturieren?
 --> Aufgrund chaotischen OnBoardingprozess möglichkeit des "so tun als ob" wenn es darum geht Strukturen zu ändern dadurch das der Praktikant anfängt alle Strukturen umzuwerfen 

### Andere Charaktere
##### Teams / NPCs im Spiel
- zwei Teams
	- Frontend
		- 2 Personen 
			- `Marius`
			- Steffi
	- Backend - größer als Frontendteam
		- 5 Personen
			- Fernando
			- `Meff`
			- Janosch
			- Annegret
			- Cornelia
	- (Dev) Ops (Lemmy)
		- schläft im Serverraum
- Hausmeister (Glen Mathews)
- Sekretär (Man Greasley)
- `Chef` (Mike Gefängnis)
- Hauptcharakter

### Charaktereigenschaften

- **Chef**: Schreibt immer an alle, nicht an einzelne, liest nie die emails an ihn
- **Hausmeister**: Antwortet immer dem Chef (mit CC an alle)
- **Cornellia, Steffi** reden immer miteinander
- **Man** mit ihm redet niemand, obwohl er alles weiß
- **Annegret** redet mit niemanden, will nur ihr eigenes Ding machen

### Beziehungen zwischen Charakteren

![beziehungen](../assets/protokoll/IMG_4277.jpeg)

Legende
- Kreis: sitzen zusammen
- Kreuz auf einfacher Linie: gescheiterte Kommunikation
- Doppel-Pfeil: geht an alle

Hintergedanke: Man will aus dem rechten ist-Zustand zum linken soll-Zustand kommen
-> soll der Spieler herausfinden

> 🎓 **Didaktische Anmerkung — Konnektivismus**
> Dieser Beziehungsgraph ist die visuelle Grundlage des "Spinnennetz"-Rätsels (Tag 1) und damit die wörtliche Umsetzung eines **Wissens-/Kommunikationsnetzwerks**: Knoten = NPCs/Informationsquellen, Kanten = (funktionierende oder gescheiterte) Verbindungen. Der Ist-Zustand zeigt ein dysfunktionales Netzwerk (Informationen erreichen die falschen Knoten oder gehen an alle statt gezielt), der Soll-Zustand ein funktionales. Der Lernauftrag an den Spieler ("herausfinden") ist damit exemplarisch für die konnektivistische Kernkompetenz: **Verbindungen zwischen Informationsknoten erkennen und aktiv gestalten**, statt Fakten über einzelne NPCs auswendig zu lernen.


### Levelaufbau

(Resident Evil like, das man durch neue Items neue Bereiche freischaltet)
Anfangs sind Bereiche quasi durch "Dach" oder "Decke" ausgegraut, bzw ausgewandet, sodass man nicht anfangs komplett überfordert wird von dem gesamten Layout. Man schaltet im Storyverlauf, durch Quests oder durch simples reingehen frei, was für Bereiche man sehen kann (eventuell alles einmalige Events, potentiell immer nur der Bereich aktiv in welchem man sich befindet (Einstellungen eventueller Toggle um dazwischen zu switchen))

> 🎓 **Didaktische Anmerkung — Kognitivismus (Scaffolding)**
> Das schrittweise Freischalten von Bereichen ist eine klassische **Reduktion kognitiver Überlastung**: Die Gesamt-Lernumgebung (das komplette Büro/Curriculum) bleibt komplex und unstrukturiert – wie es der Konstruktivismus fordert –, wird dem Lernenden aber portionsweise zugänglich gemacht, damit er nicht von Beginn an mit der vollen Komplexität konfrontiert wird. Das ist kein Widerspruch zum konstruktivistischen Grundansatz des Spiels, sondern **Gerüstbau (Scaffolding)**: Struktur wird nur so lange von außen vorgegeben, bis der Lernende selbst genug Anknüpfungspunkte (Vorwissen) hat, um komplexere Zusammenhänge selbstständig zu konstruieren.

### Genre

1. Vorschlag: Isometrisch rumlaufen (birds eye view?) + Story + Rätsel (Stardew Valley Pokemon Pixel (Workadventure Hardwarelabor)) Pixelart, Menschen, (NPCs und es gibt deinen Charakter (erstmal keine Charaktererstellung))
2. Vorschlag: Walking Simulator (nur leichter Vorschlag)

### Plot

-> Hauptcharakter kommt ins Unternehmen, 1. Tag im Unternehmen, kriegt Zugangskarte, kriegt gesagt geh mal zum Chef und findet raus nichts geht, keiner ist Vorbereitet, kein Laptop, du bist Praktikant und kommst heute?
Verlauf: Es muss dazu kommen das der Hauptcharakter daran arbeitet selber arbeiten zu können (Equipment Schreibtisch Arbeitsplatz, andere Zugangsberechtigungen (Passwort, keine Programme (Stell dir mal vor die haben irgendwo alle Passwörter in einer Akte drin, du siehst alle Passwörter (Ähnlich wie LucasArts spiel ich hab Name vergessen wo man Bücher anklicken kann))))
Man kann selber nicht arbeiten, andere können aber auch nicht arbeiten, nichts ist Dokumentiert (-> UML) und Prozesse da kommen wir dann zu SCRUM, Spaghetticode
-> Vorgänger Plotpoint: Es läuft chaotisch weil der Vorgänger in Rente gegangen ist, Praktikant ist aufeinmal da, oh nein oh nein, er hat dann das Buch gefunden was ihn dazu anleitet diese Prozesse zu lösen. Man redet mit NPCs 

Was macht die Firma eigentlich?
1. Vorschlag: Man kriegts erst am Ende oder potentiell garnicht mit
2. Vorschlag: Macht Software für Kaffeemaschinen (aber die im Büro funktionieren alle nicht)
3. Vorschlag: Finanzsoftwarehersteller, dadurch weiß niemand (potentiell Pleite)


ALLES IST EIN ALBTRAUM, am Ende wachst du auf und musst in die Uni zur SCRUM Vorlesung



## Was wollen wir vermitteln?

### SCRUM / Agile Prozesse
siehe erste Quest

### UML
potentiell Weicker fragen für schlechte Beispiele die lustig sind

### Spaghetticode fixen
possibly mit Drag & Drop


## Featurelist

- Erstes Rätsel: Man redet mit allen Leuten, sammelt nebenbei eine Art Spinnennetz für wer mit wem für was redet wer für was zuständig ist und stellt am Ende fest: ist alles kacke, erstes Rätsel dann daraus zu entwickeln wer ist für was zuständig, wie könnte man strukturen vereinfachen, und besser klären  wer für was, Crossfunctional Teams bauen, 
Jeder sitzt am falschen Platz, nichts ist sortiert, dadurch die Kommunikationswege durcheinander
 - suchst Gegenstände (auch Informationen) die dir an anderer Stelle helfen, wie Laptop, wie Passwort, das Informationsbuch, da ist das Rätsel wo setzt man das dann ein. Man findet und muss finden wo es eingesetzt wird, man muss Anleitung im Buch freischalten indem man Rätsel findet? Man kann bestimte Dinge erst sehen, wenn man das Spinnennetz hat und entwirrt hat? Infos existieren schon im Buch aber man findet erst nach und nach raus wofür die da sind?
 Unvollständige Situation in der noch Gegenstände fehlen, man findet Abschnitt im Buch aber man weiß noch nicht wo man es anwenden kann, aaaa aber hier sind aufeinmal Klassendiagramme notwendig. 
 Rätsel sind eig alle Drag & Drop 
 Coding Rätsel? auch Drag & Drop oder Schieberätsel, wie löst man bestimmte Probleme (-> potentiell zu komplex)
 - Charaktersteuerung, Puzzle Schieberätsel

Dinge passieren nicht über einen Tag verteilt sondern über mehrere, Tagwechsel führt zu Office sauberer falls Rätsel vorher gelöst wurden

> 🎓 **Didaktische Anmerkung — Behaviorismus eingebettet in Konstruktivismus**
> Die Drag & Drop-Mechanik selbst ist ein gutes Beispiel für ein **hybrides Design**: Die Rahmenhandlung (Büro neu ordnen, Wissen selbst zusammensetzen) ist konstruktivistisch, aber der einzelne Interaktionsschritt (Element ziehen → sofortige visuelle/inhaltliche Rückmeldung ob es "passt") ist ein klassischer **behavioristischer Stimulus-Antwort-Verstärkungs-Zyklus**. Das ist didaktisch sinnvoll: Kleinschrittiges, unmittelbares Feedback hält die Handlung motivational am Laufen (Motivation muss laut Definition nicht nur ausgelöst, sondern auch **aufrechterhalten** werden), während die übergeordnete Aufgabe (das Büro sinnvoll neu strukturieren) dem Spieler als offenes, konstruktivistisches Problem überlassen bleibt.
> Der sichtbare Fortschritt ("Office wird über Tage hinweg sauberer") ist zugleich eine **extrinsische, aber diegetische Verstärkung** des Lernfortschritts – der Spieler sieht seinen eigenen Kompetenzzuwachs im Raum gespiegelt (vgl. SDT: Kompetenzerleben als Grundbedürfnis).

# Quests 
! Anne Anmerk.: So schön das alles ist und so gern ich das alles drin haben will, sollten wir diese Sachen vllt wirklich hinten anstellen und uns auf den Learning Bereich des Spiels fokussieren. Also wirklich erstmal an den Rätseln arbeiten und "das Herz" aufbauen und dann all den Fluff drumrumbasteln mit Kaffeemaschine, Geschirrspülmaschine, Chef bei Laune halten


Laptop hat nichts ausser das Hilfebuch :D 
Dokumentation -> Drag & Drop lässt Kacheln hin und herziehen
Mehrere Rätsel für unterschiedliche Typen, also mehr Typen

SCRUM mit zuerst vllt weil damit man merkt wer was wo machen muss, Leute reden nicht direkt miteinander und es ist nicht klar hierarisiert wer was macht, Besprechungstisch und leute werden neuzugewiesen

 
### Kaffeemaschine reparieren

### Laptop auftreiben

### Geschirrspülmaschine / Küche in Ordnung bringen

### Chef bei laune Halten

### Dokumentation

### Spagetthicode fixen / Refaktorie

Idee: NPCs machen ihr Ding, dadurch entstehen Aufgaben für den Spieler
1. Einführung
	- neues Layout wird entdeckt
	- 1 NPS leitet ein
	  "Schau mal mein toller Code"
		- 2-3 NPCs verweisen auf 'main' NPC

2. Eigentliche Aufgabe
	- Misual-Mudio Code-Umgebung (angelehnt an VSC)
		- bspw. für Refactoring-Aufgabe: ganz viele else if anweisungen

```ts
if (n==1) return false;
else if (n==2) return true;
else if (n==3) return false;
...
```
- Ideen
	- Fragen fliegen ganz schnell auf einen zu, man muss entscheiden ob man sich dafür oder dagegen entscheidet
	- Man refactored Code mit Drag and Drop Prinzip
	- man markiert Zeilen Code in einem Programm, bei denen man denkt dass es "falscher" Code ist. Gedankenwolke zum überprüfen
- ```Grundidee, dass man Konzepte abstrakt vermittelt```
	- d.h. Lesbarkeit, Übersichtlichkeit, Redundanzen,... (was auf Refactoring zutrifft) über Beispiele vermitteln
3. Smalltalk nach abgeschlossener Aufgabe, nach hause gehen (Ende vom Tag)
	- man gibt sich als Chef aus und schreibt Mails wie "so machen wir das jetzt"

> 🎓 **Didaktische Anmerkung — Kognitivismus**
> Dieser frühe Entwurf der Refactoring-Quest zeigt bereits die spätere, in Tag 3 umgesetzte Struktur: Ein NPC präsentiert ein **Problem** (nicht die Lösung) ("Schau mal mein toller Code") – das ist der zentrale didaktische Bruch mit dem Behaviorismus: Es wird nichts vorgezeigt und nachgeahmt, sondern der Lernende muss selbst Muster erkennen ("falscher Code") und Zusammenhänge herstellen. Die explizite Notiz "Konzepte abstrakt vermitteln … über Beispiele" ist exakt die kognitivistische Zielsetzung: **Schemabildung durch konkrete Fälle**, sodass das Prinzip (Lesbarkeit, Redundanzfreiheit) über den Einzelfall hinaus generalisiert werden kann. Der Chef-Rollentausch am Tagesende ("man gibt sich als Chef aus") ist zudem ein kleiner **Rekonstruktions-Moment**: Der Spieler wendet das neu erworbene Wissen aktiv an, indem er es in eigenen Worten/eigener Autorität weitergibt.


### Irgendwann feststellen das du gar nicht weißt was die Firma eigentlich macht und das Rausfinden

# Erstellung der Tagesabläufe

| Tag | Task                            | Anmerkungen                                          |
| --- | -------------------------------- | ----------------------------------------------------- |
| 0   | Laptop finden                   | Kennenlernen <- Sammeln von Informationen über Firma |
| 1   | Einführung sinnvoller Struktur  |                                                       |
| 2   | UML                             |                                                       |
| 3   | Refactoring                     |                                                       |
| 4   | 🎉 Beförderung / Festanstellung | `Das Büro räumt sich über die Tage hinweg auf`       |

- Technische Klärung wie man Tage in GoDot umsetzen kann 
	- über globale Variable anhand der sich die Notes anpassen
	- (if tag == 0 do xy else z)
- NPCs, Personen die man sieht, Raum etc. sind abhängig vom aktuellen Tag

> 🎓 **Didaktische Anmerkung — Motivation (Aufrechterhaltung über Zeit)**
> Die Tagesstruktur bildet einen didaktisch sauberen **Spannungsbogen**: Tag 0 (niedrigschwelliges Kennenlernen) → Tag 1–3 (steigende inhaltliche Dichte: Teamstruktur, UML, Refactoring) → Tag 4 (Auflösung/Belohnung). Das deckt sich mit der Definition von Motivation als Prozess, der zielgerichtetes Handeln nicht nur **auslöst**, sondern über Zeit **aufrechterhalten** muss: Ohne sichtbaren Fortschritt (aufgeräumtes Büro) und ohne die abschließende extrinsische Belohnung (Beförderung) würde die anfängliche (eher intrinsische, neugiergetriebene) Motivation aus Tag 0 über vier Spieltage hinweg nicht tragen.

# Konkreter Tagesablauf/Spielablauf - ausgenommen mögliche Nebenquests, nur Hauptstory/"der rote Faden"

Von Anfang an da:
- Notizbuch welches am rechten Rand Reiter hat zwischen denen man hin und her wechseln kann um verschiedene Hinweise zu begutachten. 
- Wird nach und nach gefüllt mit wichtigen Infos, dem Spinnennetz, dem Laufzettel, Quests etc.
##### ==Tag 0== (Montag) -> Ankommen

Dialog (Blackscreen Chatbox unten)
--- Firma xy ist die bestbewertetste Firma im Landkreis ...
	- Firma hat Preise gewonnen etc.
- Man kommt in die Firma
	- Rezeption begrüßt den Spieler freudenstrahlend

Handlung
- man erhält Chip & Zugangsdaten fürs Büro
	- Idee: man erhält auf einem Blatt Papier die Email und Passwort für die eigenen Account-Zugangsdaten - der Plot: man ist dann auf einmal als Chef eingeloggt, da er aus versehen seine Credentials aufgeschrieben hat
- Laufliste (was man alles an Material hat), Dokument das Onboarding-Prozess begleitet
- Aufgabe: Rede mit Chef (keine Info wo/wer das ist)
	- mit NPCs reden
	- Welt erkunden
	- Infos sammeln
- Erste ```Quest```: Laptop finden (implizit dadurch Chef finden)
- Weitere ```Quest```: mit allen NPCs unterhalten
- daraufhin wird man frei in das Büro entlassen
	- Möglichkeit mit allen NPCs zu reden, man fragt sich durch wer der Chef des ganzen ist und wird Passierschein A38 mäßig durchgeleitet, jeder ist ein bisschen chaotisch, Kommunikation ist nicht so die Stärke der NPCs
	- Der Spieler findet durch Dialoge heraus, dass NPCs alle durcheinander im Büro sitzen, nicht in Teams sortiert sind, nichtmal unbedingt Teams haben, jeder reported willkürlich seine Arbeit an irgendeine Person
	- während Dialogen werden bei Schlüssel-Sätzen stets automatisch Notizen im Notizblock angelegt 
		- "Ich muss heute noch mit Fernando reden um rauszufinden, welches Daily Passwort er gesetzt hat" - von einer Person die arbeitsmäßig nichts mit Fernando zutun haben sollte (bspw Man Greasly)
		- automatisches Pop Up, in welches die Verbindung von Man Greasly <-> Fernando eingezeichnet wird
		- durch diesen iterativen Prozess wird nach und nach der Zettel gefüllt, sodass er wie ein Spinnennetz aussieht (im weiteren auch als Spinnennetz bezeichnet)
		- stets anklickbar im Notizbuch
* Nachdem man mit allen NPCs einmal geredet hat, ist das Spinnennetz aufgefüllt sodass es am Dienstag gelöst werden kann
- angekommen beim Chef hat man Dialog in welchem man von ihm begrüßt wird und 

Dem Notizbuch wird hinzugefügt:
- Laufzettel
* Spinnennetz was sich stetig füllt
- Liste mit NPCs die man schon kennengelernt hat, auch evtl Auflistung der NPCs die noch fehlen

```In a Nutshell```
- Man bekommt ein Laufblatt
- da steht geh zum Chef
- Chef weiß nichts davon
- Chef sucht irgendwelche Dokumente
	- Blatt auf dem steht neuer Mitarbeiter etc. den man bekommt
- man erhält seinen Laptop

> 🎓 **Didaktische Anmerkung — Konnektivismus & Motiv/Motivation**
> Tag 0 ist keine Lernaufgabe im engeren Sinn, sondern reine **Informationsbeschaffung im Netzwerk**: Der Spieler sammelt keine Fakten aus einem Lehrbuch, sondern knüpft Verbindungen zu Informationsquellen (den NPCs) – exakt das konnektivistische Lernparadigma "Verbinden und Anwenden". Das automatische Anlegen der Notizbuch-Einträge visualisiert diesen Prozess des Netzwerkaufbaus.
> Aus motivationspsychologischer Sicht wird hier v. a. das **Anschlussmotiv** angesprochen (Kontakte finden, Orientierung in einer neuen Umgebung) sowie – über die chaotische, ergebnislose Chef-Suche – bewusst eine leichte **Kompetenz-Frustration** erzeugt, die die spätere Lösung (Tag 1: Struktur schaffen) erst wertvoll macht. Dieser Tag liefert das Motiv (im Sinne der überdauernden Handlungsbereitschaft "ich will hier Ordnung schaffen"), das ab Tag 1 in konkrete Motivation umgesetzt wird.

##### ==Tag 1== (Dienstag) -> Spinnennetz

- Erster Arbeitstag, MC kommt auf Arbeit und kriegt als Arbeitsplatz die sinnloseste Arbeitsplatzstelle zugewiesen, an welcher er im Team keinen Sinn macht. Daraufhin entsteht beim MC der Wunsch das Büro neu anzuordnen sodass Teams sinnvoll gestaltet sind und auch am richtigen Ort sitzen
- Aufgabe: Spinnennetz auflösen, wer mit wem interagiert, wo Schwierigkeiten sind, welche aufgaben von wem übernommen werden
- Am Dienstag fangen NPCs an, sich über bestehende Strukturen und ineffienz sich implizit zu beschweren 
	- Idee hierbei ist das NPCs sich in ihrer Welt ja nicht mit "besseren" Strukturen auskennen und sich einfach mit dem Status Quo hingeben, da sie es nicht besser kennen. 
	- Evtl. Kommentare a la "Ständig muss ich Fernando A sagen nur damit er leichte Änderungen macht und das dann an Meff weitergibt, welcher auch leichte Änderungen macht und dann kommt es an mich zurück. Aber jeden Tag merke ich, das diese Änderungen der beiden sich nur auscanceln gegenseitig."  
	- Lemmy will möglichst weit weg von allen anderen wegsitzen, da er es nicht aushält jeden Tag mit einem anderen Level als seine eigene Kompetenz konfrontiert zu werden
	- Bestehende Struktur besteht ua. aus individuellen Echtwelt Erfahrungen die das Team von Chaoffice gesammelt hat, sie überspitzt aufschreibt und in das Format des Spieles umsetzt
- MC bekommt nach erstem Dialog den eigenen Gedanken "Das könnte man bestimmt verbessern..."
	- Danach blinkender Leuchthinweis auf das Notizbuch, im Notizbuch weiterer blinkender Hinweis auf die Seite mit dem Spinnennetzrätsel
- In Spinnennetzrtätsel dann Möglichkeit, Namen per Drag & Drop zu ziehen und drei-vier eigene Departments zu schaffen & zu benennen
	- Benennungsideen entweder selber benennen oder aus Vorschlägen auswählen (Bspw Frontend, Backend, DevOps, Rest zb), bei Vorschlägen dann Erklärungen warum diese eine gute Idee sind. 
	- Auch Möglichkeit die Teams (ausser Man Greasly, Mike Gefängnis, Glen Matthews) bestimmten Räumen zuzuordnen 
		- Entscheidung hat nur bedingt Einfluss auf das Spiel, NPCs ordnen sich im Raum, an den Arbeitsplätzen, automatisch an, je nach Vorauswahl, und wohnen dann für den Rest des Spiels da
		- Constraints der Einordnung sind Platzgröße im Büro (3 Teams, eines links oben, eines rechts unten, eins wohl einfach nur Lemmy, rechts in der Mitte). Vorher nicht
		- Richtigkeit der Einordnung nur vage bewertet - Mehrere große Konflikte sollten gelöst werden, viele kleine Konflikte sind nur optional zum lösen für die optimale Lösung, aber das wird nicht bewertet. Nur Aussage, dass dies die perfekte Lösung ist wird gelobt
		- Erinnert an Spiele wie "is this seat taken", wo man Menschen nach ihren Vorlieben platzieren muss - allerdings abgespeckter, da sich die NPCs ihren Platz innerhalb der Gruppen selber aufteilen
	- Benachrichtigungsketten der NPCs werden implizit durch vorgegebene Dialoge vereinfacht -> "Was hältst du davon die Änderungen selber zu machen und dann direkt abzugeben" bzw "Was hältst du davon, die Änderungen nur an diese Person weiterzugeben?" etc
- Nach erfolgreichen Abschließen des Rätsels sind alle NPCs glücklich und der MC kriegt die Option nachhause zu gehen, darf sich aber durchaus weiter umschauen für weitere optionale Nebenquests, die dem Silliness und Chaos Vibes des Büros beitragen

> 🎓 **Didaktische Anmerkung — Konstruktivismus (Reich) & SDT**
> Dieser Tag ist das Herzstück der konstruktivistischen Auslegung des Spiels und lässt sich sauber entlang der drei Reich'schen Perspektiven lesen:
> - **Konstruktion:** Der Spieler macht durch eigenes Ausprobieren (Drag & Drop der NPC-Namen in selbstgewählte/-benannte Departments) eine **eigene Erfahrung** und baut sich ein eigenes Bild einer "guten" Teamstruktur. Wichtig: Es gibt keinen einzelnen richtigen Lösungsweg, nur individuelles Feedback der NPCs – das entspricht dem Prinzip der **Viabilität** (passt die Lösung zu den Zielen/Problemen des Systems?) statt einer objektiven Richtig/Falsch-Bewertung.
> - **Rekonstruktion:** Die vorgeschlagenen Team-Bezeichnungen (Frontend, Backend, DevOps) mit Begründung sowie die vorformulierten Dialogoptionen ("Was hältst du davon...") stellen **bestehendes Fachwissen** zur Verfügung, mit dem sich der Spieler aktiv auseinandersetzen muss, statt es nur zu übernehmen.
> - **Dekonstruktion:** Findet hier im Spiel selbst nur ansatzweise statt (NPC-Feedback deckt Fehleinschätzungen auf), vor allem aber **außerhalb** des Spiels: Der Lerntransfer erfolgt, wenn die Zielgruppe reale Team-/Rollenkonflikte im Studium erlebt und das Konzept dort erneut in Frage stellt.
> - Nach SDT werden hier alle drei Grundbedürfnisse adressiert: **Autonomie** (freie Wahl der Departmentnamen/-zuordnung, keine erzwungene Lösung), **Kompetenz** (positives NPC-Feedback als Bestätigung einer guten Lösung) und **soziale Eingebundenheit** (glückliche NPCs, aufgelöste Konflikte) – dieses Zusammenspiel ist laut SDT die Voraussetzung für **intrinsische** Motivation, die den Spieler antreibt, freiwillig die "optimale" statt nur eine "ausreichende" Lösung zu suchen.

##### ==Tag 2== (Mittwoch) -> UML
- Beim Betreten des Büros am Mittwoch stellt der Spieler fest, dass das Büro wesentlich aufgeräumter, wenn auch nicht komplett sauber, ist als vorher. 
- Jetzt, da die Hürde des unausgeglichenen Teams beseitigt ist, stellt sich die Frage, wie der neue Code der Firma im Groben strukturiert wird. 
	- Anlehnend an das Konzept eines Lückentextes (aber komplexer)
- Klassendiagramm: Aufzeigen der richtigen Syntax durch interaktives Wort & Bild
	- Grob vorgegebenem Klassendiagram fehlen wichtige Inhalte um ein schlüssiges Bild zu produzieren
	- Beziehungskardinalitäten müssen manuell gesetzt werden
		- direkte Anzeige auf einer Bildschirmseite, welche Auswirkungen diese Zahlen haben
		- Plantage hat Baum hat Äpfel 
		- Eintragen der Kardinalitäten rendert entsprechend der übergebenen Werte eine mini Plantage an der man sehen kann, welchen Einfluss die Werte haben
			- 50 Äpfel für genau einen Baum, ein einzelner Apfel pro Baum, 50 Plantagen, jede Plantage hat einen Baum mit 0 Äpfeln - usw
		- Beispiel eventuell anpassen auf etwas Office sinnvolleres - oder nicht wenn der Ansatz des "wir wissen auch nicht was die Firma macht" verfolgt wird
		- dieser Teil mehr Simulator als Abfrage der Richtigkeit, da Kardinalitäten ein Auslegungsspaß sind
	- setzen der Pfeile & Richtungen um richtige Beziehungen darzustellen
		- hier schon eher Wert auf Richtig/Falsch, da ein Apfel nicht von 50 Bäumen fallen kann
			- wäre aber lustig
				- wäre vorallem eine coole Spielidee so eine Informatikersuperkraft zu haben mit der man die Welt als Klassendiagramm abstrahiert und dann dort genau diese Sachen ändert um Probleme zu lösen/Probleme zu schaffen
					- so many ideas, so little time
		- bei Arten der Pfeile Textsnippets haben die sich dynamisch ändern
			- "Diese Hose kann ohne Hostentaschen nicht existieren" vs "Diese Hosentasche kann ohne Hose nicht existieren"
			- man sieht live den Impact der Pfeile in einer wunderschön farblich kodierten Textbox
			- auch als Bild möglich aber das ist komplexe Logik + viele Assets

> 🎓 **Didaktische Anmerkung — Kognitivismus & Konstruktivismus (überarbeitet aus vorherigen Notizen)**
> Das Klassendiagramm-Rätsel kombiniert beide Theorien in klarer Rollenteilung:
> - Die **Kardinalitäten-Simulation** (Apfelplantage) ist primär **kognitivistisch**: Der Spieler verknüpft neues Wissen (UML-Kardinalität) mit vorhandenem Alltagswissen (Vervielfältigung, "ein Baum trägt viele Äpfel") und bildet dadurch ein neues **Schema**. Da hier bewusst nicht bewertet wird ("Auslegungsspaß"), bleibt der Fokus auf dem Verstehen des Mechanismus, nicht auf einer richtigen Lösung.
> - Die **Pfeilrichtungen** hingegen sind klar **konstruktivistisch mit Viabilitäts-Bewertung** verbunden: Es gibt tendenziell richtige/falsche Lösungen ("ein Apfel kann nicht von 50 Bäumen fallen"), aber der Lernweg dorthin führt über eigenes Ausprobieren und den sichtbaren Live-Effekt der eigenen Entscheidung (Textbox-Feedback) – der Spieler bewertet die Passung seiner eigenen Konstruktion selbst, bevor das Spiel eingreift.
> - Voraussetzungen zur Konstruktion nach Reich sind hier erfüllt: **Selbstbestimmung** (freies Experimentieren mit Werten vor jeder Bewertung) und indirekt **Selbstwert** (wer bis hierhin weiterspielt, ist bereits am Lernprozess beteiligt).
> - **Rekonstruktion** findet statt, sobald der Spieler das UML-Konzept mit dem ihm vertrauten Konzept "Apfelplantage" zusammendenkt; **Dekonstruktion** verlagert sich – wie schon bei Tag 1 beschrieben – nach außen, in die Lehrveranstaltungen Softwaretechnik/Softwareprojekt, wo das Konzept erneut angewendet und hinterfragt wird.

	- bei if/else sachen geht die hervorgehobene Linie von beiden Zweigen gleichzeitig aus und läuft diese ab
- das sind die beiden wichtigsten länger wichtigen UML Diagrammarten, evtl noch Aktivitätsdiagramm oder Anwendungsfalldiagramm
	- Anwendungsfalldiagramm könnte man ans Spinnennetz anknüpfen und zuerst klären welches Team jetzt nochmal was macht und danach Klassendiagramm und danach Sequenzdiagrammsspiele machen (Vom höheren Level zum granulareren Level)

Sequenzdiagramm: Aufzeigen der richtigen Syntax durch Wasserlaufspiel
	- Ein Sequenzdiagramm mit vielen Fehlstellen
	- MC zeigt mit Ablauflinie, die einem Wasserstrom gleicht, wo das Sequenzdiagramm schief läuft, ab wo der Strom blockiert wird
	- dann Möglichkeit verschiedene Sequenzdiagramm Snippets per Drag & Drop einzusetzen
		- Diese sind in einem "drehendem" Anzeigesystem drin welches <- und -> zum durchcyclen von möglichen Puzzleteilen hat
		- Simples Puzzle in welchem man diese Snippets an vorgefertigte Stellen einsnappen lassen kann (wie in einem Puzzle-Puzzle) 
	- Überprüfen Button welcher dann die Linie nachzeichnet (den Wasserstrom anzeigt) um zu schauen ob alle Bereiche erreicht werden und ein sinnvoller Ablauf zustande kommt
		- Unendlich viele Möglichkeiten diesen zu nutzen

> 🎓 **Didaktische Anmerkung — Behaviorismus**
> Der "Überprüfen"-Button ist im Kern ein **behavioristisches Verstärkungselement**: Antwort (Snippet-Anordnung) → unmittelbare, eindeutige Rückmeldung (Wasserstrom läuft durch oder bleibt stecken). Anders als beim Klassendiagramm gibt es hier eine klar korrekte Lösung – passend, denn Sequenzabläufe sind (anders als Kardinalitäten) tatsächlich eindeutig richtig oder falsch. Didaktisch sinnvoll: Je näher eine Spielmechanik an objektiv prüfbarem Fachwissen liegt (korrekte Syntax), desto eher lohnt sich ein behavioristisches Feedback-Muster; je offener die Aufgabe (Teamstruktur, Kardinalitäten-Bedeutung), desto mehr Raum sollte für konstruktivistische Eigenkonstruktion bleiben. Das UML-Kapitel zeigt damit gut, wie die Spieldesigner die Feedback-Strenge bewusst an den Objektivitätsgrad des Lerninhalts anpassen.


##### ==Tag 3== (Donnerstag) -> Refactoring (unser MVP)
- Beim Betreten des Büros am Donnerstag stellt der Spieler fest, dass das Büro noch aufgeräumter ist als am Mittwoch, aber es gibt immernoch Verbesserungspotential
- Heute ist Review Tag, jeder NPC welcher mit am Code der Firma gearbeitet hat, reviewed heute Code eines anderen NPCs
	- Man geht zu allen Code-NPCs hin nach einander und kann jeweils ein kleines Refactoring Rätsel lösen, welche wie folglt aufgebaut sind
		- Einleitender Dialog was das Thema ist, dass der NPC nicht weiterkommt und gerne der MC mal drüber schauen sollte. 
		- Das Rätsel wird betreten, in der Mitte des Bildschirmes befindet sich das Coderätsel zum begutachten 
		- Im Dialogfensterbereich befindet sich ein Erklärdialog wie das Spiel funktioniert
		- Der Spieler hat nun die Möglichkeit mehrere Flaggen an Codestellen zu setzen, wo sich Code Smells befinden
			- "Der Code riecht aber schlecht..."
			- Unterschiedliche Warnsignale schlechtem Codes - bei Variablennamen bspw offensichtlich schlechte Namen wie Flusspferd 
			- Mit einer vorgegebenen Box wird gecheckt ob jede Flagge nur in einem Bereich ist und ob alle Bereiche abgedeckt sind
			- Falls dies nicht der Fall ist kriegt man die Option ob man selber weitersuchen will oder ob der MC das einfach kurz für einen Aufdecken soll
				- Den Spieler nicht verzweifelt in einem State des "Suppe an die Wand werfen und schauen was Klebenbleibt" halten
				- nur als kleine Einstiegsmahlzeit gedacht um auf das eigentliche Rätsel hinzuarbeiten
			- Danach die Möglichkeit die einzelnen Flaggen anzuklicken und abzuarbeiten
			- Mit dem Klick auf eine Flagge wird verschiebt sich das Codesnippet auf die linke Bildschirmseite und auf der rechten Seite erscheinen untereinander drei Alternativvorschläge dafür, wie diese Stelle im Code aussehen könnte
			- Stets unten eine Dialogbox die Hinweise auf den Spielverlauf gibt -> "Welche dieser Ideen könnte wohl passen?"
			- Beim klicken auf eine Idee wird in der Dialogbox ein Gedanke des Main Charakters erscheinen, der ein für und wieder widerspiegeln soll, wie weit der ausgewählte Codesnippet passt
				- Dabei entweder die Verteilung von 1x richtige Option, 2x falsche Option oder 2x richtige Option und 1x falsche Option
				- Wenn man sich entschieden hat für eine Option, loggt man sie mit einem Klickfeld im Dialogfenster ein, dann wird im Falle einer der richtigen Option diese übernommen und eine Erklärung wird gegeben, warum das eine gute Option war!
				- Entscheidet man sich für die falsche Option, greift der MC ein und erklärt einem warum das keine gute Idee wäre, das zu verwenden, dann wieder zurück und man kann eine neue Option auswählen
				- danach wandert das Codesnippet mit dem geänderten Code zurück in die Mitte und die Flagge ändert sich zu grün
				- hiernach kann man weitere Flaggen anklicken, bis man alle durch hat
	- Das gleiche Spiel für jeden NPC der Code hat, danach ist die Tagesaufgabe abgeschlossen und man kann wieder nachhause gehen

> 🎓 **Didaktische Anmerkung — Zentrale Quest des Spiels (MVP): Zusammenspiel aller vier Theorien**
> Dieses Rätsel ist die am weitesten ausgearbeitete und bereits umgesetzte Lernmechanik des Spiels und eignet sich gut, um alle bisher behandelten Theorien an einem Beispiel durchzudeklinieren:
>
> - **Kognitivismus (Problemstellung statt Belehrung):** Der NPC präsentiert kein fertiges Wissen, sondern ein **Problem** ("ich komme nicht weiter") – der Lehrende/NPC agiert als Tutor, der um Hilfe bittet, nicht als Vortragender. Der Spieler muss den Code aktiv verarbeiten und eigenständig Muster (Code Smells) erkennen, bevor überhaupt Lösungsoptionen angeboten werden.
> - **Scaffolding (kognitive Entlastung):** Die Option, sich die Flaggen vom MC aufdecken zu lassen, verhindert Frustration ("Suppe an die Wand werfen") – ein bewusst eingebauter Hilfe-Mechanismus, der die Aufgabe lösbar hält, ohne die eigentliche Lernaufgabe (die Bewertung der drei Lösungsoptionen) vorwegzunehmen.
> - **Konstruktivismus – Rekonstruktion:** Die drei Alternativvorschläge sind **bestehendes Fachwissen** (typische Refactoring-Patterns), mit dem sich der Spieler aktiv auseinandersetzen muss – er konstruiert nicht "from scratch", sondern **rekonstruiert**, indem er vorgegebene Lösungsansätze bewertet, begründet auswählt und mit seinem (in den Vortagen aufgebauten) Verständnis von "gutem Code" abgleicht (Viabilitätsprüfung: "welche Idee könnte wohl passen?").
> - **Behaviorismus – unmittelbare Verstärkung:** Jede Entscheidung erhält **sofortiges Feedback** (richtige Wahl wird übernommen + erklärt, falsche Wahl wird durch den MC korrigiert). Anders als reiner Drill bleibt hier aber die **Begründung** zentral – die Verstärkung ist an Verständnis gekoppelt, nicht nur an "richtig/falsch", was den Übergang vom reinen Behaviorismus zum Kognitivismus markiert.
> - **Wiederholung als Transferübung:** Dasselbe Mechanik-Muster wird für **jeden Code-NPC** wiederholt. Didaktisch ist das keine bloße Drill-Wiederholung, sondern eine **Generalisierungsübung**: Der Spieler überträgt das zuvor gelernte Prinzip ("worauf achte ich bei schlechtem Code") auf neue, unbekannte Fälle – ein zentrales Ziel des Kognitivismus (Musterbildung über den Einzelfall hinaus).
> - **Motivation/SDT:** Jeder NPC bittet **persönlich** um Hilfe – das aktiviert das **Anschlussmotiv** und das SDT-Grundbedürfnis der **sozialen Eingebundenheit**. Kompetenzerleben entsteht durch die klare, erklärte Rückmeldung nach jeder Entscheidung. Autonomie bleibt gewahrt, da der Spieler frei zwischen drei Optionen wählt, statt eine einzige vorgegebene Lösung abzutippen.

##### ==Tag 4== (Freitag) -> Ende & Verabschiedung
- Beim Betreten des Büros am Freitag stellt der Spieler fest, dass das Büro komplett aufgeräumt ist und so eine optische Ruhe eingekehrt ist. NPCs arbeiten normal, es muss kein metaphorisches Feuer gebändigt werden und der Büro Alltag geht eines ungewohnt neuen Ganges. Gelgenheit an den Spieler sich von allen NPCs zu verabschieden, jeder NPC hat Dialog welcher in eine Richtung von "Es ist alles so viel besser seit du da bist" angepasst auf die jeweilige Persönlichkeit des NPCs und wie sehr der Spieler dem jeweiligen NPC geholfen hat
	- Bei NPCs mit viel unterlassener Hilfeleistung nur Kommentar a la "Alles ist ein bisschen anders, seit du hier bist. Ich verstehe noch nicht ganz, warum ich jetzt hier sitze und was PersonX neben mir soll, aber es wird bestimmt Sinn ergeben"
- Man darf rumlaufen und mit allen noch reden, sobald man zu Mike Gefängnis geht und mit ihm redet, wird der Finale Dialog eingeleitet, welcher dazu führt, das der MC befördert wird, permanent eingestellt wird, seine herausragende Leistung gelobt wird 
	 - Alternatividee: Mike Gefängnis hat dem nichtsmehr hinzuzufügen, geht einfach spontan in Rente oder entscheidet sich unter dem MC zu arbeiten, MC wird neuer Chef des Büros
		 - Roll Credits
- Alternatividee/Idee obendrauf: All das und es findet im Sinne von SCRUM eine Retro statt, bei der die NPCs viel dialoglastigen Input über den Verlauf des Spiels/der Woche geben können
	- Kontra: Dialoglastig, nicht TikTok Brain genug - wenn so dann muss der Dialog wirklich reinballern so wie in Disco Elysium
	- Wäre auch süß das über alles drüberlegen zu können, also die ersten Tage sind Sprintplannung und Dailies mit drin, da müsste alles wieder aber banger Dialog sein, keiner will ein Tutorial HowToScrum Dialog lesen

> 🎓 **Didaktische Anmerkung — Abschluss: Verstärkung, Reflexion und Grenzen extrinsischer Motivation**
> Tag 4 übernimmt didaktisch die Funktion des **Lernzielabschlusses und der Ergebnissicherung**:
> - Die individualisierten Abschieds-Dialoge sind eine **personalisierte, sozial vermittelte Verstärkung** (Behaviorismus) des über die Woche gezeigten Verhaltens – wer viel geholfen hat, bekommt explizites positives Feedback, wer wenig geholfen hat, ein spürbar schwächeres/uneindeutiges. Das spiegelt konsequent den tatsächlichen Spielverlauf und vermeidet eine pauschale "Happy End für alle"-Verstärkung, die den vorher aufgebauten Kompetenz-Bezug entwerten würde.
> - Die **Beförderung/Festanstellung** ist ein klassischer **extrinsischer Belohnungsreiz** am Ende der Lernerfahrung. Aus SDT-Sicht ist das unproblematisch, solange die Motivation über die Woche hinweg primär **intrinsisch/autonomiegestützt** aufgebaut wurde (siehe Tag 1–3): Eine extrinsische Belohnung am Ende gefährdet die intrinsische Motivation laut SDT vor allem dann, wenn sie als **kontrollierend** erlebt wird (Belohnung *für* bestimmtes Verhalten, das sonst nicht gezeigt worden wäre) – hier ist sie aber eher eine **informative Bestätigung** bereits selbstbestimmt erbrachter Leistung, was die Motivationsqualität nicht untergräbt.
> - Die optionale **SCRUM-Retro** wäre die einzige Stelle im Konzept, an der **Dekonstruktion** im Sinne Reichs *im Spiel selbst* (statt nur danach in der Lehrveranstaltung) stattfinden könnte: Die NPCs könnten hier explizit Lücken, Alternativen oder Widersprüche zur vom Spieler gewählten Lösung aufzeigen und damit einen reflexiven Abschluss des Lernprozesses ermöglichen, bevor der Lerntransfer nach außen (Uni-Alltag) erfolgt. Didaktisch wäre das eine wertvolle Ergänzung – der im Dokument notierte Kontra-Punkt (zu dialoglastig) ist dabei ein reines Umsetzungs-, kein Konzeptproblem: Eine kurze, prägnante Retro würde die fehlende Dekonstruktions-Perspektive im Spiel selbst schließen, ohne die Pacing-Anforderungen zu verletzen.
> - Der Umstand, dass Tag 0 und Tag 4 laut den Original-Anmerkungen "bewusst klein gehalten" werden sollen, unterstützt den oben beschriebenen Spannungsbogen: Ein niedrigschwelliger Einstieg und ein kurzer, aber emotional dichter Abschluss rahmen die drei intensiven Kerntage (Konstruktion, Rekonstruktion, Anwendung), ohne die Motivation an den Rändern durch Überforderung (Anfang) oder Belanglosigkeit (Ende) zu gefährden.

___
##### Anmerkungen
Tag 1 potentiell zu wenig Inhalt, unausgeglichen vgln mit Tag 2 & 3
Tag 0, 4 sollen bewusst klein gehalten werden um Glockkurve zu haben in den Inhalten

___

## Nebenquest Ideen (größtenteils unausgearbeitet)
- Man versucht durch Dialogbäume noch nebenbei verschiedene Streitgespräche zu lösen von Interpersonellen Konflikten zwischen der NPCs
	 - dadurch Vertiefen der Bindung zwischen Spieler und NPC -> mehr incentive diesen bei den Lernspielen zu helfen
- Kaffemaschine reparieren 
	- wie in jedem guten Büro ist die Kaffeemaschine permanent kaputt

> 🎓 **Didaktische Anmerkung — Motivation (Anschlussmotiv, SDT)**
> Die Nebenquest-Idee macht den motivationalen Mechanismus des ganzen Spiels explizit, der in den Kerntagen nur implizit wirkt: **Bindung zu NPCs erhöht die Bereitschaft, bei den eigentlichen Lernaufgaben zu helfen.** Das ist eine direkte Umsetzung des SDT-Grundbedürfnisses **soziale Eingebundenheit** als Motivationsverstärker – je mehr der Spieler sich den NPCs emotional verbunden fühlt, desto eher wird die Lernaufgabe (Team sortieren, Code reviewen) nicht als Pflicht, sondern als selbstbestimmter Wunsch erlebt, "seinen Leuten" zu helfen.

___

## VL 0
#### Was ist E-Learning?

-> Beschreibung ist schwierig, da man es fast nicht in einem oder zwei Sätzen zusammenfassen kann
-> je nach Schwerpunkt der Definition
	-> Technologieorientiert
	-> Bildungsorientiert
	-> Vermittlungsorientiert
	...
-> Verbindung von verschiedenen Lehrformen, indem man sie digitalisiert
-> "Wir sehen E-Learning als zusammenfassenden Begriff für **Lehr-, Lern-** und damit verbundene **Organisationsprozesse**, die auf der Nutzung von **Computertechnologie** oder einer Kombination von **Computer- und Netzwerktechnologie** beruhen."

#### Was ist lernen?

Beschreibt den Prozess der zur dauerhaften Veränderung des Wissens oder Verhaltens eines Menschen führt. Unabhängig ob intendiert oder inzidentell
-> Grundlage für sich verändernde Umweltbedingungen

#### Was ist Kompetenz?

ECTS: Fähigkeit, Kenntnisse, Fertigkeiten sowie persönliche, soziale und methodische Fähigkeiten in Arbeits oder Lernsituationen und für die berufliche und/oder persönliche Entwicklung zu nutzen
-> Bildung wurde von Inputorientiert (wie viel / was) zu Kompetenzorientiert (was kann die Person am Ende tatsächlich)

#### Was sind Lerntheorien?

Der Versuch, Lernbedingungen und Lernerfolge systematisch in unterschiedlichen Kontexten zu **beobachten** und **analytisch** zusammenzubringen

#### Welche Lerntheorien gibt es ?
- Behaviorismus
	- Lehrer steuert von außen (Reiz-Reaktion)
- Kognitivismus
	- Lehrer begleitet aktives Denken (Tutor)
- Konstruktivismus
	- Lehrer ermölicht eigene Konstruktion (**wie** der einzelne im sozialen Kontext Wissen konstruiert)
- Konnektivismus
	- **wo/wie** der Austausch über Wissen stattfindet

#### Was ist (**Sozial-**) Behaviorismus?

lernen erfolgt durch Input-Output Relation (**Blackbox** in der Mitte)
- Durch ersten und zweiten Weltkrieg wirklich groß geworden, als theoretisches, wirkliches Wissen
-> Man knüppelt Wissen in die Lernenden rein und hat "klare Wahr-Falsch Antworten"

#### Was ist Skinners Forschung zu Behaviorismus?

Skinner meint:
Lernen  = Verhaltenänderung äußerer Reize - nicht durch nachdenken (deswegen Blackbox)

1. Stimulus -> äußerer Reiz (**Lehrer stellt Frage**)
2. Antwort -> Person reagiert (**anwtortet auf Frage**)
3. Verstärkung -> positive Reaktion (**gute Note**)
4. Person wiederholt Verhalten -> Lernen hat stattgefunden

==Lernen ist nicht inneres/mentales, sondern die Reaktion auf äußere Reize (Belohngungen, Noten)

#### Was ist die Rolle des Lehrenden im Behaviorismus?

- autoritärer Experte, gibt Reaktion zurück (Verstärkung des lernens)

#### Was ist Kognitivismus?

1. Informationsverarbeitung im Kopf
	1. Anders als beim behaviorismus passiert Lernen durch **Aufnahme**, **Verarbeitung** und **Speicherung** anstatt durch Reiz->Reaktion
2. Lernende ist aktiv, nicht passiv
	1. verarbeitet Informationen selbstständig mit eigenen (vorhandenen) Wissen
3. Lernen = handeln, nicht nur zuhören
	1. aktives Lösen von Problemen, nicht nur Aufnahme von Problemen

- Lernen ist ein komplexer Prozess

**Merksatz**: Lernen passiert im Kopf (Verarbeitung von Informationen), Lernende sind aktive Denker

![[Bildschirmfoto 2026-09-10 um 11.50.26.png]]

#### Welche Rolle hat der Lehrende im Kognitivismus?

- **Tutor / Mentor**
- **beobachtende** Rolle, die Hilfe anbietet

#### Aspekte einer Lernumgebung im Kognitivismus

- Aufgabe ist ein Problem statt fertiger Inhalte
	- Lehrer gibt keine Lösung vor, sondern ein Problem das man durchdenken muss
- Komplexe, realitätsnahe Umgebung
- Raum für eigene Lösungsversuche

**Merksatz**: Beruffsschule statt normaler Schule
-> Problem wird anhand Fallbeispiel praäsentiert, anstatt an isolierten Übungssätzen

#### Grundannahme und Prinzipien des Konstruktivismus

Lernen ist ein aktiver, individueller Konstruktionsprozess auf der Basis von (vor-) Erfahrungen
- Lernen ist nicht steuerbar (individuelle Erfahrungen und Entscheidungen)
- Wissen ist nicht vermittelbar (nur Möglichkeiten zum Lernen können geschaffen werden -> Lernen aus Erfahrungen mit komplexen Problemen)
- **Individuum erzeugt sich seine eigene Realität**
- Verstand als Netzwerk

**Grundannahme**:
Es existiert keine objektive wahrheit, die didaktisch vermittelt werden muss
![[Bildschirmfoto 2026-09-10 um 12.32.35.png]]


**Merksatz**: Wissen kann man nicht "übergeben" – jeder konstruiert sich seine eigene Realität selbst, basierend auf Vorerfahrungen. Der Lehrer kann nur die Bedingungen dafür schaffen, nicht das Wissen direkt vermitteln

1. Wissen ist nicht vermittelbar (man kann nur Lerngelegenheiten schaffen, das Lernen passiert im Kopf des lernenden selbst)
2. Keine direkte Verbindung zur "echten" Realität (jeder Baut sich sein Bild der Realität selbst auf)
3. Neues Wissen zerstört nicht altes, sondern baut darauf auf (neues wird mit bereits bekannten verknüpft)
4. **Viabilität = zentrales Bewertungskriterium**
	1. statt richtig/falsch fragt man, ob das neue wissen zu meinen bisherigen Vorstellungen passt

#### Was ist die Rolle des Lehrenden im Konstruktivismus *nach reich* mit drei Grundaufgaben?

- verantwortlicher Coach
- Merksatz: Lehrender nach Reich = Ermöglicher, Spiegel und Provokateur zugleich – er lässt Erfahrungen zu (Konstruktion), zeigt andere Sichtweisen (Rekonstruktion) und stellt Bestehendes infrage (Dekonstruktion). Nicht: Stoff präsentieren, sondern: Reflexion und aktive Auseinandersetzung ermöglichen.

- bei der **Konstruktion**: Lehrer schafft Freiräume für eigene Erfahrungen
- bei der **Rekonstruktion**: Lehrer repräsentiert bestehendes Wissen / fremde Perspektiven zum Nachvollziehen
- bei der **Dekonstruktion**: Lehrer konfrontiert mit Alternativen und Lücken 

#### Aspekte für Lernumgebung im Konstruktivismus

- bezug zur komplexen, realitätsnahen Problemen
	- komplex = Thema aus mehreren Blickwinkeln untersuchen
- Bezug zur eigenen Lebens- / Berufsrealität
- Möglichkeiten zur selbstständigen Untersuchung (mehrere Lernmaterialien

#### Was sind die Grundzüge der Bildungsorientierten Didaktik?

- die Mischung aus Konstruktivismus und sozialwissenschaftlichen Ansätzen
	-> mehr das psychologische als philosophische anschauen, wenn es um lernen geht
- **Ziel** ist das **Bildungserleben**
	- Bildungserleben findet im sozialen Kontext statt (Bildungsraum, bspw. Klassenzimmer)
- **eplorative Neugier** ist Grundprinzip dahinter
	- man sucht aus eigener Interesse Wissen über Thema
- Ziel des Lehrenden ist es, den Bildungsraum zu schaffen

#### Feststellungen Konnektivismus

- Lernen ist ein lebenslanger Prozess
- Informelles lernen, außerhalb informeller Bildungseinrichtungen, ist maßgeblicher Aspekt
	-> Menschen 
- **traditionelle Lerntheorien haben durch Technologie ausgedient**
	- es geht mehr um Netzwerke zur Wissensbeschaffung, anstatt ums auswendig lernen

#### (daraus folgenden) Prinzipien im Konnektivismus

Individuum ist Teil eines Wissensnetzwerkes
- Wissen = Netzwerke aus Knoten
- Schlüsselkompetenz: Verbindungen erkennen & knüpfen
- Individuum <=> Organisation als Wechselspiel

#### Aspekte einer Lernumgebung im Konnektivismus

- Informationen als Netzwerk bereitstellen
- Zugriff auf große Informationsmenge (Internet etc)
- Austausch fördern - mit anderen Lernenden UND Experten
- Selbstständiges, flexibles Lernen ermöglichen

#### Konzept hinter Motivation? (def)

"… eine aktivierende Ausrichtung des momentanen Lebensvollzugs auf einen positiv bewerteten Zielzustand"

-> etwas aktuelles / momentanes
	ensteht wenn ein Motiv durch eine Situation angeregt wird

#### Konzept hinter Motiv?

- Grundlage von Motivation
- ist eine **"überdauernde Handlungsbereitschaft einer Person"**
	- die grundsätzliche Bereitschaft einer Person
- unterschiedliche Arten von Motiven
	- Leistungsmotiv
	- Machtmotiv
	- Anschlussmotiv (Kontakte finden)

#### Bezug zwischen Motivation/Motiv und Lernen

Lernen ist (v.a. ab Kognitivismus) ein **aktiver Prozess** -> braucht Motivation als Antrieb


#### Was die ist SDT? Welche Rolle spielen psychologische Grundbedürfnisse?

![[raspberry-sync/7 - Sources/images/Bildschirmfoto 2026-09-13 um 14.19.55.png]]

	- Intrinsische Motive werden durch Vorerfahrung beeinflusst
	- Motive liefern Energie für aktiven Zustand (Motivation)

![[Bildschirmfoto 2026-09-13 um 14.24.08.png]]



==SDT behauptet, dass wir die Handlungen durchführen, da wir durch 3 Grundbedürfnisse angetrieben werden

1. Autonomie
	1. Pro: Identifikation von Selbstverständnis, Werten mit Handlungen
	2. Contra: kontrolliert und gedrängt werden
2. Kompetenz
	1. Pro: Effektive Interaktionen mit Umwelt
	2. Contra: Überforderung
3. Soziale Angebundenheit
	1. Pro: Bedeutung von anderen Personen & einem selbst kennen/anerkennen
	2. Contra: Isolation

**GUT ZU WISSEN**:
- werden die drei Grundbedürfnisse erfüllt, entsteht **intrinsische** Motivation
- wenn nicht, bleibt Motivation aus oder wird **extrinsisch**

#### Wieso ist Motivation die Grundlegende Voraussetzung für lernen?

-> lernen ist ein aktiver Prozess -> aktive Prozesse brauchen einen Antrieb, der sie auslöst und aufrechterhält -> Motivation ist dieser Antrieb
-> ohne diesen Antrieb findet keine aktive Auseinandersetzung mit der Umwelt statt -> lernen würde erst gar nicht zustande kommen, wenn man keinen Antrieb (d.h. Motivation) hat


#### Wieso gibt es mehrere Modelle ausgehend von STD über Motivation?

==Grundproblem

Motivation ist zu komplex, als dass man sie in einem Modell vollständig erklären könnte

- Warum wird intrinsische Motivation manchmal untergraben (z. B. durch Belohnung)? → braucht eigene Teiltheorie (Cognitive Evaluation Theory)
- Wie wird ursprünglich extrinsische Motivation zu "eigener" Motivation (Internalisierung, z. B. Hausaufgaben machen, weil man's selbst als sinnvoll ansieht)? → andere Teiltheorie (Organismic Integration Theory)
- Warum unterscheiden sich Menschen grundsätzlich darin, wie autonom sie generell handeln (Persönlichkeitsunterschied)? → wieder eine andere Perspektive (Causality Orientations)
- Welche Grundbedürfnisse müssen erfüllt sein, damit überhaupt Motivation entsteht (Autonomie, Kompetenz, Verbundenheit)? → Basic Psychological Needs Theory
- Welche Ziele/Inhalte fördern gute vs. schlechte Motivation (z. B. Geld verdienen vs. persönliches Wachstum)? → Goal Contents Theory
- Wie beeinflussen Beziehungen zu anderen Menschen Motivation? → Relationships Motivation Theory

Nur das Zusammenspiel mehrerer Teilansätze ergibt ein großes Bild, da Motivation von vielen kleinen Faktoren beeinflusst wird (deswegen die Beispiele obenx)


#### Beeinflussenden Faktoren auf intrinsische Motivation nach Cognitive Evaluation Theory

==Kernfrage==: **Wie beeinflusst das soziale Umfeld intrinsische Motivation?**

- intrinsische Motivation in Verbindung mit Kompetenz- und Autonomiebedürfnissen: 
  Erfüllung / Erfahrung fördert intrinsische Motivation
- soziale Eingebundenheit ist für intrinsische Motivation eher zurückgestellt

#### Spektrum extrinsischer Motivation durch Organismic Integration Theory

Extrinsische Motivation: wenn man etwas **nicht** durch den **Wert der Handlung selbst** tut, sondern für alles andere

`Fokus`: geht in Auseinandersetzung mit dem Prozess der Integration von sozialen und kulturellen Vorgaben

Man unterteilt die Motivation in drei Kategorien: Amotivation, extrinsische Motivation & intrinsische Motivation. Extrinsische Motivation wird in 4 Unterkategorien eingeteilt:
	externe-
	introjizierte-
	identifizierte-
	integrierte Regulation
Welche von sehr extern zu sehr intrinsischer Motivation reichen
==-> IN PRÜFUNG ANHAND VON BILD ERKLÄREN

#### Orientierungen, die von Causality Organisations Theory charakterisiert werden

==Kernfrage==:
Warum sind Menschen im gleichen sozialen Kontexet **unterschiedlich Motiviert**?

Je nach Orientierung werden psychologische Grundbedürfnisse mehr oder weniger unterstützt

Ansatz: 3 Orientierungen, die Handlungen & Motivation charakterisieren
- Autonomieorienterung
- Kontrollorientierung
- Unpersönliche Orientierung

#### Formen von Bestrebungen nach der Goal Contents Theory

==Kernfrage==: wie entstehen langfristige Ziele in Relation zu Grundbedürfnissen und wie wirken sich diese auf Wohlbefinden aus?

- Man untersucht **intrinsische** und **extrinsische** Bestrebungen
- Ziele lenken das Verhalten
-> **BILD**

#### Rolle von Autonomie in menschlichen Beziehungen entsprechend der Relationships Motivation Theory

==Kernfrage==: Welche Rolle spielt Autonomie für das gelingen von sozialen Beziehungen neben sozialer Einbindung als Grundbedürfnis?

- **autonome Motivation** in **sozialen Beziehungen**: authentische Bereitschaft sich an Beziehungen zu beteiligen
- soziale Interaktionen werden als angenehm empfunden, wenn partner Autonomie, Kompetenz und Eingebundenheit empfinden
- Grundlage: Erfüllung von Grundbedürfnissen, insbesondere Unterstützung von Autonomieerleben ist Grundlage positiver zwischenmenschlicher Beziehungen
- autonomie und soziale Eingebundenheit sind in zwischenmenschlichen Beziehungen aneinander gekoppelt
	- bspw. Versuch des Erlangens von sozialer Eingebundenheit kann sich negativ auf Autonomie des Partners auswirken

#### Elemente die zur Wahrnehmung und Erfüllung psychologischer Grundbedürfnisse nach Basic Needs Theory beitragen

==Kernfrage==: Was trägt zur Wahrnehmung der Befriedigung oder Unterdrückung psychologischer Grundbedürfnisse bei?

- wenn Ziel die allgemeine Motivation ist -> Ziel der unterstützenden Umwelt
- **Autonomie**: Förderung selbstbestimmten Verhaltens hat gleichzeitig positiven Einfluss auf andere Grundbedürfnisse
	- wenn Wahlmöglichkeiten erkennbar sind, können diese zur Wahrnemung von Autonomie - intrinsischer Motivation beitragen
- **Kompetenz**: Streben nach Effektivität des eigenen Handels
	- häufige Einschätzung durch: Vergleich mit anderen, Feedback
- **Soziale Angebundenheit**: Bedürfnis nach enger emotionaler Bindung & Aufrechterhaltung dieser

Erfüllung von Grundbedürfnissen wirkt sich positiv aus:
- Aufmerksamkeit
- Anstrengungsbereitschaft
- Zielorientierung


## VL 1

#### Grundidee zur Verwendung von Spielen im Lehr-Lern-Kontext

Nennt sich Gameful Learning
- allgemeine Ziele
	- Motivation durch Spielelemente/-techniken/-dynamiken
	- Förderung des Kompetenzerwerbs durch Anwendungsorientierung, Interaktivität
	- Individualisierung des Lernprozesses
- Grundidee hinter Verwendung von Spielelementen
	- Spielen ist **intrinsisch** mit lernen verbunden
	- Ziel und Wirkung von Spielen ist Engagement und Motivation
	- viele von Spielen entwickelte Kompetenzen/Anforderungen entsprechen Anforderungen des Bildungssystems

zwei Arten von Gameful Learning:
- Game-Based Learning
- Gamification

#### Konzepte Gameful Learning und Gamification erläutern

**Gameful Learning** beschreibt per se **alles**, Serious Games, Gamification,... sind nur Kinder davon

Gamification: "**Verwenden von Spielmechanismen in nicht-spielerischen Kontext**"
- nutzen von effekten auf Motivation, Engagement
Serious Games: "**Digitales Spiel mit definierten Lernergebnissen**"
- Unterhaltungsaspekt
- multimediale Präsentation, Interaktivität
- Gefahr: Wegfallen des Spielelements, verstarrung auf den Lernaspekt

#### Beispielhafte Möglichkeiten, Motivation durch Spielelemente zu steigern

Durch Verwendung von Spielelementen:
- Steigende Beteiligung
- Selbstständigkeit
- Wissensaufnahme
- Kompetenzentwicklung
- Zusammenarbeit

Verwendungen für Spielelemente:
- **Autonomie**: Wahlmöglichkeiten mit (erkennbaren) Konsequenzen, Abzeichen, Bestenlisten
- **Kompetenz**: Punkte, Leistungsgraphen, Bestenlisten
- **Soziale Eingebundenheit**: Nicht-Spieler-Charaktere & Avatare, Narrativ ("Sinnstiftende Erzählung, die beeinflusst wie die Umwelt wahrgenommen wird")

#### Beurteilen Sie die Möglichkeiten und Grenzen der Motivation durch Spiele und Spielelemente

- wenn das Spiel kacke ist, ist es kacke
	- Spielelemente können nichts daran ändern
- zu viel Einsatz ist schädlich -> Überstimulation
- ...

#### Designprinzipien für Entwicklung von Spielen auf Basis von STD

Man möchte Grundbedürfnisse im Spielfluss nicht vernachlässigen -> allgemeine Designhinweise für Autonomie, Kompetenz & sozialer Eingebundenheit

#### Möglichkeiten der Auswirkung von Spielelementen auf akademische Leistung

**Leistung**: das direkte Verhalten das beobachtet und evaluiert werden kann
Messen von **Wissen** und **Fähigkeiten**

Man unterscheidet erst die Einflussfaktoren auf Leistung
- Personalfaktoren
	- Wissen
	- Fähigkeiten,...
- Umweltfaktoren
	- Merkmale von Aufgaben
	- Anforderungsniveau,...

Beitrag zur Erfüllung von Grundbedürfnissen ist Beitrag zum effizienten Handeln
- **keine Garantie von Leistungsverbesserung durch Gamification feststellbar**

#### Skizzieren von Konzept "Spiel" - Beurteilung von Unschärfe des Begriffs

(Ich habe lustigerweise am selben Tag vor dem Lernen darüber nachgedacht, was überhaupt ein Spiel ausmacht)
- Definition ist schwer zu erstellen
- Elemente aus unterschiedlichen Definitionen:
	- Freiwilligkeit des Spielens
	- Ziele
	- Konflikt
	- Regeln
	- Gewinnen & Verlieren
	- Interaktiviät
	- Herausforderungen/Aufgaben
	- Interne Weiterbildung
	- Bindung
	- Geschlossenheit / Systemcharakter
	==was im Endeffekt die 10 Qualitäten eines Spiels nach Schell sind==

#### Grundlegende Ziele von Spielen und den Prozess der Entwicklung von Spielideen skizzieren

`Grundlegende Idee`: Spielern **einzigartige** und **langanhaltende Spielerfahrungen** anzubieten

- Ideenfindung ist kreativer Prozess
- Spielerperspektive: Was wollen bestimmte Spieler? Auswirkungen von Mechaniken auf Spieler?
- Designer: Welche Änderungen sind möglich? Welche Abstraktionen?

**Vor Beginn feststellen**:
- Zielgruppen
- Vergleichbare Spiele
- Eigene Motivation
- Grundlegendes Ansprechen von Motiven

#### Rolle vom GDD im Gamedesign- und -developmentprozess

- **Blueprint** für Entwicklung
- **Lebendes Dokument**
	- veränderung möglich & gewünscht
	- Versionsgeschichte erhalten

Wieso GDD?
-> Sortieren von Designgedanken
-> Raum für Kritik, hinterfragen
-> **gemeinsame Vision**
-> als **Entwicklungsleitfaden**

#### Elemente von GDD

- Ziele
- Idee
- Zielgruppen
- Win-Condition
- Vision
- `Spielelemente`
- `Gameplay`
- `Mechaniken`
- `Sounddesign`
- `technische Anforderungen`

#### MDA Ansatz mit Perspektive von Spieler und Designer

==MDA== = Mechanics-Dynamics-Aesthetics
- Systematischer Ansatz für Gamedesign und -produktion
- **Besonderheit Spiele**: Art und Weise des Konsums ist unvorhersehbar

MDA macht den Ansatz der Aufteilung von Spielen in die 3 Bestandteile - Regeln - System - Spaß

- Mechaniken: Datenrepräsentation, Algorithmen des Spiels
- Dynamiken: Verhalten der Mechaniken zur Laufzeit in Relation zum Spielerinput und Mechaniken-Output
- Ästhetik: Angestrebte emotionale Reaktionen der Spieler bei der Interaktion mit dem Spielsystem

**Designperspektive**
- Mechaniken erzeugen Systemverhalten (Dynamiken), das zu einer emotionalen Antwort des Spielers führt (Ästhetik)
**Spielerperspektive**
- Ästhetik bestimmt das Look & Feel, wird durch wahrnehmbare Dynamiken und verwendbare/ansprechbare Mechaniken erzeugt
=> man muss beide Seiten betrachten, um **Probleme beim Spieldesign** zu vermeiden

#### Beispiel Zusammenwirken von Mechaniken und Spieler-Input zu Dynamiken sowie das Zusammenwirken zu Ästhetik

==Kernaussage==: Mechaniken sind statische Regeln/Algorithmen. Erst durch Spieler-Input entstehen zur Laufzeit Dynamiken (beobachtbare Systemverhalten). Diese dynamiken erzeuge beim Spieler eine emotionale Reaktion - die Ästhetik. 

Wichtig: **Kausalkette**
- Mechanik **+** Input   **->**   Dynamik   **->**   Ästhetik

#### Grundkonzept Game-Loop mit Bezug zu Grundeigenschaften von Spielen

- wiederholbare Kette von (Spieler-) Aktionen
- oft sehr einfach, aber abstrakt
	- alle Regeln, Elemente, Eigenschaften müssen Clore Loop unterstützen
- **Allgemeiner Aufbau**:
	- Zielsetzung
	- Aktivität
	- Belohnung
	- Investition
	- Wiederholung

#### Rolle von Zufall und Glück in Bezug auf MDA Ansatz

- **Ungewissheit durch Zufall erzeugt Spannung**
- Problem: (echter) Zufall ist nicht kontrollierbar
- MDA Ansatz: Was ist die Erfahrung die entsteht?
	- Einschränkung/Kontrolle von Zufall kann zu angestrebter Erfahrung führen
	- Spieler nimmt den Effekt und nicht die Zufallsmechanik war

#### Geistige Beweglichkeit und körperliche Geschicklichkeit in Bezug zu MDA Ansatz

Fähigkeit des Menschen, "richtige" Entscheidungen zu finden (geistige Beweglichkeit) und diese dann zum richtigen Zeitpunkt korrekt umzusetzen (körperliche Geschicklichkeit)

#### Rolle von Spielmechaniken, Bezug zu Spielen als  interaktives System

- Entscheidungen sind Interaktionsmöglichkeiten des Spielers mit Spielsystem / Welt
- Entscheidungen zum Abwägen von Optionen, Belhnungen, Risiken 
	-> Interaktion
- **Normalfall** Spieler wäühlt wählt einfachsten Weg, der am schnellsten zum Ziel / besten Belohnung führt

#### Rolle von Belohnungen und Bestrafungen

Es ist schwierig zwischen Belohnung und Bestrafung auszubalancieren
-> man braucht klare Kommunikation der Ziele & Anforderungen das das Erreichen der Ziele

Belohnungen und Bestrafungen sind **abhängig von Zielgruppen** und deren **Motivation** -> wie wird bei denen Spaß erzeugt?

#### Aufbau von Spielen als Raum (Level Design)

- Auswahl & Anordnung ist relevant
	- Elemente sind fest (wie Layout der Spielwelt) oder beweglich
	- kombinieren sich zu Spielwelt (Physik, Aussehen, Story etc.)
- Elemente werden mit Mechaniken versehen, erzeugen Dynamiken -> Elemente sind Symbole
- Spielwelten haben nicht nur ästhetischen Aspekt
	- Zusammenspiel mit Mechaniken & Dynamiken

#### Integration von Spiel & Geschichte

![[Pasted image 20260917083409.png]]

-> "**String of Pearls**
- Noninteraktive Geschichte werden dargestellt
- zwischen diesen Elementen gibt es Perioden freier Kontrolle mit festgelegten Zielen

Kritik: Grad der Interaktivität

Alternative (nach Schell): "**Story Maschine**"
- Spiel liefert Möglichkeiten für interessante Ereignisse
- Geschichten bilden eine zusammenhängende Einheit

![[Pasted image 20260917083823.png | 300]]


- Storystack
![[Pasted image 20260917084041.png]]

Fantasy: Grundlegende Emotionen und Vorstellungen der Spieler im Spiel (**wer möchte der Spieler sein?**)
Action: Möglichkeiten zum Ausleben der Vorstellungen im Spiel
Economy: Belohnungen & Bestrafungen für Aktionen im Spiel
World: Belohnungen & Bestrafungen für Aktionen im Spiel
Story: Handlung

**Geschichten haben das Ziel, Spieler zu motivieren**

#### Drei Formen von Erzählungen in Spielen

- **subtile Erzählung**
	- bspw, durch grafischen Stil (siehe Spiel Limro)
	 ![[Pasted image 20260917084732.png | 300]]

- **lineare Erzählung**
	- Vergleichbar zu klassischen Medien wie Theater, Bücher & Film
	- Spannung notwendig um Spieler zu motivieren
		- Spannung hier: Beziehung zwischen **Anspannung** und **Entspannung**
	- Grundlage für lineare Erzählung sind i.d.R. Konflikte
		- Gefahr, Möglichkeiten auf Sieg oder Niederlage treibt Spielgeschehen voran
	- Geschichte muss nicht linear erzählt sein -> Branching bspw.
- **offene Spielwelten** -> Minecraft, The Forest
	- Freie Bewegung von Spielern in der Spielwelt
	- viele kleine, verteilte Geschichten - nicht linear
	- Geschichte wird oft von Spielern entwickelt

#### Anforderungen an Lernangebote aus dem Bildungssystem

Anforderungen:
1. Bildungssysteme sollen bedarfsgerechte, praxisnahe Angebote offerieren
2. Bildungssysteme sollen flexibles Lernen ermöglichen, sie müssen lernerzentriert sein (Prinzip „my needs, my time, my place“)

Wie geht man damit um?
- Studiengänge müssen sich dynamisch auf gesellschaftliche Entwicklungen anpassen
- Fächer integrieren mehr soft- und interdisziplinäre Skills

#### Ziel von Lernzielaxonomien

Das sind Modelle zur Formulierung von Anforderungen an kognitive Prozesse
- Ordnung nach komplexität und Schwierigkeitsgrad
![[Bildschirmfoto 2026-09-17 um 21.42.13.png | 300]]


Wofür? 
-> Als **Werkzeug zur Beschreibung komplexer Kompetenzerwerbsprozesse**

#### Skizzierung des grundlegenden Aufbaus menschlicher Kommunikation durch Verwendung von Medien

Nach dem Shannon-Weaver Modell erfolgt Kommunikation zwischen Menschen durch simplen Austausch über Informationsverarbeitende Systeme
![[Pasted image 20260917214933.png|300]]

Wenn der Ausgangspunkt jetzt ist, dass Medien primär den der Übertragung von Informationen dienen, konkurriert das mit bspw. den Lerntheorien: Der **Fokus** liegt zu sehr auf dem **Sender**

Dadurch der alternativer Ansatz mit Medien:
- Medien als Mittel zur Umsetzung/**Untersützung des Austauschs**
- Lehrende entwickeln **interaktive Lernmaterialien**

#### Erläuterung Begriff Multimedia

"Multimedia (MM) ist eine Technologie, die verschiedene Medien und Wege verwendet, um bei der Vermittlung von Informationen mehrere Sinnesorgane gleichzeitig anzusprechen. Charakterisierend für eine Multimediaanwendung ist, dass sie mehrere Medien zu einem integralen Gesamtwerk kombiniert. Dabei werden offene, netzwerkartig verknüpfte, nicht-lineare Strukturen verwendet."

#### Skizzierung vom Shannon Weaver Modell, Probleme unter Betrachtung von Humankommunikation

- Informationsübertragung zwischen Informationsverarbeitenden Systemen
- allgemeines Schema:
![[Pasted image 20260917214933.png|300]]

Störung kann bei Übertragung auf dem Kanal Medium auftreten
![[Pasted image 20260917215932.png|600]]

![[Pasted image 20260917215958.png|600]]

- Shannon Weaver kommt aus der Nachrichtentechnik -> eher mathematisch mit dem Fokus auf die vollständige Datenübertragung
- Humankommunikation legt Fokus auf die Botschaft, deren Informationen und Bedeutung, die Menschen versuchen zu übertragen
	- => beachtet shannon weaver nicht

#### Aufbau menschlicher Kommunikation nach Watzlawick

>"Menschliche Kommunikation ist verbale oder nonverbale Interaktion zwischen mindestens zwei Personen"
![[Pasted image 20260917220536.png|400]]

- er betrachtet Kommunikation als Austausch / Interaktion 
	- -> Kette von Aktion & Reaktion

#### 5 Grundsätze der Kommunikation nach Watzlawick

1. man kann nicht nicht kommunizieren
2. jede Kommunikation hat einen Inhalts- und einen Beziehungsaspekt
3. Die Natur einer Beziehung ist durch die Interpunktion der Kommunikationsabläufe seitens der Partner bestimmt
4. Menschliche Kommunikation bedient sich analoger und digitaler Modalitäten
5. Kommunikation ist symmetrisch oder Komplementär






## Nicht aufgeschriebene Fragen

- [ ] Erläutern Sie den Zusammenhang zwischen Information und Wissen und stellen Sie einen Bezug zum Konzept "Lernen" her.
- [ ] Aufgaben nach Reich im Konstruktivismus -> einfach noch nicht so ganz verstanden
- [ ] lerntheorien auf jeden fall auf unser spiel mappen -> in Dokumentation schreiben (dass ich das einfach nachlesen kann)
- [ ] Erläutern Sie Ansätze der Integration von Geschichten und Spelelementen
- [ ] alles ab dem Zweck von Lernzielaxonomien (VL2)


### Noch machen
- kompetenz, motiv, motivation, wissen, information, lernen solche sachen als anki aufschreiben
- das selbe bestenfalls mit den lerntheorien


![[Pasted image 20260415104736.png]]

# Klappentext

Der erste Tag im neuen Job, du bist maximal nervös...
Wie sind die Kollegen, wie ist der Chef?
Bist du zu over- oder underdressed?
Wirst du dich schnell zurecht finden?

all das und mehr geht dir durch den Kopf bist du das Büro dann entlich betrittst und dir nur denkst.... "?!"

# Grundlegendes

 Ziel: Ein Spiel zu entwickeln, welches auf humoristische Art und Weise einem die Grundkonzepte von agilen Softwareentwicklungsprozessen näherbringt. Dies beinhaltet u.a. Sachen wie UML, Git, einfache Algorithmen, wie man Meetings strukturiert, SCRUM. Lerne anhand des Spiels die spezifischen Prozesse und warum diese eingesetzt werden und warum sie notwendig sind. Zeigen anhand von Beispielen warum es funktioniert, Vorher Nachher Geschichte. 
Motivation dahinter: Wir kennen schlechte Prozesse und wir wollen es besser machen und es spielerisch weitergeben 

## Zielgruppe

aktuelle Überlegung ist (durch Refactoring-Aufgabe angestoßen) Semester 3-4 eines durchschnitts-Informatikstudenten an der HTWK Leipzig

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


### Levelaufbau

(Resident Evil like, das man durch neue Items neue Bereiche freischaltet)
Anfangs sind Bereiche quasi durch "Dach" oder "Decke" ausgegraut, bzw ausgewandet, sodass man nicht anfangs komplett überfordert wird von dem gesamten Layout. Man schaltet im Storyverlauf, durch Quests oder durch simples reingehen frei, was für Bereiche man sehen kann (eventuell alles einmalige Events, potentiell immer nur der Bereich aktiv in welchem man sich befindet (Einstellungen eventueller Toggle um dazwischen zu switchen))

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


### Irgendwann feststellen das du gar nicht weißt was die Firma eigentlich macht und das Rausfinden

# Erstellung der Tagesabläufe

| Tag | Task                            | Anmerkungen                                          |
| --- | ------------------------------- | ---------------------------------------------------- |
| 0   | Laptop finden                   | Kennenlernen <- Sammeln von Informationen über Firma |
| 1   | Einführung sinnvoller Struktur  |                                                      |
| 2   | UML                             |                                                      |
| 3   | Refactoring                     |                                                      |
| 4   | 🎉 Beförderung / Festanstellung | `Das Büro räumt sich über die Tage hinweg auf`       |

- Technische Klärung wie man Tage in GoDot umsetzen kann 
	- über globale Variable anhand der sich die Notes anpassen
	- (if tag == 0 do xy else z)
- NPCs, Personen die man sieht, Raum etc. sind abhängig vom aktuellen Tag

# Konkreter Tagesablauf/Spielablauf

##### ==Tag 0== (Montag) -> ankommtag (Laptop)

Dialog (Blackscreen Chatbox unten)
- Firma xy ist die bestbewertetste Firma im Landkreis ...
	- Firma hat Preise gewonnen etc.
- Man kommt in die Firma
	- Rezeption begrüßt den Spieler freudenstrahlend

Handlung
- man erhält Chip & Zugangsdaten für Büro
	- Idee: man erhält auf einem Blatt Papier die Email und Passwort für die eigenen Account-Zugangsdaten - der Plot: man ist dann auf einmal als Chef eingeloggt, da er aus versehen seine Credentials aufgeschrieben hat
- Laufliste (was man alles an Material hat), Dokument das Onboarding-Prozess begleitet
- Aufgabe: Rede mit Chef (keine Info wo/wer das ist)
	- mit NPCs reden
	- Welt erkunden (Räume die vorerst irrelevant sind werden ausgegraut)
	- Infos sammeln
- Erste ```Quest```: Laptop finden

Items zum anfassen
- Laufzettel (Buch / Ordner in dem ein Zettel raus steht)
	- dort stehen To-Dos etc., auf der anderen Seite Spinnennetz

```In a Nutshell```
- Man bekommt ein Laufblatt
- da steht geh zum Chef
- Chef weiß nichts davon
- Chef sucht irgendwelche Dokumente
	- Blatt auf dem steht neuer Mitarbeiter etc. den man bekommt
- man erhält seinen Laptop

##### ==Tag 1== (Dienstag) -> Spinnennetz

- Aufgabe: Spinnennetz auflösen, wer mit wem interagiert, wo Schwierigkeiten sind, welche aufgaben von wem übernommen werden

##### ==Tag 2== (Mittwoch) -> UML

##### ==Tag 3== (Donnerstag) -> Refactoring

##### ==Tag 4== (Freitag) -> Ende yay


___
### Todo

- GameDesign Dokument
- KickOffVortrag
-> Aktueller Zustand Projekt, Welche Ziele, ggf individuelle Ziele von allen, Zeitplan, Wie Zeitplan???, Problemquellen, was tun wir?,  Wo Vorlesung integriert


Themen Ideen: 
- Roter Faden rauskristallisieren




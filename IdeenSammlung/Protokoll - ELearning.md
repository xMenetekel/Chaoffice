Datum: 08.05.2026
Teilnehmer: Anne, Conni, Ferdinand, Jan, Matthes
Protokoll: Matthes

# Meeting für gemeinsames GoDot-Intro

Grundlegende Einigung:
Jeder ist im gesamten Spielentwicklungsprozess beteiligt - alle machen alles ein bisschen

Zielgruppe sollte überarbeitet werden:
- aktuelle Überlegung ist (durch Refactoring-Aufgabe angestoßen) Semester 3-4 eines durchschnitts-Informatikstudenten an der HTWK Leipzig

Map soll einen Serverraum erhalten

## Quest erstellen

- Diskussion über Quest die wir erstellen wollen
	- ob quests modular sein sollten oder nicht
	- welche Quest wir gemeinsam für den Start bauen wollen
- Quests im allgemeinen:
	- Refactoring
	- OCL-, UML- und Klassendiagramme erstellen
	- Spinnennetz-Rätsel (welche Person mit wem interagiert)
	- Laptop finden (Anfang)
	```=> Fokus auf Implementierung des E-Learning-Aspektes```
	
Linearer Questverlauf, Spiel ist in Tagen aufgebaut (Tag 0, Tag 1,...), Büro verändert sich Tag für Tag (aufgeräumter, andere (verbesserte) Prozesse etc.)

### Refactoring als Beispielquest

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

## Erstellung der Tagesabläufe

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

### Konkreter Tagesablauf

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

## Teams / NPCs im Spiel

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
	- (Dev) Ops (Lenny)
		- schläft im Serverraum
- Hausmeister (Glen Mathews)
- Sekretär (Men Greasley)
- `Chef` (Mike Gefängnis)
- Hauptcharakter
`(= chef)`

### Beziehungen zwischen Charakteren

![beziehungen](../assets/protokoll/IMG_4277.jpeg)

Legende
- Kreis: sitzen zusammen
- Kreuz auf einfacher Linie: gescheiterte Kommunikation
- Doppel-Pfeil: geht an alle

Hintergedanke: Man will aus dem rechten ist-Zustand zum linken soll-Zustand kommen
-> soll der Spieler herausfinden

### Charaktereigenschaften

- **Chef**: Schreibt immer an alle, nicht an einzelne, liest nie die emails an ihn
- **Hausmeister**: Antwortet immer dem Chef (mit CC an alle)
- **Cornellia, Steffi** reden immer miteinander
- **Men** mit ihm redet niemand, obwohl er alles weiß
- **Annegret** redet mit niemanden, will nur ihr eigenes Ding machen
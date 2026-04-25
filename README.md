Chaoffice Working Title


How to semi sinnvoll Containern und Gitten Erklärung:

`git checkout -b BRANCH_NAME_KANN_SELBER_ERSTELLT_WERDEN`

Alle neuen "Features" die man bastelt werden auf einem neuen Branch geschmissen, dieser cmd setzt einen quasi auf diesen Branch
dann normal, ob man das macht nachdem man lokal neue Sachen erstellt hat und dann auf den neuen "Feature Branch" switched oder zuerst auf den Branch switched scheint keine Veränderung zu haben (korrigiert mich wenn ich falsch liege, aber ich hab immer zuerst geändert und dann geswitchted und es ging alles)

`git add .`
`git commit -m "commit msg"`
`git push`

bei neuem Branch kommt dann die Fehlermeldung das Upstream nicht gesetzt ist, an der Stelle einfach 

 `git push --set-upstream origin BRANCH_NAME_KANN_SELBER_ERSTELLT_WERDEN`

Macht das es auf den Feature Branch im Git geschrieben wird (und falls dieser nicht existiert wird einer erstellt)

Dann ist alles im Terminal erledigt und es geht im actual Git weiter - da einfach eine Merge Request erstellen und sie auf Auto-Merge setzen und warten bis alles durchgelaufen ist. Das sollte alles selbstständig laufen. 
Der Branchname kann reused werden, kann aber auch gelöscht werden, ist voll egal methinks, einfach das Mergeding durchlaufen lassen und das passt. 

Wann mergen?
Wenn wir neues Feature (s. Godot) auf https://chaoffice-working-title.fsr.imn.htwk-leipzig.de/ sehen wollen. Ansonsten bei GDD oä einfach mitteilen auf welchem Branch das ist dann müssen wir da nicht immer die Pipeline anschmeißen.


ZEITPLAN:
- erstes MVP erstellen
	- rumlaufbares Office mit Collision, paar Tische, Stühle, Rechner, Fenster. MC mit Animation.
- zweites MVP erstellen
	- erste Rätsel einbauen, kleine Kohäsion in Story bringen
- usw. 

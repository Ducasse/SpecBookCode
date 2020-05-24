"
| app |
app := ImdbApp new. 
(app newPresenter: ImdbFilmPresenter0) openWithSpec.
"
Class {
	#name : #ImdbFilmPresenter0,
	#superclass : #ImdbFilmPresenterRoot,
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #specs }
ImdbFilmPresenter0 class >> defaultLayout [
	^ SpGridLayout new
		add: 'Name' at: 1 @ 1; add: #nameText at: 2 @ 1;
		add: 'Director' at: 1 @ 2; add: #directorText at: 2 @ 2;
		add: 'Year' at: 1 @ 3; add: #yearNumber at: 2 @ 3;
		yourself
	
]

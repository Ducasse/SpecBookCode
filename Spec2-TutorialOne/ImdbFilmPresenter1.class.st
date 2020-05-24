"
| app |
app := ImdbApp new. 
(app newPresenter: ImdbFilmPresenter1) openWithSpec.
"
Class {
	#name : #ImdbFilmPresenter1,
	#superclass : #ImdbFilmPresenter0,
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmPresenter1 class >> defaultLayout [
	^ SpGridLayout new
		beRowNotHomogeneous;
		beColumnNotHomogeneous;
		add: 'Name' at: 1 @ 1; add: #nameText at: 2 @ 1;
		add: 'Director' at: 1 @ 2; add: #directorText at: 2 @ 2;
		add: 'Year' at: 1 @ 3; add: #yearNumber at: 2 @ 3;
		yourself
	
]

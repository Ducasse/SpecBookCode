Class {
	#name : #ImdbFilmPresenter3,
	#superclass : #ImdbFilmPresenter2,
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #initialization }
ImdbFilmPresenter3 >> initializeDialogWindow: aDialogPresenter [
	
	aDialogPresenter centered.
	aDialogPresenter 
		addButton: 'Cancel' do: [ :presenter | presenter close ];
		addButton: 'Save Film' do: [ :presenter | presenter beOk; close ].
]

{ #category : #initialization }
ImdbFilmPresenter3 >> setModel: aFilm [

	nameText text: aFilm name.
	directorText text: aFilm director.
	yearNumber number: aFilm year
]

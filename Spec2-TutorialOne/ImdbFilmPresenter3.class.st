Class {
	#name : #ImdbFilmPresenter3,
	#superclass : #ImdbFilmPresenter2,
	#category : #'Spec2-TutorialOne'
}

{ #category : #initialization }
ImdbFilmPresenter3 >> initializeDialogWindow: aDialogPresenter [
	
	aDialogPresenter centered.
	aDialogPresenter 
		addButton: 'Cancel' do: [ :presenter | presenter close ];
		addButton: 'Save Film' do: [ :presenter | presenter beOk; close ].
]

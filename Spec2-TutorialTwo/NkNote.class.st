Class {
	#name : #NkNote,
	#superclass : #TestCase,
	#instVars : [
		'title',
		'creationDate',
		'contents'
	],
	#category : #'Spec2-TutorialTwo'
}

{ #category : #accessing }
NkNote >> contents [
	^ contents
]

{ #category : #accessing }
NkNote >> contents: aString [ 
	contents := aString
]

{ #category : #accessing }
NkNote >> creationDate [
	^ creationDate
]

{ #category : #accessing }
NkNote >> creationDate: aDate [ 
	creationDate := aDate
]

{ #category : #accessing }
NkNote >> title [
	^ title
]

{ #category : #accessing }
NkNote >> title: aString [ 
	title := aString
]

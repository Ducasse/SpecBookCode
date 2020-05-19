Class {
	#name : #SpClassPresenter2,
	#superclass : #SpPresenter,
	#instVars : [
		'table'
	],
	#category : #'Spec2-TutorialThree'
}

{ #category : #specs }
SpClassPresenter2 class >> defaultLayout [

	^ SpBoxLayout newVertical
		add: #table
		yourself
]

{ #category : #specs }
SpClassPresenter2 class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
SpClassPresenter2 class >> example [
	<sampleInstance>

	^ self new openWithSpec
]

{ #category : #initialization }
SpClassPresenter2 >> initializePresenters [ 

	table := self newTable
        items: (self class environment allClasses first: 100) ;
        sortingBlock: #name descending;
        addColumn:
            ((SpStringTableColumn title: 'Name' evaluated: #name)
                width: 250;
                yourself);
        addColumn:
            ((SpStringTableColumn title: '#methods' evaluated: #numberOfMethods)
                width: 80;
                yourself);
		 addColumn:
            ((SpStringTableColumn 
					title: '#LOC' 
					evaluated: [:each | each methods inject: 0 into: [:s :m| s + m linesOfCode]])
                width: 80;
                yourself);
        beResizable;
        beMultipleSelection;
        yourself.
]

Class {
	#name : #PermSpaceInBulk,
	#superclass : #Object,
	#instVars : [
		'objects'
	],
	#category : #PermSpace
}

{ #category : #api }
PermSpaceInBulk >> flush [

	| originalObjects filterObjects statusString |
	originalObjects := objects asArray.
	filterObjects := originalObjects select: [ :e | self isValidToMoveToPermSpace: e ].

	filterObjects primMoveToPermSpaceInBulk.
	
	statusString := String streamContents: [ :s | 
			s nextPutAll: '# Original Objects: ';
			 print: originalObjects size;
			 nextPutAll: ' # Migrated Objects: ';
			 print: filterObjects size;
			 nextPutAll: ' # Filtered out: ';
			 print: originalObjects size - filterObjects size
			 ].
	
	objects removeAll.
	
	statusString traceCr.
	
	^ statusString.
]

{ #category : #initialization }
PermSpaceInBulk >> initialize [

	super initialize.
	objects := IdentitySet new
]

{ #category : #api }
PermSpaceInBulk >> isInPermSpace: anObj [

	^ objects includes: anObj
]

{ #category : #api }
PermSpaceInBulk >> isValidToMoveToPermSpace: anObject [

	| anObjectClass |
	({ nil. true. false } includes: anObject)
		ifTrue: [ ^ false ].

	(anObject isPinnedInMemory) 
		ifTrue: [ ^ false ].	

	anObjectClass := anObject class.

	(anObjectClass isImmediateClass) 
		ifTrue: [ ^ false ].
	
	(anObjectClass isWeak) 
		ifTrue: [ ^ false ].

	(anObjectClass isEphemeronClass) 
		ifTrue: [ ^ false ].

	^ true
]

{ #category : #api }
PermSpaceInBulk >> primMoveToPermSpace: obj [

	objects add: obj
]

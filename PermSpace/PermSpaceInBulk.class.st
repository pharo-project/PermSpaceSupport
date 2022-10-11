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

	objects asArray primMoveToPermSpaceInBulk.
	objects removeAll.
]

{ #category : #initialization }
PermSpaceInBulk >> initialize [

	super initialize.
	objects := IdentitySet new
]

{ #category : #api }
PermSpaceInBulk >> primMoveToPermSpace: obj [

	objects add: obj
]

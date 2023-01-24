Extension { #name : #FMMetaModel }

{ #category : #'*PermSpace-Moose' }
FMMetaModel >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	typeDict moveToPermSpaceWithContent: permSpace.
	nameDict moveToPermSpaceWithContent: permSpace
]

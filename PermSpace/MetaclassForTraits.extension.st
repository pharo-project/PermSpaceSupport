Extension { #name : #MetaclassForTraits }

{ #category : #'*PermSpace' }
MetaclassForTraits >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	users moveToPermSpace: permSpace. 
]

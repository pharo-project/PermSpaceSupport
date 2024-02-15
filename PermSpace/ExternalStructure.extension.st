Extension { #name : 'ExternalStructure' }

{ #category : '*PermSpace' }
ExternalStructure class >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	compiledSpec moveToPermSpaceWithContent: permSpace.
]

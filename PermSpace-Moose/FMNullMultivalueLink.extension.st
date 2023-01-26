Extension { #name : #FMNullMultivalueLink }

{ #category : #'*PermSpace-Moose' }
FMNullMultivalueLink >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	self moveToPermSpace: permSpace.
	
	selector do: [ :e | e moveToPermSpaceWithContent: permSpace ].
	owner moveToPermSpaceWithContent: permSpace.
	opposite moveToPermSpaceWithContent: permSpace.
]

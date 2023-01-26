Extension { #name : #FMMultivalueLink }

{ #category : #'*PermSpace-Moose' }
FMMultivalueLink >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	self moveToPermSpace: permSpace.
	
	values do: [ :e | e moveToPermSpaceWithContent: permSpace ].
	owner moveToPermSpaceWithContent: permSpace.
	opposite moveToPermSpaceWithContent: permSpace.
]

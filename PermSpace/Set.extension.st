Extension { #name : 'Set' }

{ #category : '*PermSpace' }
Set >> moveToPermSpaceWithContent: permSpace [ 
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	array do: [ :e | e moveToPermSpaceWithContent: permSpace ]
	
]

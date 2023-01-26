Extension { #name : #Dictionary }

{ #category : #'*PermSpace' }
Dictionary >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	self moveToPermSpace: permSpace.
	array do: [ :e | e moveToPermSpaceWithContent: permSpace ]
]

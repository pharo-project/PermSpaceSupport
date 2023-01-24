Extension { #name : #Collection }

{ #category : #'*PermSpace' }
Collection >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]

{ #category : #'*PermSpace' }
Collection >> moveToPermSpaceWithContent: permSpace [

	self moveToPermSpace: permSpace.
	self do: [ :e | e moveToPermSpaceWithContent: permSpace ]
]

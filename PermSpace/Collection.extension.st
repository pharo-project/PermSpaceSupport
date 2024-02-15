Extension { #name : 'Collection' }

{ #category : '*PermSpace' }
Collection >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	
	1 to: self basicSize do: [ :e |
		e moveToPermSpaceWithContent: e].
]

{ #category : '*PermSpace' }
Collection >> moveToPermSpaceWithContent: permSpace [
	
	self moveToPermSpace: permSpace 
]

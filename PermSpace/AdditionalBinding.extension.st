Extension { #name : 'AdditionalBinding' }

{ #category : '*PermSpace' }
AdditionalBinding >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]

Extension { #name : 'Form' }

{ #category : '*PermSpace' }
Form >> moveToPermSpace: aPermSpace [ 

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	aPermSpace primMoveToPermSpace: self.
	
	bits moveToPermSpaceWithContent: aPermSpace
]

Extension { #name : #AllProtocol }

{ #category : #'*PermSpace' }
AllProtocol >> moveToPermSpace: aPermSpace [ 
	
	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	aPermSpace primMoveToPermSpace: self
]

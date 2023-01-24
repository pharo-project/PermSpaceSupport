Extension { #name : #AllProtocol }

{ #category : #'*PermSpace' }
AllProtocol >> moveToPermSpace: aPermSpace [ 
	
	(aPermSpace isInPermSpace: aPermSpace)
		ifTrue: [ ^ self ].	
	
	aPermSpace primMoveToPermSpace: self
]

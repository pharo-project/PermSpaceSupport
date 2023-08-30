Extension { #name : #Bitmap }

{ #category : #'*PermSpace' }
Bitmap >> moveToPermSpace: aPermSpace [ 

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	aPermSpace primMoveToPermSpace: self
]

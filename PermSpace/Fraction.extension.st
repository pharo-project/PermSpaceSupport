Extension { #name : 'Fraction' }

{ #category : '*PermSpace' }
Fraction >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	permSpace primMoveToPermSpace: self.

	numerator moveToPermSpace: permSpace.
	denominator moveToPermSpace: permSpace.
	
]

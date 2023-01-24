Extension { #name : #ScaledDecimal }

{ #category : #'*PermSpace' }
ScaledDecimal >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	numerator moveToPermSpace: permSpace .
	denominator moveToPermSpace: permSpace .
	scale moveToPermSpace: permSpace 
]

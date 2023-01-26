Extension { #name : #ScaledDecimal }

{ #category : #'*PermSpace' }
ScaledDecimal >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	numerator moveToPermSpace: permSpace .
	denominator moveToPermSpace: permSpace .
	scale moveToPermSpace: permSpace 
]

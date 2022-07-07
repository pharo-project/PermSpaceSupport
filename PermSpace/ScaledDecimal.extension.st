Extension { #name : #ScaledDecimal }

{ #category : #'*PermSpace' }
ScaledDecimal >> moveToPermSpace [
	
	self primMoveToPermSpace.
	numerator moveToPermSpace.
	denominator moveToPermSpace.
	scale moveToPermSpace.
]

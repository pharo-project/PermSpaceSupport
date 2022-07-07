Extension { #name : #TaCompositionElement }

{ #category : #'*PermSpace' }
TaCompositionElement >> moveToPermSpace [
	
	self primMoveToPermSpace.
	innerClass isClassOrTrait ifFalse: [ innerClass moveToPermSpace ].
]

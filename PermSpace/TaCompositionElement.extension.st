Extension { #name : #TaCompositionElement }

{ #category : #'*PermSpace' }
TaCompositionElement >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	innerClass isClassOrTrait ifFalse: [ innerClass moveToPermSpace: permSpace  ]
]

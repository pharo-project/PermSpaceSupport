Extension { #name : #TaCompositionElement }

{ #category : #'*PermSpace' }
TaCompositionElement >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: aPermSpace)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self.
	innerClass moveToPermSpace: aPermSpace.

]

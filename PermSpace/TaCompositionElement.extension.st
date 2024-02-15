Extension { #name : 'TaCompositionElement' }

{ #category : '*PermSpace' }
TaCompositionElement >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self.
	innerClass moveToPermSpace: aPermSpace.

]

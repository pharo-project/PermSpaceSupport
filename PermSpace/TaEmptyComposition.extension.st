Extension { #name : #TaEmptyComposition }

{ #category : #'*PermSpace' }
TaEmptyComposition >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: aPermSpace)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self
]

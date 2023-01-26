Extension { #name : #TaEmptyComposition }

{ #category : #'*PermSpace' }
TaEmptyComposition >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self
]

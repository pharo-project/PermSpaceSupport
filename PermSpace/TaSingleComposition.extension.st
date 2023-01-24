Extension { #name : #TaSingleComposition }

{ #category : #'*PermSpace' }
TaSingleComposition >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: aPermSpace)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self.
	inner moveToPermSpace: aPermSpace
]

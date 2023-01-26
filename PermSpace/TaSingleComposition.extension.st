Extension { #name : #TaSingleComposition }

{ #category : #'*PermSpace' }
TaSingleComposition >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self.
	inner moveToPermSpace: aPermSpace
]

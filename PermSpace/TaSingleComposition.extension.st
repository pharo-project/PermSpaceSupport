Extension { #name : #TaSingleComposition }

{ #category : #'*PermSpace' }
TaSingleComposition >> moveToPermSpace: aPermSpace [

	aPermSpace primMoveToPermSpace: self.
	inner moveToPermSpace: aPermSpace
]

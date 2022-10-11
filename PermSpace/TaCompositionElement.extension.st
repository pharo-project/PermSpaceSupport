Extension { #name : #TaCompositionElement }

{ #category : #'*PermSpace' }
TaCompositionElement >> moveToPermSpace: aPermSpace [

	aPermSpace primMoveToPermSpace: self.
	innerClass moveToPermSpace: aPermSpace.

]

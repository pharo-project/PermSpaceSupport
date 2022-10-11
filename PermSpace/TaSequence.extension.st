Extension { #name : #TaSequence }

{ #category : #'*PermSpace' }
TaSequence >> moveToPermSpace: aPermSpace [

	aPermSpace primMoveToPermSpace: self.
	members moveToPermSpace: aPermSpace.
	members do: [ :e | e moveToPermSpace: aPermSpace ]
]

Extension { #name : #TaSequence }

{ #category : #'*PermSpace' }
TaSequence >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	aPermSpace primMoveToPermSpace: self.
	members moveToPermSpace: aPermSpace.
	members do: [ :e | e moveToPermSpace: aPermSpace ]
]

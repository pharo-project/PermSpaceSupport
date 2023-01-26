Extension { #name : #TaRemoveMethod }

{ #category : #'*PermSpace' }
TaRemoveMethod >> moveToPermSpace: aPermSpace [

	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	super moveToPermSpace: aPermSpace.
	removedSelectors moveToPermSpace: aPermSpace.
	removedSelectors do: [ :e | e moveToPermSpace: aPermSpace ]
]

Extension { #name : #TaRemoveMethod }

{ #category : #'*PermSpace' }
TaRemoveMethod >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	removedSelectors moveToPermSpace: aPermSpace.
	removedSelectors do: [ :e | e moveToPermSpace: aPermSpace ]
]

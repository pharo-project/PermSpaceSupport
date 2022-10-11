Extension { #name : #TaRenameSlot }

{ #category : #'*PermSpace' }
TaRenameSlot >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	renames moveToPermSpace: aPermSpace.
	renames do: [ :e | e moveToPermSpace: aPermSpace ]
]

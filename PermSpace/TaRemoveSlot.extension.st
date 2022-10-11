Extension { #name : #TaRemoveSlot }

{ #category : #'*PermSpace' }
TaRemoveSlot >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: self.
	removedSlots moveToPermSpace: self.
	removedSlots do: [ :e | e moveToPermSpace: self ]
]

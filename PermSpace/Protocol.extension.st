Extension { #name : #Protocol }

{ #category : #'*PermSpace' }
Protocol >> moveToPermSpace [
	
	self primMoveToPermSpace.
	name moveToPermSpace.

	methodSelectors ifNotNil: [
		methodSelectors moveToPermSpace.
		methodSelectors do: [ :e | e moveToPermSpace ]].
]

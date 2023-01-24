Extension { #name : #Protocol }

{ #category : #'*PermSpace' }
Protocol >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace .

	methodSelectors ifNotNil: [ 
		methodSelectors moveToPermSpace: permSpace .
		methodSelectors do: [ :e | e moveToPermSpace: permSpace  ] ]
]

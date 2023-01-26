Extension { #name : #CompiledBlock }

{ #category : #'*PermSpace' }
CompiledBlock >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.

	self allLiterals do: [ :e | 
		e = self outerCode ifFalse: [ e moveToPermSpaceWithContent: permSpace ]]
]

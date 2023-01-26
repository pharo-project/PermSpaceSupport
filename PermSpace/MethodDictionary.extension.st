Extension { #name : #MethodDictionary }

{ #category : #'*PermSpace' }
MethodDictionary >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	array moveToPermSpaceWithContent: permSpace .

	1 to: self basicSize do: [ :i | 
		(self basicAt: i) ifNotNil: [ :key | key moveToPermSpace: permSpace  ] ]
]

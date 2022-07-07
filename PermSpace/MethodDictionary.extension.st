Extension { #name : #MethodDictionary }

{ #category : #'*PermSpace' }
MethodDictionary >> moveToPermSpace [
	
	self primMoveToPermSpace.

	array moveToPermSpace.
	array do: [ :e | e moveToPermSpace ].
	
	1 to: self basicSize do:
		[:i | (self basicAt: i) ifNotNil: [ :key | key moveToPermSpace]]
]

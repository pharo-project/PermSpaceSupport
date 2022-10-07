Extension { #name : #MethodDictionary }

{ #category : #'*PermSpace' }
MethodDictionary >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.

	array moveToPermSpace: permSpace .
	array do: [ :e | e moveToPermSpace: permSpace  ].

	1 to: self basicSize do: [ :i | 
		(self basicAt: i) ifNotNil: [ :key | key moveToPermSpace: permSpace  ] ]
]

Extension { #name : #RPackage }

{ #category : #'*PermSpace' }
RPackage >> moveContentToPermSpace: permSpace [

	self definedClasses
		do: [ :e | e moveToPermSpace: permSpace ]
		displayingProgress: [ :e | e name asString ]
]

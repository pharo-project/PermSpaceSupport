Extension { #name : #RPackage }

{ #category : #'*PermSpace' }
RPackage >> moveContentToPermSpace [

	self definedClasses
		do: [ :e | 
			Stdio stdout << e name; crlf; flush.
			e moveToPermSpace ]
		displayingProgress: [ :e | e name asString ]
]

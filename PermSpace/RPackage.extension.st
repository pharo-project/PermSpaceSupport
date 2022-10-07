Extension { #name : #RPackage }

{ #category : #'*PermSpace' }
RPackage >> moveContentToPermSpace: permSpace [

	self definedClasses
		do: [ :e | 
			Stdio stdout
				<< e name;
				crlf;
				flush.
			e moveToPermSpace: permSpace ]
		displayingProgress: [ :e | e name asString ]
]

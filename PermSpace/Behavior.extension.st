Extension { #name : #Behavior }

{ #category : #'*PermSpace' }
Behavior >> withAllSuperclassesUntil: untilClass [ 
	
	| sprClass |

	sprClass := self superclass.
	^ OrderedCollection streamContents: [ :s |
		s nextPut: self.

		[ sprClass isNotNil and: [ sprClass ~= untilClass ] ]
			whileTrue: [ s nextPut: sprClass. sprClass := sprClass superclass].

		s nextPut: untilClass. ]
]

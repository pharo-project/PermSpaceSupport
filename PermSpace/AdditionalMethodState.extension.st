Extension { #name : #AdditionalMethodState }

{ #category : #'*PermSpace' }
AdditionalMethodState >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	selector moveToPermSpace: permSpace .
	
	1 to: self basicSize do: [:i |

		| propertyOrPragma "<Association|Pragma>" |

		(propertyOrPragma := self basicAt: i) isAssociation
			ifTrue: [
					propertyOrPragma key moveToPermSpace: permSpace. 
					propertyOrPragma value moveToPermSpace: permSpace]
			ifFalse: [
					propertyOrPragma selector moveToPermSpace: permSpace. 
					propertyOrPragma moveToPermSpace: permSpace]]	
	
]

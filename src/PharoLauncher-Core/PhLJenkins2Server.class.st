"
I represent a group of templates as built by a Jenkins server (url of the server is in my url instance variable). I use Jenkins' JSON API to get the data from the server.

"
Class {
	#name : #PhLJenkins2Server,
	#superclass : #PhLJenkins2Entity,
	#instVars : [
		'url',
		'name'
	],
	#category : #'PharoLauncher-Core-Model'
}

{ #category : #protected }
PhLJenkins2Server class >> jsonFields [
	"Because the server is the root of the jenkins model"

	^ self shouldNotImplement
]

{ #category : #protected }
PhLJenkins2Server class >> jsonName [
	"Because the server is the root of the jenkins model"

	^ self shouldNotImplement
]

{ #category : #'instance creation' }
PhLJenkins2Server class >> name: aString url: anUrl [
	^ self new
		setName: aString url: anUrl;
		yourself
]

{ #category : #'instance creation' }
PhLJenkins2Server class >> name: aString url: anUrl username: anotherString password: yetAnotherString [
	^ (self name: aString url: anUrl)
		  username: anotherString;
		  password: yetAnotherString;
		  yourself
]

{ #category : #accessing }
PhLJenkins2Server >> jobs [
	^ self query: PhLJenkins2Job
]

{ #category : #accessing }
PhLJenkins2Server >> name [
	^ name
]

{ #category : #accessing }
PhLJenkins2Server >> password [
	^ url password
]

{ #category : #accessing }
PhLJenkins2Server >> password: aString [
	url password: aString
]

{ #category : #initialization }
PhLJenkins2Server >> setName: aString url: aZnUrl [ 
	name := aString.
	url := aZnUrl
]

{ #category : #accessing }
PhLJenkins2Server >> templatesAndGroups [
	^ self jobs
]

{ #category : #accessing }
PhLJenkins2Server >> url [
	^ url
]

{ #category : #accessing }
PhLJenkins2Server >> username [
	^ url username
]

{ #category : #accessing }
PhLJenkins2Server >> username: aString [
	url username: aString
]

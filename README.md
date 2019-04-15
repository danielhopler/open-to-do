# Open To Do API

Open To Do is an externally usable API for a basic to-do list application.This API will allow users to modify user accounts and to-do items from the command line.

Open To Do allows you create, update, or remove users, lists, and to do items from the command line via curl

## Dependencies
*  rails 5.2.2 - Open-To-Do is created using Ruby on Rails

*  ruby 2.6.0

* active_model_serializers, ~> 0.10.0 - used to convert a Rails object into a JSON representation.

## Installation
* Fork and clone the Open-To-Do repo

* create your database and migrate it.

* create initial User from railse console:

```
rails c
```
```
User.create!(username:"your_user", password: "your_password")
```

* Then start using the api!

## Examples Using Curl
Create User:
```
$ curl -u username:password -d "user[username]=Sterling" -d "user[password]=Archer" http://localhost:3000/api/users/
```
Create List:
```
$ curl -u username:password -d "list[title]=Things to do today" -d "list[permissions]=private" http://localhost:3000/api/users/<User ID>/lists
```
Create Item:
```
$ curl -u username:password -d "item[name]=Dance if you want to" http://localhost:3000/api/lists/<list ID here>/items
```

Delete User:
```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/<user ID here>/
```

Delete To-Do List:
```
$ curl -u username:password -X DELETE http://localhost:3000/api/users/<User ID>/lists/<List ID>
```
Update To-Do List:
```
$ curl -X PUT -u username:password -d "list[private]=true" http://localhost:3000/api/lists/<List ID>
```

Update To-Do Item:
```
$ curl -X PUT -u username:password -d "item[completed]=true" http://localhost:3000/api/items/<Item ID>
```

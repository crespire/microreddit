### Learning platform
```
Course
title: string [unique, present]
description: text
# Rails magic stuff, id and timestamps

has_many lessons
```

```
Lesson
title: string [unique, present]
body: text [present]

belongs_to course
```

### Profile tab
```
User
name: string [unique, present]
email: string [unique, present]
password: string [present] # Store the hash of pw.
age: int [greater than 0]
gender: string

has_one address
```

```
Address
city: string [present]
state: string [present]
country: string [present]

belongs_to user
```

### Pinboard
```
User
name: string [unique, present]
email: string [unique, present]
password: string [present] # store hash

has_many boards, dependent: destroy
has_many pins through board, dependent: destroy
```

```
Board
name: string [unique, present]

belongs_to user
has_many pins
```

```
Pin
url: string [present]

belongs_to board
belongs_to user
has_many comments
```

```
Comment
title: string [present]
comment: text [present]
user_id: int [present]

belongs_to pin
```


### MsgBoard
```
User
name: string [present, unique]
email: string [present]
password: string [present]

has_many submissions
has_many comments
```

```
Submission
link: string [present]
body: text

belongs to user
has_many comments as commentable
```

```
Comment
content: string [present]
comment_parent_id: integer [present]
comment_parent_type: string [present]

belongs to commentable, polymorphic: true
belongs to user
has_many comments as commentable
```
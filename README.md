# Appointment Tracker (*easy*)

App-a-day assignment for [Code Fellows](https://twitter.com/codefellowsorg). **Appointment Tracker** is a rudimentary appointment tracker.

### Features

- Add new instructors!
- Add new applicants!
- Schedule appointments between applicants and instructors!
- Edit/update the appointments with a new instructor, applicant, instructor or even time!
- Cancel appointments!

### What we learned

We built our own app that uses a [has_many :through](http://guides.rubyonrails.org/association_basics.html#the-has_many-through-association) association.

This means it uses a join model, that tracks information about how two sides of a many-to-many relation are connected.

![has_many :through association](http://guides.rubyonrails.org/images/has_many_through.png)

The join model in this app joins Applicants and Instructors through Appointments.

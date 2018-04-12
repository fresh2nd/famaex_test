# README FAMAEX TEST

## Useful info

This test was initiated running: `ruby 2.5.0p0 and rails 5.1.6`

To generate some corporation structure run:
``bundle exec rails db:seed``

[App UML](https://drive.google.com/file/d/1VY3OtYF6On0WIPYAiA6WUKvFnHGevt67/view?usp=sharing)

To authenticate users just add a header ['Authorization'] with user_id as token to any request.

[Example request](https://www.getpostman.com/collections/5e81203838eb494d509c)

## Test purpose

We need to associate users to entities from any level of our structure: CompanyAggrupation, Company, Groups, Subgroups or Spaces

Users associated to an entity should be able to get access to entities associated to this one from lower levels.

Example:

CompanyAggrupation A has a Company B which has a Group C.

If User u is associated with CompanyAggrupation A, user u should be able to view Group C, so the request /api/v1/groups/group_c_id shoud show the info of the group.

Users without association should not be able to retrieve that information.


Add code to models and controllers and any other place that may be necessary to implement this behaviour.
# Airport Challenge
[Description](#Description) | [Getting started](#Getting-Started) | [Running tests](#Running-Tests) | [Usage](#Usage) | [Client Brief & User Stories](#Client-Brief-&-User-Stories)
| [Approach](#Approach) | [Learning Outcomes](#Learning-Outcomes)

## Description

This is a REPL run program that allows an airport controller to control the flow of planes into airports.

I am redoing this Makers set Airport Challenge to demonstate improvement in my process, particularly to to show that I test drive my development and have a git log to prove it. 
I have started this repo from scratch, but to see the original repo with instructions, [see here](https://github.com/makersacademy/airport_challenge).


## Getting Started
```bash 
> git clone https://github.com/arthurashman/airport_challenge   
> gem install bundle     
> bundle
``` 
## Running Tests
```bash
> rspec
```
## Usage
```bash
> irb
```
## Client Brief & User Stories
We have a request from a client to write the software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off. Here are the user stories that we worked out in collaboration with the client:

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport
```
```
As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
```
```
As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full
```
```
As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```
## Approach

I will start by validating the user stories and deciding on priority. Reading them through, I am happy to tackle each user story in the order they have been set. I might consider breaking down the second and last user stories into two smaller user stories.

### User Story 1
```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport
```
This suggest that I need plane and airport objects to start. The airport object will have a method which instructs the plane to land. This will fulfill this user story.

I added further functionality as part of this user story to track which planes are at the airport using the stands attribute.
### User Story 2.1 (broken down from 2)
```
As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport
```
This requires an additional method on airport to instruct take off

### User Story 2.2 (broken down from 2)
```
As an air traffic controller
So I can get passengers on the way to their destination
I want to confirm that a taken off plane is no longer in the airport
```
This will utilize the stands attribute created as part of user story 1 and requires an additional method on airport to check stands.

### User Story 3 & 4
```
As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy
```
```
As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy
```
Following SRP, this will require a weather class. Weather will be generated randomly.
Airport will have weather injected in on instantiation to allow for mocking. Airport method runway_safe? will check weather and be called before takeoff and landing to check conditions and allow or restrict runway use accordingly. 



## Learning Outcomes


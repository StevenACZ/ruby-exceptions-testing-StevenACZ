# People

You are a Person (again)

- When you are created, you will be given a name and an age (keyword arguments)
- If the given name has has 4 non-vowel letters in a row, raise a UnpronounceableName error (custom error). The default message of that error is: "This name is unpronounceable"
- If the given age is not between 0 and 150, raise a InvalidAge error (custom error). The default message of that error is: "This age is not possible"

You are a PeopleCreator class

- You have a class method called `create_person` that expects a name and an age (keyword arguments). With that information you create a new person but handling any posible UnpronounceableName or InvalidAge error. Instead of crashing the program you return the error message.

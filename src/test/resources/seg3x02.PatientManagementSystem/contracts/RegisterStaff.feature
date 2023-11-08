Feature: Registering Staff

    Scenario: Successfully registering staff
        Given the HMS is on
        And the user provided the complete information
        And the system recognized the user
        And a staff member is a Nurse, Doctor, Medical Director, or Personnel Officer
        When the application command registerStaff is executed
        Then the user will be shown an acknowledgement message
        And the user will be registered as staff
        And a UUID will be generated for the staff member
        
    Scenario: Failing to register staff due to incomplete information
        Given the HMS is on
        And the user provided incomplete information
        And the system recognized the user
        When the application command registerStaff is executed
        Then the user will be shown an incomplete information error message
        And the user will not be registered as staff

    Scenario: Failing to register staff as the user is unauthenticated
        Given the HMS is on
        And the user provided the complete information
        And the system does not find the user
        When the application command registerStaff is executed
        Then the user will be shown an invalid user error message
        And the user will not be registered as staff

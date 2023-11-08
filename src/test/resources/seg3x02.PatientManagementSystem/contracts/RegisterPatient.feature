Feature: Register Patient

    Scenario: Medical Staff Member registers a new Patient
        Given Medical Staff Member is logged in
        And Medical Staff Member entered the requested information correctly
        When the application command registerStaff is invoked
        Then the system issues a new identification number Patient
        And the system creates a new Patient
        And the system initializes the new patient from the patient information

    Scenario: Medical Staff Member enters incomplete information
        Given Medical Staff Member is logged in
        And Medical Staff Member entered the requested information incomplete
        When incomplete information for the Patient is entered and submitted
        Then the system displays an incomplete information error message
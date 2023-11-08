Feature: Admitting a patient from the request list

    Scenario: Successfully admitting a patient from the request list
        Given the patient is on the request list
        And the hospital has available beds
        And the Charge Nurse is logged in
        When the application command admitFromRequestList is invoked
        Then the patient should be added to a division
        And the patient should be removed from the request list

    Scenario: Failing to admit a patient from the request list due to lack of available beds
        Given the patient is on the request list
        And the hospital does not have any available beds
        And the Charge Nurse is logged in
        When the application command admitFromRequestList is invoked
        Then the patient should not be added to any division
        And the patient should remain on the request list
        And the system sends a notification to the Charge Nurse who requested admission

Feature: Admitting a patient to the ward

    Scenario: Successfully admitting a patient to the ward:
        Given the hospital has available beds
        And the Charge Nurse is logged in
        And the correct admission information is submitted
        When the application command admitPatientToWard is invoked
        Then the patient is added to a division

    Scenario: Failing to admit a patient due to lack of available beds:
        Given the hospital does not have any available beds
        And the Charge Nurse is logged in
        And the correct admission information is submitted
        When the application command admitPatientToWard is invoked
        Then the patient should not be added to a division
        And the a notification is sent to the Charged Nurse
        And the system offers to request an admission for Patient

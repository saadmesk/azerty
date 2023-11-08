Feature: Discharge Patient

    Scenario: Charge Nurse discharges Selected Patient
        Given the Selected Patient is slated to be discharged
        And the Charge Nurse is logged in
        When the freeBed application command is invoked
        Then the Selected Patient is removed from their division
        And the system updates the bed availability
        And discharge information printed for the selected patient
        And discharge information of the selected patient is slated to be sent to the Patient external doctor

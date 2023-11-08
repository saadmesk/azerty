Feature: Prescribe Medication

    Scenario: Selected Patient is not under care of Doctor
        Given Selected Patient is not under care of Doctor
        And the Doctor is logged
        When the addPrescription application command is invoked
        Then the prescription is prevented and the Doctor is notified of the mismatch

    Scenario: Doctor submits incorrect prescription information
        Given the entered information is incorrect
        And the Doctor is logged
        When the addPrescription application command is invoked
        Then the prescription is prevented and the Doctor is notified of the error(s)

    Scenario: Doctor submits correct prescription information
        Given the entered information is correct
        And the Doctor is logged
        And Selected Patient is under care of Doctor
        When the addPrescription application command is invoked
        Then a new prescription is created
        And the prescription is initialized from the prescription information
        And the prescription is associated to the Selected Patient
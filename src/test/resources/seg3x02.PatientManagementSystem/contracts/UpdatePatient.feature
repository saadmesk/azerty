Feature: Updating patient file

  Scenario: Successfully updating patient file:
    Given the medical staff member is logged in
    And the medical staff has enough privilege to modify
    And the medical staff modified values for the patient
    And the Consult Patient File has been completed
    When the application command updatePatient is executed
    Then the patient properties should be updated to the new patient information provided

  Scenario: Unsuccessful updating of the patient file due to lack of privilege to modify
    Given the medical staff member is logged in
    And the medical staff does not have enough privilege to modify
    When the application command updatePatient is executed
    Then the system displays a notification modification not allowed error message
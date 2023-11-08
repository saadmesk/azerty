Feature: Requesting patient admission

  Scenario: Successfully requesting patient admission:
    Given the medical staff member is logged in
    And the medical staff is a Charge Nurse
    And the medical staff provide correct Request Patient Admission information
    And a patient registration is being displayed
    When the application command requestPatientAdmission is executed
    Then the patient is added to the request list of the requested division

  Scenario: Unsuccessful requesting patient admission due to incorrect information provided
    Given the medical staff member is logged in
    And the medical staff is a Charge Nurse
    And the medical staff provide incorrect Request Patient Admission information
    And a patient registration is being displayed
    When the application command createRequestPatientAdmission is executed
    Then the system displays an incorrect information error message

  Scenario: Unsuccessful requesting patient admission due to patient already being admitted to a service
    Given the medical staff member is logged in
    And the medical staff is a Charge Nurse
    And the patient is already admitted to a service
    And a patient registration is being displayed
    When the application command requestPatientAdmission is executed
    Then the system displays a patient already in ward error message
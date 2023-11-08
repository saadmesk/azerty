package seg3x02.PatientManagementSystem.application.dtos.queries

data class ChargeNurseCreateDto(
    val firstName: String,
    val lastName: String,
    val telephoneExtension: Integer,
    val bipperExtension: Integer
)

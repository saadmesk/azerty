package seg3x02.PatientManagementSystem.application.dtos.queries

data class NextOfKinCreateDto(
    val firstName: String,
    val lastName: String,
    val telephoneNumber: Integer,
    val patientRelation: String
)  {
    var addressInfo: AddressCreateDto? = null
}
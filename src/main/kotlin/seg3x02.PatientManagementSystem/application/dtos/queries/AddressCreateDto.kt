package seg3x02.PatientManagementSystem.application.dtos.queries

data class AddressCreateDto(
    val street: String,
    val city: String,
    val country: String,
    val postalCode: String
)
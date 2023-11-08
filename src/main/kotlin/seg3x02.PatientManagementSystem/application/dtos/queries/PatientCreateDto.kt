package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.*

data class PatientCreateDto(
    val governmentInsuranceNumber: Integer,
    val firstName: String,
    val lastName: String,
    val telephoneNumber: Integer,
    val dateOfBirth: Date,
    val gender: Char,
    val maritalStatus: String,
    val personalDoctor: UUID
)  {
    var addressInfo: AddressCreateDto? = null
    var nextOfKin: NextOfKinCreateDto? = null
}
package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.*

data class StaffCreateDto(
    val firstName: String,
    val lastName: String,
    val UID: UUID,
    val email: String,
    val password: String
)

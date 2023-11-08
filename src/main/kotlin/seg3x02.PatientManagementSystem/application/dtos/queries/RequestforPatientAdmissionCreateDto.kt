package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.*

data class RequestforPatientAdmissionCreateDto(
    val rationale: String,
    val priority: Integer,
    val localDoctor: UUID
)

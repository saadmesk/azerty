package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.UUID

data class AdmissionCreateDto(
    val localDoctor: UUID,
    val roomNumber: Integer,
    val bedNumber: Integer,
    val privateInsuranceNumber: Integer?
)

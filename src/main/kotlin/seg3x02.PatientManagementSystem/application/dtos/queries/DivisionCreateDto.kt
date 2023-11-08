package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.*

data class DivisionCreateDto(
    val chargeNurseID: UUID,
    val divisionID: UUID,
    val divisionName: String,
    val location: String,
    val numberOfBeds: Integer,
    val telephoneExtension: Integer,
    val divisionStatus: Boolean
)
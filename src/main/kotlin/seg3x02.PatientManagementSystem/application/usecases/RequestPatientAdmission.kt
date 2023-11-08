package seg3x02.PatientManagementSystem.application.usecases

import seg3x02.PatientManagementSystem.application.dtos.queries.RequestforPatientAdmissionCreateDto
import java.util.*

interface RequestPatientAdmission {
    fun createRequestPatientAdmission(patientID: UUID, requestInfo: RequestforPatientAdmissionCreateDto): Boolean
}

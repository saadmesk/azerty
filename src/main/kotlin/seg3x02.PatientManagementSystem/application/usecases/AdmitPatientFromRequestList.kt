package seg3x02.PatientManagementSystem.application.usecases

import seg3x02.PatientManagementSystem.application.dtos.queries.AdmissionCreateDto
import java.util.UUID

interface AdmitPatientFromRequestList {
    fun admitFromRequestList(patientID: UUID, admissionInfo: AdmissionCreateDto): Boolean
}

package seg3x02.PatientManagementSystem.application.usecases

import seg3x02.PatientManagementSystem.application.dtos.queries.AdmissionCreateDto
import seg3x02.PatientManagementSystem.application.dtos.queries.PatientCreateDto
import java.util.UUID

interface AdmitPatient {
    fun admitPatientToWard(patientID: UUID, admissionInfo: AdmissionCreateDto): Boolean
}

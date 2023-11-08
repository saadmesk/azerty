import seg3x02.PatientManagementSystem.application.dtos.queries.PatientCreateDto
import java.util.*

interface UpdatePatientFile {
    fun updatePatient(patientID:UUID, patientInfo: PatientCreateDto): Boolean
}
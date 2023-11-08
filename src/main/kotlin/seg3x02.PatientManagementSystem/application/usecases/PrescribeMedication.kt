import seg3x02.PatientManagementSystem.application.dtos.queries.PrescriptionCreateDto
import java.util.UUID

interface PrescribeMedication {
    fun addPrescription(patientId: UUID, loggedInDoctor: UUID, prescription: PrescriptionCreateDto): Boolean
}
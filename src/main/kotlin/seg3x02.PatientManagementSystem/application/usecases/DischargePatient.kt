import java.util.UUID

interface DischargePatient {
    fun freeBed(patientId: UUID, divisionID:UUID, bedNumber: UUID): Boolean
}
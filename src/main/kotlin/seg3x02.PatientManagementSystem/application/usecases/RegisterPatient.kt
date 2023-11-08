import seg3x02.PatientManagementSystem.application.dtos.queries.PatientCreateDto

interface RegisterPatient{
    fun registerPatient(patientInfo: PatientCreateDto): Boolean
}
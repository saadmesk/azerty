package seg3x02.PatientManagementSystem.application.dtos.queries

import java.util.*

data class PrescriptionCreateDto(
    val din: String,
    val name: String,
    val unitsPerDay: Float,
    val adminsPerDay: Integer,
    val adminHistory: Dictionary<String, Integer>,
    val adminMethod: String,
    val startDate: Date,
    val finishDate: Date
)

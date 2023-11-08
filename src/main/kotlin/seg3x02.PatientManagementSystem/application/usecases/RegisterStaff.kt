package seg3x02.PatientManagementSystem.application.usecases

import seg3x02.PatientManagementSystem.application.dtos.queries.StaffCreateDto
import java.util.*

interface RegisterStaff {
    fun registerStaff(staffInfo: StaffCreateDto): UUID?
}
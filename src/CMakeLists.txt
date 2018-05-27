CU_SET_PATH("CMAKE_ProfessionNPC_SRC_DIR" "${CMAKE_CURRENT_LIST_DIR}")

AC_ADD_SCRIPT("${CMAKE_ProfessionNPC_SRC_DIR}/ProfessionNPC.cpp")

AC_ADD_SCRIPT_LOADER("ProfessionNPC" "${CMAKE_ProfessionNPC_SRC_DIR}/ProfessionNPC_scripts_loader.h")
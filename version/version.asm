.code
extern GetFileVersionInfoA_Original:QWORD
extern GetFileVersionInfoByHandle_Original:QWORD
extern GetFileVersionInfoExA_Original:QWORD
extern GetFileVersionInfoExW_Original:QWORD
extern GetFileVersionInfoSizeA_Original:QWORD
extern GetFileVersionInfoSizeExA_Original:QWORD
extern GetFileVersionInfoSizeExW_Original:QWORD
extern GetFileVersionInfoSizeW_Original:QWORD
extern GetFileVersionInfoW_Original:QWORD
extern VerFindFileA_Original:QWORD
extern VerFindFileW_Original:QWORD
extern VerInstallFileA_Original:QWORD
extern VerInstallFileW_Original:QWORD
extern VerLanguageNameA_Original:QWORD
extern VerLanguageNameW_Original:QWORD
extern VerQueryValueA_Original:QWORD
extern VerQueryValueW_Original:QWORD
GetFileVersionInfoA_ML proc
  jmp QWORD ptr GetFileVersionInfoA_Original
GetFileVersionInfoA_ML endp
GetFileVersionInfoByHandle_ML proc
  jmp QWORD ptr GetFileVersionInfoByHandle_Original
GetFileVersionInfoByHandle_ML endp
GetFileVersionInfoExA_ML proc
  jmp QWORD ptr GetFileVersionInfoExA_Original
GetFileVersionInfoExA_ML endp
GetFileVersionInfoExW_ML proc
  jmp QWORD ptr GetFileVersionInfoExW_Original
GetFileVersionInfoExW_ML endp
GetFileVersionInfoSizeA_ML proc
  jmp QWORD ptr GetFileVersionInfoSizeA_Original
GetFileVersionInfoSizeA_ML endp
GetFileVersionInfoSizeExA_ML proc
  jmp QWORD ptr GetFileVersionInfoSizeExA_Original
GetFileVersionInfoSizeExA_ML endp
GetFileVersionInfoSizeExW_ML proc
  jmp QWORD ptr GetFileVersionInfoSizeExW_Original
GetFileVersionInfoSizeExW_ML endp
GetFileVersionInfoSizeW_ML proc
  jmp QWORD ptr GetFileVersionInfoSizeW_Original
GetFileVersionInfoSizeW_ML endp
GetFileVersionInfoW_ML proc
  jmp QWORD ptr GetFileVersionInfoW_Original
GetFileVersionInfoW_ML endp
VerFindFileA_ML proc
  jmp QWORD ptr VerFindFileA_Original
VerFindFileA_ML endp
VerFindFileW_ML proc
  jmp QWORD ptr VerFindFileW_Original
VerFindFileW_ML endp
VerInstallFileA_ML proc
  jmp QWORD ptr VerInstallFileA_Original
VerInstallFileA_ML endp
VerInstallFileW_ML proc
  jmp QWORD ptr VerInstallFileW_Original
VerInstallFileW_ML endp
VerLanguageNameA_ML proc
  jmp QWORD ptr VerLanguageNameA_Original
VerLanguageNameA_ML endp
VerLanguageNameW_ML proc
  jmp QWORD ptr VerLanguageNameW_Original
VerLanguageNameW_ML endp
VerQueryValueA_ML proc
  jmp QWORD ptr VerQueryValueA_Original
VerQueryValueA_ML endp
VerQueryValueW_ML proc
  jmp QWORD ptr VerQueryValueW_Original
VerQueryValueW_ML endp
end

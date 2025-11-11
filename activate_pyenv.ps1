# 현재 프로젝트 경로 (문자열 형태로 가져오기)
$projectDir = (Get-Location).Path

# Poetry 가상환경 경로를 가져옴
$venvPath = poetry -C $projectDir env info --path

# 확인용 (선택)
Write-Host "Activating Poetry environment at:`n$venvPath"

# 가상환경의 activate.ps1 실행
& "$venvPath\Scripts\Activate.ps1"

: robocopy (복사할 폴더) (목적지 폴더) (옵션)
: 사용한 옵션: /xf (복사하지 않을 파일 이름(띄어쓰기로 구분해서 여러 개 가능)), /xd (복사하지 않을 폴더 이름(띄어쓰기로 구분해서 여러 개 가능)),
: /MIR(목적지 폴더에 복사할 폴더의 디렉토리 구조와 파일을 모두 복사, 복사할 폴더에서 없어진 파일/폴더는 목적지 폴더에서도 없어짐
: .\: 현재 폴더

: 로컬 저장소에 있는 파일들을 붙여넣을 폴더로 복사
: 아래 명령어로 깔끔하게 모드에 필요한 파일들만 옮길 수 있습니다
robocopy 저장소_경로 릴리즈_빌드_폴더_경로 /xf ".gitignore" "preview.png" /xd ".git" "exported" "fmod" "inv_img_psd"
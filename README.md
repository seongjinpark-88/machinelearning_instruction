#Deep Learning을 통한 언어분석

기본적인 신경망 모델들을 `keras`를 이용하여 구현하였으며, 실제 언어학적인 측면에서 어떻게 활용할 수 있는지 살펴보는 것이 복적입니다. 

## Docker 

코드 실행에 필요한 툴은 `Docker`를 이용해서 설치할 수 있습니다. `Docker`를 설치 및 사용하는 방법은 [이 곳](https://github.com/seongjinpark-88/kaldi_instructional)을 참고해주세요. 


## Installation

모든 파일들은 github를 통해서 내려받을 수 있습니다. 다음과 같은 순서로 명령어를 실행하시면 됩니다. 

* **Note:** `kaldi` 워크샵을 진행하지 않으신 분들은 먼저 `sudo mkdir /scratch` 명령어로 `scratch` 폴더를 만드셔야합니다. 

```bash
cd /scratch

# Download git 
sudo git clone https://github.com/seongjinpark-88/machinelearning_instruction

# 폴더로 이동
cd machinelearning_instruction

# branch 다운로드
sudo git fetch

# 최신상태 업데이트
sudo git checkout
```

모든 관련 자료들은 앞으로 `/scratch/machinelearning_instruction` 폴더 아래에서 진행됩니다. 

* **Note:** `kaldi`에서와 마찬가지로 `Windows 10 Home`을 사용하시는 경우, 바탕화면에 `scratch` 폴더가 위치합니다. 그러므로 바탕화면의 `Docker Quickstart Terminal`을 관리자 권한으로 실행하신 후, 아래 명령어를 통해 `scratch` 폴더로 이동하시면 됩니다. 앞으로 `/scratch`로 표현된 부분을 `~/Desktop/scratch`로 입력하시면 됩니다. 

```bash
# Windows 10 Home
## 디렉토리를 생성하지 않으신 경우 아래 명령어로 생성합니다
mkdir ~/Desktop/scratch

cd ~/Desktop/scratch

## 이후는 sudo를 제외하고는 위의 명령어들과 같습니다


# Windows 10 Pro
## 디렉토리를 생성하지 않으신 경우 아래 명령어로 생성합니다
mkdir /c/Users/사용자이름/Desktop/scratch

cd /c/Users/사용자이름/Desktop/scratch

## 이후는 sudo를 제외하고는 Linux/Mac 명령어와 동일합니다
```

## Docker 및 Jupyter 실행

machinelearning_instruction/docker 폴더 안에는 `Docker` 환경을 구축할 수 있는 `build_container.sh` 파일이 포함되어 있습니다. 다음의 명령어를 입력하셔서 `Docker` 환경을 구축할 수 있습니다. 

```bash
# docker 폴더로 이동
cd /scratch/machinelearning_instruction/docker

# Linux/Mac
sudo ./build_container.sh

# Windows
./build_container.sh -w

```

실행하는 방법은 `kaldi`와 동일합니다. 미리 세팅은 이루어져 있으므로, `/scratch/machinelearning_instruction` 폴더로 이동하신 이후 `./start_container.sh` 명령어로 `Docker`를 실행하시고, `./start_jupyter` 명령어로 jupyter 노트북을 실행하시면 됩니다. 

**Note:** `kaldi`와 마찬가지로 Jupyter를 실행하는 노트북의 주소가 `0.0.0.0:8880` 대신 알파벳과 숫자의 나열로 나타나는 경우가 있습니다. `https://49xhjx~:8880/?token~` 부분을 복사하신 이후, `:8880` 앞의 부분을 0.0.0.0으로 변경하여 다시 열어주시면 됩니다. 

**Note:** Windows 10 Home 버전 사용자이신 경우, Docker Toolbox에서 지정한 특정 IP로 열어주셔야 합니다. 일반적으로 `192.168.99.100`으로 설정되어 있습니다(Docker Toolbox 시작시에 확인 가능합니다). 다른 숫자를 확인하신 경우, 해당 주소를 `0.0.0.0` 대신 입력하시면 됩니다. Windows 10 Pro 사용자이신 경우, `127.0.0.1`을 사용하시면 되겠습니다. 

## tmux 사용 (optional)

선택사항입니다. 편하신 경우 `kaldi` 내용을 참고하셔서 사용하시면 되겠습니다. 

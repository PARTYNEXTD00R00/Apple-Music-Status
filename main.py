import subprocess
import os

def isGetStatus():
    output = ""
    if os.path.exists("status.sh"):
        output = subprocess.check_output("./status.sh",text=True).strip()
        return output
    else:
        output = "스크립트 파일 존재 X"
        return output

if __name__ == "__main__":
    print(isGetStatus())
    

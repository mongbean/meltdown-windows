import subprocess
from pathlib import Path
def seperator():
    print("="*100)
asm_files = ["meltdown.asm", "util.asm"]

obj_files = [Path(f).with_suffix(".obj") for f in asm_files]

lib_name = "libkdump.lib"

for asm, obj in zip(asm_files, obj_files):
    print(f"Assembling {asm} -> {obj}")
    subprocess.run(["nasm", "-f", "win64", "-o", str(obj), asm], check=True)
seperator()
print(f"Creating static library {lib_name}")
subprocess.run("make", check=True)


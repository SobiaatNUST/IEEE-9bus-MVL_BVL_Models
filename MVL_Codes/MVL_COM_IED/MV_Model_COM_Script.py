import subprocess

# Number of models you want to run
num_models = 9

# Base names
model_prefix = "MV_Model_COM"
prop_file = "MV_Model_COM_Prop.pctl"
output_prefix = "MV_Model_COM"

for i in range(2, num_models + 1):
    model_file = f"{model_prefix}{i:02d}.pm"   # e.g., 9bus_BV_Model01.pm
    output_file = f"{output_prefix}{i:02d}.txt" # e.g., BV_Model01.txt

    cmd = [
        "storm",
        "--prism", model_file,
        "--prop", prop_file
    ]

    print(f"Running Storm for {model_file} ...")
    with open(output_file, "w") as out:
        subprocess.run(cmd, stdout=out, stderr=subprocess.STDOUT)

    print(f"Results saved to {output_file}")

print("All models processed successfully.")

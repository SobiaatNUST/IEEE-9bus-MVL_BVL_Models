import subprocess

# Number of models you want to run
num_models = 6

# Base names
model_prefix = "9bus_BV_Model"
prop_file = "Props.pctl"
output_prefix = "BV_Model"

for i in range(1, num_models + 1):
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

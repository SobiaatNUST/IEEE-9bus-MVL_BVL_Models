## 1. IEEE-9bus-MVL_BVL_Models
Formal models (MVL/BVL) of the IEEE-9-bus protection network with Storm verification pipelines and reproducibility instructions.
IEEE-9bus-MVL_BVL_Models provides MVL- and BVL-based PRISM models of the IEEE 9-bus protection system (digital relays, breakers, communication, control), embedded with an auxiliary protection algorithm. The repository includes Storm model-checker scripts and step-by-step instructions to reproduce verification and analysis results (state/transition counts, run times, and property outcomes). 


 ## 2. Tool Requirements

To execute the model files and obtain results:

- **PRISM Model Checker**: Version 4.8  
  Download from: [https://www.prismmodelchecker.org](https://www.prismmodelchecker.org)
- **Java Runtime**: Required by PRISM (Java 8+)
- **Command Line**: Windows Command Prompt or a Bash-compatible shell (Linux/macOS)

- **Storm Model Checker**
     Download from: [https://www.stormchecker.org](https://www.stormchecker.org)
- Storm natively supports PRISM language and PCTL properties; often faster on    large model
- After installation, ensure prism (PRISM) and/or storm (Storm) are on your PATH.


## 3. Example: Running a Single PRISM Model

To manually run one PRISM model and property file from the command line:


- prism XYZ.pm XYZ.pctl -const IED=0.1,COM=0.1 -javamaxmem 8g -ex > XYZ_results_prism.txt

- storm --prism XYZ.pm --prop XYZ.pctl --constants IED=0.1,COM=0.1 --engine sparse --precision 1e-10 --stats > XYZ_results_storm.txt

These commands parses the model and property, evaluates the properties, and saves the results in a text file.

## 4. Raw Results and Post-Processing

Each model execution produces raw probabilistic results per fault point . To obtain the final comparison results presented in the paper, further aggregation and computation (e.g., subtraction, percentage difference) is required. 

## 5. Automated Batch Scripts

To automate the analysis for each case, we provide Linux bash script and python script. Each script executes all model-property pairs for the different cases  and stores the raw output for each case in a separate file.


## Contributing

Please feel free to submit issues or pull requests if you have suggestions for improvements or bug fixes.

## Citation

If you use these models in your research, please cite our work. [https://github.com/SobiaatNUST/IEEE-9bus-MVL_BVL_Models](https://github.com/SobiaatNUST/IEEE-9bus-MVL_BVL_Models)


## License

This project is licensed under the MIT License - see the LICENSE file for details.

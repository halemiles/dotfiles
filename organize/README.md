## Merge and Replace Placeholders in YAML Files

This Python script allows you to merge a template YAML file with a values YAML file, replacing placeholders in the template with specified values.

### Prerequisites
- Python 3.x
- `organize-tool` library (install using `pip install organize-tool`)

### Usage

1. **Run the Script**

   The script takes three arguments:
   - `<template_file>`: The path to the template YAML file containing placeholders.
   - `<values_file>`: The path to the YAML file containing values for the placeholders.
   - `<output_file>`: The desired output file name for the merged YAML with replaced placeholders.

   Example usage:
   ```bash
   python merge_yaml.py template.yaml values.yaml output_merged.yaml
   ```

   Replace `template.yaml`, `values.yaml`, and `output_merged.yaml` with your actual file names and paths.

2. **View the Result**

   The script will replace the placeholders in the template file with the specified values from the values file and save the updated YAML content to the specified output file (`output_merged.yaml` in the example).

### Note

- Ensure that the placeholders in the template YAML file match the keys in the values YAML file for proper substitution.
- Adjust the template, values, and output file paths according to your file structure and naming conventions.

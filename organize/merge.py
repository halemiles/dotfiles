import yaml
import os
import sys

def replace_placeholders(obj, values):
    if isinstance(obj, dict):
        for key, value in obj.items():
            obj[key] = replace_placeholders(value, values)
    elif isinstance(obj, list):
        for i in range(len(obj)):
            obj[i] = replace_placeholders(obj[i], values)
    elif isinstance(obj, str) and obj.startswith("${") and obj.endswith("}"):
        env_var_name = obj[2:-1]
        if env_var_name in values:
            return values[env_var_name]
    return obj

def main(template_file, values_file, output_file):
    # Load the template YAML file
    with open(template_file, 'r') as template_file:
        template = yaml.safe_load(template_file)

    # Load the values YAML file
    with open(values_file, 'r') as values_file:
        values = yaml.safe_load(values_file)

    # Replace placeholders in the template with values
    updated_template = replace_placeholders(template, values)

    # Write the updated YAML to the specified output file
    with open(output_file, 'w') as updated_file:
        yaml.dump(updated_template, updated_file)

    print(f"Values from {values_file.name} replaced in {template_file.name}. Result saved to {output_file}.")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py <template_file> <values_file> <output_file>")
    else:
        template_file = sys.argv[1]
        values_file = sys.argv[2]
        output_file = sys.argv[3]
        main(template_file, values_file, output_file)

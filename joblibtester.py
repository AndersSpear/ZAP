from joblib import load

# Load the model
model = load('/home/fzlcentral/ZAP/ML detectors/rfc_gfw.joblib')

# Print model parameters
print(model)
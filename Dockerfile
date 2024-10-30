# Käytetään virallista TensorFlow GPU -kuvaa
FROM tensorflow/tensorflow:latest-gpu

# Asennetaan tarvittavat lisäkirjastot
RUN pip install numpy pandas matplotlib scikit-learn scipy
RUN pip install optuna seaborn keras tqdm requests tensorflow-addons
RUN pip install prophet catboost holidays
RUN pip install sktime

RUN apt-get update && apt-get install -y git

# Kopioidaan paikallinen työhakemisto konttiin
COPY . /ev_workspace

# Määritellään työhakemistoksi /workspace
WORKDIR /ev_workspace

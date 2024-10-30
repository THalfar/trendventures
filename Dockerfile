# Käytetään virallista TensorFlow GPU -kuvaa
FROM tensorflow/tensorflow:latest-gpu

# Päivitetään paketinhallinta ja asennetaan Git sekä tarvittavat Python-kirjastot kerralla
RUN apt-get update && apt-get install -y git && \
    pip install --no-cache-dir \
        numpy \
        pandas \
        matplotlib \
        scikit-learn \
        scipy \
        optuna \
        seaborn \
        keras \
        tqdm \
        requests \
        tensorflow-addons \
        prophet \
        catboost \
        holidays \
        sktime

# Kopioidaan paikallinen työhakemisto konttiin
COPY . /ev_workspace

# Määritetään työskentelyhakemistoksi /ev_workspace
WORKDIR /ev_workspace

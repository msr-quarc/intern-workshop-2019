# The same image used by mybinder.org
FROM mcr.microsoft.com/quantum/iqsharp-base:0.8.1906.2007-beta

# Make sure the contents of our repo are in ${HOME}
# Required for mybinder.org
COPY . ${HOME}
USER root
RUN chown -R ${USER} ${HOME} && \
    chmod +x ${HOME}/build/*.sh
USER ${USER}

# Pre-exec notebook to improve first-use start time
#RUN ${HOME}/build/prebuild-kata.sh DJ DeutschJozsaAlgorithmTutorial.ipynb

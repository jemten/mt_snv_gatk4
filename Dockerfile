FROM nfcore/base
LABEL description="Docker image containing all requirements for mt_snv_gatk4 pipeline"

COPY environment.yml /
RUN conda env update -n root -f /environment.yml && conda clean -a

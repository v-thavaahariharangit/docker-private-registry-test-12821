FROM public.ecr.aws/docker/library/python:3.15-slim@sha256:f48fda6d59b2b3437781d1c3ccf4aa0e26ae871de3cdd758b49ab45ee7291619
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install numpy==1.25.2 pandas==2.2.2 pymongo==4.6.3 xgboost==2.0.0 scikit-learn==1.5.2 gurobipy==12.0.1 gurobipy-pandas==1.2.2 toolz==0.12.0 configobj==5.0.6 networkx==2.8.8 dask==2024.11.2 psutil==7.0.0 pyarrow==19.0.1 rustworkx==0.16.0
COPY . .
ENV CONTAINER=1
ENV NODE_ENV production
CMD ["python", "message_handler.py"]

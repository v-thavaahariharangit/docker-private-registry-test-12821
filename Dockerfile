FROM public.ecr.aws/docker/library/python:3.11-slim@sha256:6d98ca198cea726f2c86da2699594339a7b7ff08e49728797b4ed6e3b5c3b62a
WORKDIR /app
RUN pip3 install --upgrade pip
RUN pip3 install numpy==1.25.2 pandas==2.2.2 pymongo==4.6.3 xgboost==2.0.0 scikit-learn==1.5.2 gurobipy==12.0.1 gurobipy-pandas==1.2.2 toolz==0.12.0 configobj==5.0.6 networkx==2.8.8 dask==2024.11.2 psutil==7.0.0 pyarrow==19.0.1 rustworkx==0.16.0
COPY . .
ENV CONTAINER=1
ENV NODE_ENV production
CMD ["python", "message_handler.py"]

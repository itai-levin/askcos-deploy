#!/bin/bash
docker run -d --name serving_base tensorflow/serving
docker cp data/models/bkms serving_base:/models/template_relevance
docker commit --change "ENV MODEL_NAME template_relevance" serving_base template-relevance-bkms
docker-compose up -d template-relevance-bkms

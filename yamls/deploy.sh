gcloud container clusters get-credentials hippo --zone us-central1-a --project $GOOGLE_CLOUD_PROJECT \
&& kubectl apply -f ../yamls/hippo.yaml \
&& gcloud container clusters get-credentials lion --zone us-central1-a --project $GOOGLE_CLOUD_PROJECT \
&& kubectl apply -f ../yamls/lion.yaml \
&& gcloud container clusters get-credentials mongoose --zone us-central1-a --project $GOOGLE_CLOUD_PROJECT \
&& kubectl apply -f ../yamls/mongoose.yaml \
&& gcloud container clusters get-credentials narwhal --zone us-central1-a --project $GOOGLE_CLOUD_PROJECT \
&& kubectl apply -f ../yamls/narwhal.yaml

ssh into cloud
ssh -i ~/.ssh/gcloudssh  ben.duffey@35.237.144.117

download stuff from google cloud to downloads
gcloud compute scp --recurse meta-engine:/tmp/run_google_reports.log  /Users/benjamin_duffey/Downloads/

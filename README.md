# See Continuous Integration Branch

With completed CI/CD we can implement further observability using Elastic and visualize metrics in Kibana.
![image](https://github.com/ohakawati/CI-CD_ComputeEngine/assets/89810188/7381621b-5ab3-4abe-8e0a-58fe64a8aafd)
		○ Make sure APM Server is running before you start implementing the APM agents
		○ Install the APM agent for Python as a dependency
			§ $pip install  elastic-apm[flask]
		○ Configure the agent
			# Initialize using environment variables
			fromelasticapm.contrib.flask importElasticAPM 
			app =Flask(__name__)
			apm =ElasticAPM(app) 
			# Or use ELASTIC_APM in your application's settingsfromelasticapm.contrib.flask importElasticAPM app.config['ELASTIC_APM']={
			'SERVICE_NAME':'my-service-name', 
			'SECRET_TOKEN':'WR0bGLWwa8HXDcvE3I', 
			'SERVER_URL':'https://1d9ed1010b004a10a19eda548bd1d274.apm.us-central1.gcp.cloud.es.io:443', 
			'ENVIRONMENT':'my-environment',} apm =ElasticAPM(app)
		○ The compute dataset is designed to fetch metrics for Compute Engine Virtual Machines in Google Cloud Platform. It contains all metrics exported from the GCP Cloud Monitoring API.
Install the agent on your host, configure it, and export to Kibana for visualization![image](https://github.com/ohakawati/CI-CD_ComputeEngine/assets/89810188/8304842c-d94b-449f-b897-76cc27dfb84c)

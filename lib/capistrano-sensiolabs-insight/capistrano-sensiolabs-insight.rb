require 'capistrano'
require 'colored'

Capistrano::Configuration.instance.load do
  namespace :sensio_labs_insight do
    desc 'Notify SensioLabs Insight of deployment'
    task :notify do
      abort 'Please specify :sensio_labs_insight_user_uuid'.red unless exists? :sensio_labs_insight_user_uuid
      abort 'Please specify :sensio_labs_insight_api_token'.red unless exists? :sensio_labs_insight_api_token
      abort 'Please specify :sensio_labs_insight_project_uuid'.red unless exists? :sensio_labs_insight_project_uuid
      abort 'Please specify :sensio_labs_insight_project_reference'.red unless exists? :sensio_labs_insight_project_reference
      run_locally %Q{\
curl -d "reference=#{sensio_labs_insight_project_reference}" -X POST -H "Accept: application/vnd.com.sensiolabs.insight+xml" "https://#{sensio_labs_insight_user_uuid}:#{sensio_labs_insight_api_token}@insight.sensiolabs.com/api/projects/#{sensio_labs_insight_project_uuid}/analyses" > /dev/null 2>&1\
          }
    end
  end
end
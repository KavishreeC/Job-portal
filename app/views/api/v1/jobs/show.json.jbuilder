json.extract!  @job, :name, :position, :desc, :count

json.users @job.users, :email

json.partial! "job_applications/job_application.json.jbuilder",   applicants: @job.job_applications


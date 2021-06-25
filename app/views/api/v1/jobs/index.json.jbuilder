json.array! @jobs, :name, :position, :desc

json.partial! 'jobs/job', collection: @jobs, as: :job

json.partial! 'jobs/jobdetails', collection: @jobs, as: :jobdetails

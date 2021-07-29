class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
  # 自动重试遇到死锁的作业
   # retry_on ActiveRecord::Deadlocked

   # 如果底层记录不再可用，大多数作业可以安全地忽略
   #discard_on ActiveJob::DeserializationError
end

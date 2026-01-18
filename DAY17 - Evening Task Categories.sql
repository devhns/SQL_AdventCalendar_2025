select *, 
  case when noise_level < 50 then 'Calm'
  else 'Chaotic'
  END as classify
from evening_tasks

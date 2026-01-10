SELECT a.elf_name, 
  (case
  when b.return_date is not null then b.return_date
  else "Still resting" 
  END ) as return_date
  from 
elves as a  left join vacations as b
on a.elf_id = b.elf_id 
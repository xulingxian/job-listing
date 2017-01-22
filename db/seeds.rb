# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "这个种子档会自动建立一个admin账号， 并且创建 10 个 public jobs, 以及10个 hidden jobs"

create_account = User.create([email: 'xulingxian@qq.com', password: '620719', password_confirmation: '620719', is_admin: 'true'])
puts "Admin account is created successfully!"

job_info = [
  '招聘RoR工程师',
  '招聘文案设计',
  '招聘UI设计师',
  '招聘Android开发工程师',
  '招聘产品经理',
  '招聘前端开发工程师',
  '招聘市场营销',
  '招聘php后台研发工程师',
  '招聘python工程师',
  '招聘高级JAVA研发工程师',
  '招聘高级数据挖掘工程师',
  '招聘高级客服经理'
]

create_jobs = for i in 1..10 do

  Job.create!([title: job_info[rand(job_info.length)], description: "這是用種子建立的第 #{i} 個Public工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jos = for i in 1..10 do
  Job.create!([title: job_info[rand(job_info.length)], description: "這是用種子建立的第 #{i+10} 個Hidden工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden jobs created."

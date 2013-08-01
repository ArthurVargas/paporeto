Category.destroy_all
Category.create(name:'Notícias')
Category.create(name:'Esportes')
Category.create(name:'Entretenimento')

Article.destroy_all

100.times do |n|
  Article.create(title:"Lorem #{n}" , category: Category.all.sample)
end
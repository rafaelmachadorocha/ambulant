# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'

Review.destroy_all
Product.destroy_all
Message.destroy_all
Chat.destroy_all
Order.destroy_all
Inventory.destroy_all
User.destroy_all

puts "Creating Users and Inventories..."

ovos1 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598906818/Ambulant%20seed/Carro-do-ovo_qqwvhr.jpg"
ovos2 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598979449/ovos_1_s9hylr.jpg"
ovos3 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598979609/aves_ovos_ernesto_de_souza--_jaoye0.jpg"
pamonha1 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598979523/8e3pemkdz3fzj64wsdditv0lp_doz1zy.jpg"
pamonha2 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598979523/pamonha-com-queijo_gfnmzu.jpg"
pamonha3 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598979818/pamonha-comida-de-rua-alex-silva-estadao_j9wuco.jpg"
limpeza2 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598906921/Ambulant%20seed/limpeza_ecq43i.jpg"
limpeza1 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598906921/Ambulant%20seed/limpeza3_myxgah.jpg"
sand1 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598907069/Ambulant%20seed/capa-43_czbbsn.jpg"
sand2 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1599674665/Ambulant%20seed/sandwich_ay980q.jpg"
churras2 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598907178/Ambulant%20seed/vendedor-ambulante-que-cozinha-carne-em-espetos-127352487_jzzr7k.jpg"
churras3 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598907178/Ambulant%20seed/3368_espetinhos-geral_vqaox9.jpg"
churras1 = "https://res.cloudinary.com/dkljkjqlg/image/upload/v1598907214/Ambulant%20seed/churrasquinho_fyw9ji.jpg"

ovos = [ovos1, ovos2, ovos3]
pamonha =[pamonha1, pamonha2, pamonha3]
limpeza = [limpeza1, limpeza2]
churrasco = [churras1, churras2, churras3]
sanduiche = [sand1, sand2]


u1 = User.new(email: 'jose@seller.com', password: '123123', name: 'José Silva',
              seller: true, bio: 'Adoro servir meus clientes e trazer produtos da melhor qualidade até eles.')
u2 = User.new(email: 'maria@seller.com', password: '123123', name: 'Maria Oliveira',
              seller: true, bio: 'Estou sempre disponível pra atender os pedidos dos clientes, com rapidez e bom atendimento.')
u3 = User.new(email: 'antonio@seller.com', password: '123123', name: 'Antônio Pereira',
              seller: true, bio: 'Eu e minha esposa temos muito gosto em ir por todos os bairros e distribuir bons produtos e alegria.')
u4 = User.new(email: 'joao@seller.com', password: '123123', name: 'João Santos',
              seller: true, bio: 'Sempre trabalhei com vendas, de casa em casa, e estou pronto para servir ainda mais, agora, com o Ambulant.')
u5 = User.new(email: 'ana@seller.com', password: '123123', name: 'Ana Maria Santos',
              seller: true, bio: 'Meus produtos são todos feitos e vendidos com muito carinho')
u6 = User.new(email: 'ricardo@seller.com', password: '123123', name: 'Ricardo Marinho',
              seller: true, bio: 'Adoro servir meus clientes e trazer meus produtos com a melhor qualidade até eles.')
u7 = User.new(email: 'bruna@buyer.com', password: '123123', name: 'Bruna Carvalho',
                  bio: 'Chegando agora para conhecer o Ambulant, e por enquanto estou adorando!')
u8 = User.new(email: 'elena@buyer.com', password: '123123', name: 'Elena Carneiro',
                  bio: 'Chegando agora para conhecer o Ambulant, e por enquanto estou adorando!')
u9 = User.new(email: 'marcos@buyer.com', password: '123123', name: 'Marcos Silveira',
                  bio: 'Chegando agora para conhecer o Ambulant, e por enquanto estou adorando!')
u10 = User.new(email: 'renata@buyer.com', password: '123123', name: 'Renata Queiroz',
                  bio: 'Chegando agora para conhecer o Ambulant, e por enquanto estou adorando!')
u11 = User.new(email: 'zegalinha@seller.com', password: '123123', name: 'José SiIva',
              seller: true, bio: 'Adoro servir meus clientes e trazer produtos da melhor qualidade até eles.')



photo1 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599837571/Ambulant%20seed/ze_galinha_wubidw.jpg')
photo2 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599744328/Ambulant%20seed/Captura_de_Tela_2020-09-08_a%CC%80s_09.37.47_tsl0zj.png')
photo3 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599744328/Ambulant%20seed/Captura_de_Tela_2020-09-08_a%CC%80s_09.36.31_z0mszq.png')
photo4 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599751454/joao_seller_ao1hml.jpg')
photo5 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599744326/Ambulant%20seed/Captura_de_Tela_2020-09-08_a%CC%80s_09.38.45_s9l7tt.png')
photo6 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599744326/Ambulant%20seed/Captura_de_Tela_2020-09-08_a%CC%80s_09.37.35_lzsaui.png')
photo11 = URI.open('https://res.cloudinary.com/dkljkjqlg/image/upload/v1599744326/Ambulant%20seed/Captura_de_Tela_2020-09-08_a%CC%80s_09.37.35_lzsaui.png')

u1.address = 'Rua Cotoxó, 580 - Perdizes, São Paulo - SP'
u1.photo.attach(io: photo1, filename: 'u1.jpg', content_type: 'image/jpg')
u1.save

u2.address = 'Rua Ministro Gastão Mesquita, 728 - Pompeia, São Paulo - SP'
u2.photo.attach(io: photo2, filename: 'u2.png', content_type: 'image/png')
u2.save

u3.address = 'Rua Cajaíba, 959 - Pompeia, São Paulo - SP'
u3.photo.attach(io: photo3, filename: 'u3.png', content_type: 'image/png')
u3.save

u4.address = 'Rua Campevas, 489 - Perdizes, São Paulo - SP'
u4.photo.attach(io: photo4, filename: 'u4.jpg', content_type: 'image/jpg')
u4.save

u5.address = 'Rua Raul Pompéia, 330 - Pompeia - São Paulo - SP'
u5.photo.attach(io: photo5, filename: 'u5.png', content_type: 'image/png')
u5.save

u6.address = 'Rua Coriolano, 215 - Vila Romana, São Paulo - SP'
u6.photo.attach(io: photo6, filename: 'u6.png', content_type: 'image/png')
u6.save

u7.address = 'Rua Cotoxó, 600 - Perdizes - Perdizes, São Paulo - SP'
u7.save

u8.address = 'Rua Cajaíba, 851 - Pompeia, São Paulo - SP'
u8.save

u9.address = 'Rua Aimberê, 507 - Perdizes, São Paulo - SP'
u9.save

u10.address = 'Rua Raul Pompéia, 300 - Pompeia, São Paulo - SP'
u10.save

u11.address = 'Rua Vergueiro, 2729 - Vila Mariana, São Paulo - SP'
u11.photo.attach(io: photo11, filename: 'u11.jpg', content_type: 'image/jpg')
u11.save


i1 = Inventory.new(name: 'Carro dos Ovos', description: 'Sempre frescos, direto da granja!')
i1.selling_user = u1
ovos.each_with_index do |ovo_url, index|
  file = URI.open(ovo_url)
  i1.photos.attach(io: file, filename: "ovo#{index}.jpg", content_type: 'image/jpg')
end
i1.save!
Product.create!(name: "Caixa de Ovos Vermelhos", price: 12.00, inventory: i1)
Product.create!(name: "Caixa de Ovos Brancos", price: 10.00, inventory: i1)
u1.save

i2 = Inventory.new(name: 'Especialista em Produtos de Limpeza',
                   description: 'A maior variedade pra sua casa ficar limpinha!')
i2.selling_user = u2
limpeza.each_with_index do |limpeza_url, index|
  file = URI.open(limpeza_url)
  i2.photos.attach(io: file, filename: "limpeza#{index}.jpg", content_type: 'image/jpg')
end
i2.save!
Product.create!(name: "Desinfetante", price: 8.00, inventory: i2)
Product.create!(name: "Água sanitária", price: 5.00, inventory: i2)
u2.save

i3 = Inventory.new(name: 'Pamonha e Cia.',
                   description: 'Pamonha quentinha e outros produtos deliciosos para você.')
i3.selling_user = u3
pamonha.each_with_index do |pamonha_url, index|
  file = URI.open(pamonha_url)
  i3.photos.attach(io: file, filename: "pamonha#{index}.jpg", content_type: 'image/jpg')
end
i3.save!
Product.create!(name: "Curau", price: 3.00, inventory: i3)
Product.create!(name: "Pamonha de Piracicaba", price: 4.00, inventory: i3)
u3.save

i4 = Inventory.new(name: 'Churrasquinho de Primeira',
                   description: 'Carne, frango ou linguiça - tudo de primeira qualidade!')
i4.selling_user = u4
churrasco.each_with_index do |churrasco_url, index|
  file = URI.open(churrasco_url)
  i4.photos.attach(io: file, filename: "churrasco#{index}.jpg", content_type: 'image/jpg')
end
i4.save!
Product.create!(name: "Espetinho de frango", price: 5.00, inventory: i4)
Product.create!(name: "Espetinho de carne", price: 5.00, inventory: i4)
u4.save

i5 = Inventory.new(name: 'Olha o Sanduíche Natural',
                   description: 'Saudáveis e feitos com muito carinho.')
i5.selling_user = u5
sanduiche.each_with_index do |sanduiche_url, index|
  file = URI.open(sanduiche_url)
  i5.photos.attach(io: file, filename: "sanduiche#{index}.jpg", content_type: 'image/jpg')
end
i5.save!
Product.create!(name: "Queijo e salame", price: 6.00, inventory: i5)
Product.create!(name: "Palmito e cenoura", price: 6.00, inventory: i5)
u5.save

i6 = Inventory.new(name: 'Churrasquinho de Primeira',
                   description: 'Carne, frango ou linguiça - tudo de primeira qualidade!')
i6.selling_user = u6
churrasco.each_with_index do |churrasco_url, index|
  file = URI.open(churrasco_url)
  i6.photos.attach(io: file, filename: "churrasco#{index}.jpg", content_type: 'image/jpg')
end
i6.save!
Product.create!(name: "Espetinho de frango", price: 5.00, inventory: i6)
Product.create!(name: "Espetinho de carne", price: 5.00, inventory: i6)
u6.save

i11 = Inventory.new(name: 'Carro dos Ovos', description: 'Sempre frescos, direto da granja!')
i11.selling_user = u11
ovos.each_with_index do |ovo_url, index|
  file = URI.open(ovo_url)
  i11.photos.attach(io: file, filename: "ovo#{index}.jpg", content_type: 'image/jpg')
end
i11.save!
Product.create!(name: "Caixa de Ovos Vermelhos", price: 12.00, inventory: i1)
Product.create!(name: "Caixa de Ovos Brancos", price: 10.00, inventory: i1)
u11.save

# i7 = Inventory.new(name: 'Olha o Sanduíche Natural',
# description: 'Saudáveis e feitos com muito carinho.')
# i7.selling_user = u5
# sanduiche.each_with_index do |sanduiche_url, index|
#   file = URI.open(sanduiche_url)
#   i7.photos.attach(io: file, filename: "sanduiche#{index}.jpg", content_type: 'image/jpg')
# end
# i7.save!
# Product.create!(name: "Queijo e salame", price: 6.00, inventory: i7)
# Product.create!(name: "Palmito e cenoura", price: 6.00, inventory: i7)
# u7.save

# i8 = Inventory.new(name: 'Pamonha e Cia.',
# description: 'Pamonha quentinha e outros produtos deliciosos para você.')
# i8.selling_user = u2
# pamonha.each_with_index do |pamonha_url, index|
#   file = URI.open(pamonha_url)
#   i8.photos.attach(io: file, filename: "pamonha#{index}.jpg", content_type: 'image/jpg')
# end
# i8.save!
# Product.create!(name: "Curau", price: 3.00, inventory: i8)
# Product.create!(name: "Pamonha de Piracicaba", price: 4.00, inventory: i8)
# u8.save

# i9 = Inventory.new(name: 'Especialista em Produtos de Limpeza',
# description: 'A maior variedade pra sua casa ficar limpinha!')
# i9.selling_user = u3
# limpeza.each_with_index do |limpeza_url, index|
#   file = URI.open(limpeza_url)
#   i9.photos.attach(io: file, filename: "limpeza#{index}.jpg", content_type: 'image/jpg')
# end
# i9.save!
# Product.create!(name: "Desinfetante", price: 8.00, inventory: i9)
# Product.create!(name: "Água sanitária", price: 5.00, inventory: i9)
# u9.save

# i10 = Inventory.new(name: 'Ovos da Granja',
# description: 'Sempre frescos, direto da granja!')
# i10.selling_user = u4
# ovos.each_with_index do |ovo_url, index|
#   file = URI.open(ovo_url)
#   i10.photos.attach(io: file, filename: "ovo#{index}.jpg", content_type: 'image/jpg')
# end
# i10.save!
# Product.create!(name: "Caixa de Ovos Vermelhos", price: 12.00, inventory: i10)
# Product.create!(name: "Caixa de Ovos Brancos", price: 10.00, inventory: i10)
# u10.save

o1 = Order.new(completed: true, accepted: 2)
o1.inventory = i1
o1.user = u7
o1.save!

o2 = Order.new(completed: true, accepted: 2)
o2.inventory = i2
o2.user = u8
o2.save!

o3 = Order.new(completed: true, accepted: 2)
o3.inventory = i3
o3.user = u9
o3.save!

o4 = Order.new(completed: true, accepted: 2)
o4.inventory = i4
o4.user = u10
o4.save!

o5 = Order.new(completed: true, accepted: 2)
o5.inventory = i5
o5.user = u7
o5.save!

o6 = Order.new(completed: true, accepted: 2)
o6.inventory = i6
o6.user = u8
o6.save!

# o7 = Order.new(completed: false, accepted: 1)
# o7.inventory = i1
# o7.user = u9
# o7.save!

# o8 = Order.new(completed: false, accepted: 1)
# o8.inventory = i8
# o8.user = u10
# o8.save!

# o9 = Order.new(completed: false, accepted: 3)
# o9.inventory = i1
# o9.user = u7
# o9.save!

# o10 = Order.new(completed: false, accepted: 3)
# o10.inventory = i10
# o10.user = u10
# o10.save!

r1 = Review.new(description: "Excelente produto e qualidade!", rating:5 )
r1.order = o1
r1.save!

r2 = Review.new(description: "Excelente produto e qualidade!", rating:5 )
r2.order = o2
r2.save!

r3 = Review.new(description: "Muito bom!", rating:4 )
r3.order = o3
r3.save!

r4 = Review.new(description: "Muito bom!", rating:4 )
r4.order = o4
r4.save!

r5 = Review.new(description: "Vale a pena experimentar", rating:3 )
r5.order = o5
r5.save!

r6 = Review.new(description: "Poderia ser um pouco melhor", rating:2 )
r6.order = o6
r6.save!

# r7 = Review.new(description: "Poderia ser um pouco melhor", rating:2 )
# r7.order = o7
# r7.save!

# r8 = Review.new(description: "Poderia ser um pouco melhor", rating:2 )
# r8.order = o8
# r8.save!

# r9 = Review.new(description: "Não recomendo de forma alguma", rating:1 )
# r9.order = o9
# r9.save!

# r10 = Review.new(description: "Não recomendo de forma alguma", rating:1 )
# r10.order = o10
# r10.save!

puts "Users, inventories and everything else created, son!!"

100.times do
  name = Faker::Beer.name

  Beer.create(
    name: name,
    style: Faker::Beer.style,
    hop: Faker::Beer.hop,
    yeast: Faker::Beer.yeast,
    malts: Faker::Beer.malts,
    ibu: Faker::Beer.ibu,
    alcohol: Faker::Beer.alcohol
  )
end

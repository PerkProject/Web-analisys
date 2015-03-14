# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..50).each do
    Referrer.create(
        created_at: "#{rand(1.years).ago}",
        name: "Партнер",
        ip: "90.23.59.123",
        browser: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/600.3.18 (KHTML, like Gecko) Version/8.0.3 Safari/600.3.18"
        )
    Referrer.create(
        created_at: "#{rand(1.years).ago}",
        name: "Остальные", 
        ip: "129.90.83.202", 
        browser: "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0)"
        )
    Referrer.create(
        created_at: "#{rand(1.years).ago}",
        name: "Рекламное агенство",
        ip: "58.123.42.1",
        browser: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/600.3.18 (KHTML, like Gecko) Version/8.0.3 Safari/600.3.18")
end
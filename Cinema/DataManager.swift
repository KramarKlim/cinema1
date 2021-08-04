//
//  DataManager.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit
import CoreLocation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let movies: [FilmModel] = [
        FilmModel(title: "Бойцовский клуб", image: #imageLiteral(resourceName: "БойцовскийКлуб")),
        FilmModel(title: "Побег из Шоушенка", image: #imageLiteral(resourceName: "Побег")),
        FilmModel(title: "Джентельмены", image: #imageLiteral(resourceName: "Джентельмены")),
        FilmModel(title: "Американская история X", image: #imageLiteral(resourceName: "АмериканскаяИстория")),
        FilmModel(title: "Карты, деньги, 2 ствола", image: #imageLiteral(resourceName: "КартыДеньги")),
        FilmModel(title: "Остров проклятых", image: #imageLiteral(resourceName: "ОстровПроклятых")),
        FilmModel(title: "Довод", image: #imageLiteral(resourceName: "Довод")),
        FilmModel(title: "Интерстеллар", image: #imageLiteral(resourceName: "интерстеллар"))
    ]
    
    let dataInterstellarToday: [TimeModel] = [
        TimeModel(time: "13:30", price: 230),
        TimeModel(time: "17:20", price: 210),
        TimeModel(time: "20:30", price: 270)
    ]
    
    let dataInterstellarTommorow: [TimeModel] = [
        TimeModel(time: "15:00", price: 240),
        TimeModel(time: "19:00", price: 340)
    ]
    
    let interstellarImages: [String] = [
        "https://b1.filmpro.ru/c/259575.1200xp.jpg",
        "https://cdn.vdmsti.ru/image/2015/11/kkhi7/original-qno.jpg",
        "https://avatars.mds.yandex.net/get-zen_doc/1707291/pub_5e3a24ccd86469218fd63d27_5e3f88d03cf0eb04dcde0b41/scale_1200"
    ]
    
    let dataFightToday: [TimeModel] = [
        TimeModel(time: "14:40", price: 240),
        TimeModel(time: "18:50", price: 320)
    ]
    
    let dataFightTommorow: [TimeModel] = [
        TimeModel(time: "10:00", price: 120)
    ]
    
    let fightImages: [String] = [
        "https://static1.colliderimages.com/wordpress/wp-content/uploads/2019/10/fight-club-brad-pitt-social.jpg?q=50&fit=contain&w=750&h=375&dpr=1.5",
        "https://citaty.info/files/portraits/tyler-durden-narrator-fight-club-02.jpeg",
        "https://images.vanityfair.it/wp-content/uploads/2019/08/31203057/Fight-Club_Land.jpg",
        "https://www.meme-arsenal.com/memes/6bab8c6faf7e12aecce5ad912670e1db.jpg"
    ]
    
    let escapeToday: [TimeModel] = [
        TimeModel(time: "10:10", price: 140),
        TimeModel(time: "12:30", price: 200),
        TimeModel(time: "16:00", price: 250)
    ]
    
    let ecapeTommorow: [TimeModel] = [
        TimeModel(time: "16:40", price: 250),
        TimeModel(time: "19:10", price: 310),
        TimeModel(time: "22:00", price: 360)
    ]
    
    let escapeImage: [String] = [
        "https://avatars.mds.yandex.net/get-ott/1672343/2a0000016b03d1f5365474a90d26998e2a9f/1344x756",
        "https://static3.coolconnections.ru/images/11582/standard/hd/5f7029b20e7d0631959782c87babba3b892acaba.jpg?1569233887",
        "https://www.film.ru/sites/default/files/images/280498_full.jpg",
        "https://click-or-die.ru/app/uploads/2018/09/ps3.jpg"
    ]
    
    let gentelmenToday: [TimeModel] = [
        TimeModel(time: "8:00", price: 100)
    ]
    
    let gentelmenTomorrow: [TimeModel] = [
        TimeModel(time: "9:00", price: 140),
        TimeModel(time: "11:20", price: 190)
    ]
    
    let gentelmenImage = [
        "https://b1.filmpro.ru/c/823212.700xp.jpg",
        "https://images11.esquire.ru/upload/img_cache/bed/bed8471b74afc4ce04f1e0205f3fbc45_ce_3000x1871x0x78_cropped_960x600.jpg",
        "https://lh3.googleusercontent.com/proxy/8hHv9wxqqjlB5LX4lOPwnQ2RJBmWUR8nsrW-9O3EAdjzMyBJ923C-vS4uWYmUBY9CyDwOrLRv8rAw9xscwksCtDemd7Relh4LuP1J7XrJSskD0TmF83CGVA",
        "https://www.film.ru/sites/default/files/images/The_Gentlemen_031.jpg",
        "https://u.kanobu.ru/editor/images/19/c49889de-25bd-4fe8-bd1f-a29876de4a79.jpg"
    ]
    
    let americanToday = [
        TimeModel(time: "12:00", price: 200),
        TimeModel(time: "15:50", price: 240)
    ]
    
    let americanTomorrow = [
        TimeModel(time: "19:30", price: 320)
    ]
    
    let americanImage = [
        "https://i.ytimg.com/vi/gjx9_UN4i6M/maxresdefault.jpg",
        "https://www.spletnik.ru/img/__post/2c/2cf1c6d9bc635896b1413831bc25757e_919.jpg",
        "https://www.film.ru/sites/default/files/movies/frames/american_history_x_06.jpg",
        "https://www.kino-teatr.ru/movie/kadr/27551/167025.jpg"
    ]
    
    let cardsToday = [
        TimeModel(time: "10:30", price: 150),
        TimeModel(time: "12:00", price: 210),
        TimeModel(time: "22:30", price: 340)
    ]
    
    let cardsTomorrow = [
        TimeModel(time: "17:00", price: 210),
        TimeModel(time: "19:10", price: 340),
        TimeModel(time: "23:40", price: 410)
    ]
    
    let cardsImage = [
        "https://avatars.mds.yandex.net/get-ott/224348/2a00000162250eeb865b8f969cca0323b422/1344x756",
        "https://avatars.mds.yandex.net/get-kinopoisk-post-img/1101236/fc03e4e30ac2a0d1890dc30d0a573a34/960x540",
        "https://www.kino-teatr.ru/art/3026/bg.jpg",
        "https://cdn.maximonline.ru/75/56/87/7556877770cf63cd68fd51d8c7fba9a2/1196x830_0xac120005_14942203331528086552.jpg"
    ]
    
    let islandToday = [
        TimeModel(time: "16:00", price: 210),
        TimeModel(time: "18:50", price: 320)
    ]
    
    let islandTomorrow = [
        TimeModel(time: "11:00", price: 170),
        TimeModel(time: "19:20", price: 300)
    ]
    
    let islandImage = [
        "https://nedelya40.ru/wp-content/uploads/2020/06/a043d08784f871e307eb.jpg",
        "https://www.film.ru/sites/default/files/images/Shutter%20Island.jpg",
        "https://b1.filmpro.ru/c/54450.560x420.jpg"
    ]
    
    let dovodToday = [
        TimeModel(time: "18:00", price: 290),
        TimeModel(time: "21:30", price: 350)
    ]
    
    let dovodTomorrow = [
        TimeModel(time: "12:50", price: 250)
    ]
    
    let dovodImage = [
        "https://avatars.mds.yandex.net/get-kinopoisk-post-img/1345014/2a7d65e11819b89d3bf4206a71f69ed9/960x540",
        "https://cdn21.img.ria.ru/images/07e4/06/13/1573181939_5:0:1649:925_1920x0_80_0_0_978c8793f54e52199355e530303a469d.jpg",
        "https://img.gazeta.ru/files3/716/13233716/upload-MV5BNzAwM2EyOGMtMDA4My00YmYzLWI5MmYtNzYxMTNkM2UwMDNjXkEyXkFqcGdeQXVyODUxNjcxNjE_-pic4_zoom-1500x1500-57910.jpg",
        "https://realnoevremya.ru/uploads/articles/17/fb/e1341c1aaa343c26.jpg"
    ]
    
    let fightDescription = "Терзаемый хронической бессонницей и отчаянно пытающийся вырваться из мучительно скучной жизни клерк встречает некоего Тайлера Дардена, харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а саморазрушение — единственное, ради чего стоит жить."
    
    let escapeDescription = "Бухгалтер Энди Дюфрейн обвинён в убийстве собственной жены и её любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решётки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, обладающий живым умом и доброй душой, находит подход как к заключённым, так и к охранникам, добиваясь их особого к себе расположения."
    
    let gentelmenDescription = "Талантливый выпускник Оксфорда, применив свой уникальный ум и невиданную дерзость, придумал нелегальную схему обогащения с использованием поместья обедневшей английской аристократии. Однако когда он решает продать свой бизнес влиятельному клану миллиардеров из США, на его пути встают не менее обаятельные, но жесткие джентльмены. Намечается обмен любезностями, который точно не обойдется без перестрелок и парочки несчастных случаев."
    
    let americanDescription = "Лидер местной банды скинхэдов Дерек Виньярд прочно удерживает авторитет в своем районе. Убежденный в своей правоте, он беспощадно расправляется с теми, кто имеет не белый цвет кожи. Независимость и смелость Дерека вызывают восхищение у его младшего брата Дэнни, который уже тоже сделал свой выбор."
    
    let cardsDescription = "Четверо молодых парней накопили каждый по 25 тысяч фунтов, чтобы один из них мог сыграть в карты с опытным шулером и матерым преступником, известным по кличке Гарри-Топор. Парень в итоге проиграл 500 тысяч, на уплату долга ему дали неделю."
    
    let islandDescription = "Два американских судебных пристава отправляются на один из островов в штате Массачусетс, чтобы расследовать исчезновение пациентки клиники для умалишенных преступников. При проведении расследования им придется столкнуться с паутиной лжи, обрушившимся ураганом и смертельным бунтом обитателей клиники."
    
    let dovodDescription = "Главный герой — секретный агент, который проходит жестокий тест на надежность и присоединяется к невероятной миссии. От ее выполнения зависит судьба мира, а для успеха необходимо отбросить все прежние представления о пространстве и времени."
    
    let interDescription = "Наше время на Земле подошло к концу, команда исследователей берет на себя самую важную миссию в истории человечества; путешествуя за пределами нашей галактики, чтобы узнать есть ли у человечества будущее среди звезд."
    
    let sofaImage: [UIImage] = [#imageLiteral(resourceName: "Interiors_Sofa_1-copy-5"), #imageLiteral(resourceName: "2887417")]
    
    let coordinateCinema: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 54.721319, longitude: 20.472418)
}

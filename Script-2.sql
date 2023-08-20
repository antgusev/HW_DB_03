INSERT INTO musical_genres (genre_id, name)
VALUES (101, 'Электроника'), (102, 'Рок'), (103, 'Поп-музыка'), (104, 'R&B и фанк');

INSERT INTO artists (artist_id, name_nickname)
VALUES (201, 'Moby'), (202, 'Fatboy Slim'), (203, 'Air'), (204, 'Morcheeba'), (205, 'Кино'), (206, 'Би-2'), (207, 'Аквариум'),
       (208, 'Coldplay'), (209, 'Radiohead'), (210, 'Beyonce'), (211, 'Madonna'), (212, 'Zivert'), (213, 'Cream Soda'), (214, 'Аигел'), (215, 'Обе две'),
       (216, 'UNKLE'), (217, 'Aurora'), (218, 'Rhye'), (219, 'Olafur Arnalds'), (220, 'Lianne La Havas'), (221, 'Алла Пугачёва'), (222, 'Валерий Леонтьев'),
       (223, 'Браво'), (224, 'Жанна Агузарова'), (226, 'Noname');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (101, 201), (101, 202), (101, 203), (101, 204), (101, 216), (101, 219), (102, 205), (102, 206), (102, 207), (102, 208), (102, 209), (102, 223), (102, 224),
       (103, 201), (103, 202), (103, 204), (103, 206), (103, 208), (103, 210), (103, 211), (103, 212), (103, 213), (103, 214), (103, 215), (103, 216), (103, 217),
       (103, 218), (103, 221), (103, 222), (103, 223), (103, 224), (104, 201), (104, 202), (104, 203), (104, 204), (104, 209), (104, 210), (104, 214), (104, 215),
       (104, 224), (104, 226);
           
INSERT INTO albums (album_id, name, year)
VALUES (301, 'All Visible Objects', 2020), (302, 'You ve Come a Long Way Baby', 1998), (303, 'Real Prayer', 2019), (304, 'Big Calm', 1996),
       (305, 'Последний герой', 1989), (306, '...И корабль плывёт', 2016), (307, 'Треугольник', 1981), (308, 'Ghost Stories', 2014), (309, 'A Moon Shaped Pool', 2016),
       (310, '4', 2012), (311, 'Music', 2000), (312, 'Vinyl #1', 2019), (313, 'Комета', 2019), (314, 'Эдем', 2019), (315, 'Мальчик', 2017), (316, 'Ronin', 2021),
       (317, 'WolfWalkers', 2020), (318, 'Home', 2021), (319, 'Broadchurch', 2014), (320, 'Blood', 2015), (321, 'Да!', 1998), (322, 'Дело вкуса', 1990),
       (323, 'BRAVO', 1987), (324, 'Русский альбом', 1990), (325, 'A Head Full of Dreams', 2015), (326, 'Test of Noname', 2022);

INSERT INTO album_artist (album_id, artist_id)
VALUES (301, 201), (302, 202), (303, 203), (304, 204), (305, 205), (306, 206), (307, 207), (308, 208), (309, 209), (310, 210), (311, 211),  (312, 212),  (313, 213),
       (314, 214), (315, 215), (316, 216), (317, 217), (318, 218), (319, 219), (320, 220), (321, 222), (323, 223), (324, 224), (325, 208), (325, 210), (326, 226);

INSERT INTO tracks (track_id, album_id, name, length)
VALUES (3011, 301, 'My Only Love', 309), (3012, 301, 'Forever', 298), (3021, 302, 'Praise You', 324), (3022, 302, 'Kalifornia', 353), (3031, 303, 'Asli Puja', 358),
       (3032, 303, 'Aabhari Hun', 315), (3041, 304, 'The Sea', 340), (3042, 304, 'Let Me See', 260), (3051, 305, 'Спокойная ночь', 384), (3052, 305, 'Печаль', 310),
       (3061, 306, 'Варвара', 302), (3062, 306, 'Мой друг', 292), (3071, 307, 'Мочалкин блюз', 222), (3072, 307, 'Поручик Иванов', 108), (3081, 308, 'Magic', 285),
       (3082, 308, 'Midnight', 294), (3251, 325, 'Hymn For The Weekend', 258), (3091, 309, 'Decks Dark', 281), (3092, 309, 'Daydreaming', 384), (3101, 310,'Countdown', 212),
       (3102, 310, 'End of Time', 224), (3111, 311, 'Nobody s Perfect', 298), (3112, 311, 'Music', 226), (3121, 312, 'Двусмысленно', 184), (3122, 312, 'Безболезненно', 253),
       (3131, 313, 'Прятки', 364), (3132, 313, 'Перелетная Птица', 240), (3141, 314, 'Моя любовь', 211), (3142, 314, 'На нашей стороне', 239), (3151, 315, 'Мальчик', 214),
       (3152, 315, 'Капитан', 233), (3161, 316, 'On My Knees', 300), (3162, 316, 'Find an Outsider', 458), (3171, 317, 'Our Forest', 264), (3172, 317, 'Follow Me', 207),
       (3181, 318, 'Beautiful', 261), (3182, 318, 'My Heart Bleeds', 223), (3191, 319, 'Main Theme', 182), (3192, 319, 'So Close', 232), (3201, 320, 'Tokyo', 269),
       (3202, 320, 'Wonderful', 256), (3211, 321, 'Ты мой сон', 203), (3212, 321, 'Счастье', 305), (3221, 322, 'Пaмять', 292), (3222, 322, 'Мapгapитa', 321),
       (3231, 323, 'Кошки', 167), (3232, 323, 'Верю я', 182), (3241, 324, 'Мне хорошо рядом с тобой', 346), (3242, 324, 'Вернись ко мне', 255), (3261, 326, 'myself', 300),
       (3262, 326, 'by myself', 290), (3263, 326, 'bemy self', 310), (3264, 326, 'myself by', 310), (3265, 326, 'by myself by', 310), (3266, 326, 'beemy', 250),
       (3267, 326, 'premyne', 250);

INSERT INTO collections (collection_id, name, year)
VALUES (401, 'Русский рок', 2019), (402, 'Сборник1', 2017), (403, 'Сборник2', 2020), (404, 'Others', 2020);

INSERT INTO track_collection (track_id, collection_id)
VALUES (3051, 401), (3052, 401), (3061, 401), (3062, 401), (3071, 401), (3072, 401), (3231, 401), (3012, 402), (3032, 402), (3041, 402), (3082, 402), (3091, 402),
       (3251, 403), (3161, 403), (3171, 403), (3201, 403), (3112, 403), (3121, 404), (3131, 404), (3152, 404), (3142, 404), (3061, 404);
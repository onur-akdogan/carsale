<?php

return [

    'accepted' => ':attribute kabul edilmelidir.',
    'accepted_if' => ':other :value olduğunda :attribute kabul edilmelidir.',
    'active_url' => ':attribute geçerli bir URL olmalıdır.',
    'after' => ':attribute :date tarihinden sonraki bir tarih olmalıdır.',
    'after_or_equal' => ':attribute :date tarihinden sonra veya bu tarihe eşit olmalıdır.',
    'alpha' => ':attribute sadece harflerden oluşmalıdır.',
    'alpha_dash' => ':attribute sadece harfler, rakamlar, tire ve alt çizgi içerebilir.',
    'alpha_num' => ':attribute sadece harfler ve rakamlar içerebilir.',
    'array' => ':attribute bir dizi olmalıdır.',
    'ascii' => ':attribute yalnızca tek baytlık alfanümerik karakterler ve semboller içermelidir.',
    'before' => ':attribute :date tarihinden önceki bir tarih olmalıdır.',
    'before_or_equal' => ':attribute :date tarihinden önce veya bu tarihe eşit olmalıdır.',
    'between' => [
        'array' => ':attribute :min ile :max arasında öğe içermelidir.',
        'file' => ':attribute :min ile :max kilobayt arasında olmalıdır.',
        'numeric' => ':attribute :min ile :max arasında olmalıdır.',
        'string' => ':attribute :min ile :max karakter arasında olmalıdır.',
    ],
    'boolean' => ':attribute alanı doğru veya yanlış olmalıdır.',
    'can' => ':attribute yetkisiz bir değer içeriyor.',
    'confirmed' => ':attribute doğrulaması eşleşmiyor.',
    'current_password' => 'Şifre yanlış.',
    'date' => ':attribute geçerli bir tarih olmalıdır.',
    'date_equals' => ':attribute :date tarihine eşit bir tarih olmalıdır.',
    'date_format' => ':attribute :format formatı ile eşleşmelidir.',
    'decimal' => ':attribute :decimal ondalık basamak içermelidir.',
    'declined' => ':attribute reddedilmelidir.',
    'declined_if' => ':other :value olduğunda :attribute reddedilmelidir.',
    'different' => ':attribute ve :other birbirinden farklı olmalıdır.',
    'digits' => ':attribute :digits basamak olmalıdır.',
    'digits_between' => ':attribute :min ile :max basamak arasında olmalıdır.',
    'dimensions' => ':attribute geçersiz görsel boyutlarına sahip.',
    'distinct' => ':attribute alanı yinelenen bir değere sahip.',
    'doesnt_end_with' => ':attribute şunlardan biriyle bitmemelidir: :values.',
    'doesnt_start_with' => ':attribute şunlardan biriyle başlamamalıdır: :values.',
    'email' => ':attribute geçerli bir e-posta adresi olmalıdır.',
    'ends_with' => ':attribute şu değerlerden biriyle bitmelidir: :values.',
    'enum' => 'Seçilen :attribute geçersiz.',
    'exists' => 'Seçilen :attribute geçersiz.',
    'file' => ':attribute bir dosya olmalıdır.',
    'filled' => ':attribute alanı doldurulmalıdır.',
    'gt' => [
        'array' => ':attribute alanı :value\'den fazla öğe içermelidir.',
        'file' => ':attribute :value kilobayttan büyük olmalıdır.',
        'numeric' => ':attribute :value\'den büyük olmalıdır.',
        'string' => ':attribute :value karakterden uzun olmalıdır.',
    ],
    'gte' => [
        'array' => ':attribute alanı :value veya daha fazla öğe içermelidir.',
        'file' => ':attribute :value kilobayt veya daha fazla olmalıdır.',
        'numeric' => ':attribute :value veya daha büyük olmalıdır.',
        'string' => ':attribute :value karakter veya daha uzun olmalıdır.',
    ],
    'image' => ':attribute bir görsel olmalıdır.',
    'in' => 'Seçilen :attribute geçersiz.',
    'in_array' => ':attribute alanı :other içinde mevcut değil.',
    'integer' => ':attribute bir tam sayı olmalıdır.',
    'ip' => ':attribute geçerli bir IP adresi olmalıdır.',
    'ipv4' => ':attribute geçerli bir IPv4 adresi olmalıdır.',
    'ipv6' => ':attribute geçerli bir IPv6 adresi olmalıdır.',
    'json' => ':attribute geçerli bir JSON dizesi olmalıdır.',
    'lowercase' => ':attribute küçük harf olmalıdır.',
    'lt' => [
        'array' => ':attribute alanı :value\'den az öğe içermelidir.',
        'file' => ':attribute :value kilobayttan küçük olmalıdır.',
        'numeric' => ':attribute :value\'den küçük olmalıdır.',
        'string' => ':attribute :value karakterden kısa olmalıdır.',
    ],
    'lte' => [
        'array' => ':attribute alanı :value\'den fazla öğe içermemelidir.',
        'file' => ':attribute :value kilobayttan büyük olmamalıdır.',
        'numeric' => ':attribute :value veya daha küçük olmalıdır.',
        'string' => ':attribute :value karakter veya daha kısa olmalıdır.',
    ],
    'mac_address' => ':attribute geçerli bir MAC adresi olmalıdır.',
    'max' => [
        'array' => ':attribute :max öğeden fazla olamaz.',
        'file' => ':attribute :max kilobayttan büyük olamaz.',
        'numeric' => ':attribute :max\'dan büyük olamaz.',
        'string' => ':attribute :max karakterden uzun olamaz.',
    ],
    'max_digits' => ':attribute :max basamaktan fazla olamaz.',
    'mimes' => ':attribute şu türde bir dosya olmalıdır: :values.',
    'mimetypes' => ':attribute şu türde bir dosya olmalıdır: :values.',
    'min' => [
        'array' => ':attribute en az :min öğe içermelidir.',
        'file' => ':attribute en az :min kilobayt olmalıdır.',
        'numeric' => ':attribute en az :min olmalıdır.',
        'string' => ':attribute en az :min karakter olmalıdır.',
    ],
    'min_digits' => ':attribute en az :min basamak içermelidir.',
    'missing' => ':attribute eksik olmalıdır.',
    'missing_if' => ':other :value olduğunda :attribute eksik olmalıdır.',
    'missing_unless' => ':other :value olmadıkça :attribute eksik olmalıdır.',
    'missing_with' => ':values mevcutken :attribute eksik olmalıdır.',
    'missing_with_all' => ':values mevcutken :attribute eksik olmalıdır.',
    'multiple_of' => ':attribute :value\'nin katı olmalıdır.',
    'not_in' => 'Seçilen :attribute geçersiz.',
    'not_regex' => ':attribute formatı geçersiz.',
    'numeric' => ':attribute bir sayı olmalıdır.',
    'password' => [
        'letters' => ':attribute en az bir harf içermelidir.',
        'mixed' => ':attribute en az bir büyük ve bir küçük harf içermelidir.',
        'numbers' => ':attribute en az bir rakam içermelidir.',
        'symbols' => ':attribute en az bir sembol içermelidir.',
        'uncompromised' => 'Verilen :attribute bir veri sızıntısında bulunmuş. Lütfen farklı bir :attribute seçin.',
    ],
    'present' => ':attribute alanı mevcut olmalıdır.',
    'prohibited' => ':attribute alanı yasaktır.',
    'prohibited_if' => ':other :value olduğunda :attribute alanı yasaktır.',
    'prohibited_unless' => ':other :values içinde olmadıkça :attribute alanı yasaktır.',
    'prohibits' => ':attribute alanı :other\'ın var olmasını engeller.',
    'regex' => ':attribute formatı geçersiz.',
    'required' => ':attribute alanı zorunludur.',
    'required_array_keys' => ':attribute alanı şunları içermelidir: :values.',
    'required_if' => ':other :value olduğunda :attribute alanı zorunludur.',
    'required_if_accepted' => ':other kabul edildiğinde :attribute alanı zorunludur.',
    'required_unless' => ':other :values içinde olmadıkça :attribute alanı zorunludur.',
    'required_with' => ':values mevcut olduğunda :attribute alanı zorunludur.',
    'required_with_all' => ':values mevcut olduğunda :attribute alanı zorunludur.',
    'required_without' => ':values mevcut olmadığında :attribute alanı zorunludur.',
    'required_without_all' => ':values değerlerinin hiçbiri mevcut olmadığında :attribute alanı zorunludur.',
    'same' => ':attribute ile :other eşleşmelidir.',
    'size' => [
        'array' => ':attribute :size öğe içermelidir.',
        'file' => ':attribute :size kilobayt olmalıdır.',
        'numeric' => ':attribute :size olmalıdır.',
        'string' => ':attribute :size karakter olmalıdır.',
    ],
    'starts_with' => ':attribute şu değerlerden biriyle başlamalıdır: :values.',
    'string' => ':attribute bir metin olmalıdır.',
    'timezone' => ':attribute geçerli bir saat dilimi olmalıdır.',
    'unique' => ':attribute zaten alınmış.',
    'uploaded' => ':attribute yüklenemedi.',
    'uppercase' => ':attribute büyük harf olmalıdır.',
    'url' => ':attribute geçerli bir URL olmalıdır.',
    'ulid' => ':attribute geçerli bir ULID olmalıdır.',
    'uuid' => ':attribute geçerli bir UUID olmalıdır.',

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'özelleştirilmiş mesaj',
        ],
    ],

    'attributes' => [],

];

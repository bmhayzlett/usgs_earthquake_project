class FlinnEngdahl

  def self.entry_type(request)
    case request.to_i
    when 0
      check_name(request)
    else
      check_number(request)
    end
  end

  def self.check_number(num)
    num = num.to_i
    if num >= 1 && num <= 50
      return {region_number: num}
    else
      return false
    end
  end

  def self.check_name(name)
    self.flinn_engdahl_seismic_regions.values.each do |value|
      return { region_name: value[:name] } if value[:name] == name
    end
    false
  end

  def self.get_region_number(region_name)
    self.flinn_engdahl_seismic_regions.each do |num, info|
      return num if info[:name] == region_name
    end
  end

  def self.flinn_engdahl_seismic_regions
    {
      1 =>{
        name: 'alaska - aleutian arc',
        ranges: [[1,17]]
      },
      2 =>{
        name: 'southeastern alaska to washington',
        ranges: [[18,29]]
      },
      3 =>{
        name: 'oregon, california and nevada',
        ranges: [[30,46]]
      },
      4 =>{
        name: 'baja california and gulf of california',
        ranges: [[47,52]]
      },
      5 =>{
        name: 'mexico - guatemala area',
        ranges: [[53,71], [730,730]]
      },
      6 =>{
        name: 'central america',
        ranges: [[72,83]]
      },
      7 =>{
        name: 'caribbean loop',
        ranges: [[84,101], [731,731]]
      },
      8 =>{
        name: 'andean south america',
        ranges: [[102,142]]
      },
      9 =>{
        name: 'extreme south america',
        ranges: [[143,146]]
      },
      10 =>{
        name: 'southern antilles',
        ranges: [[147,157], [732,732]]
      },
      11 =>{
        name: 'new zealand region',
        ranges: [[158,168]]
      },
      12 =>{
        name: 'kermadec - tonga - samoa basin area',
        ranges: [[169,179]]
      },
      13 =>{
        name: 'fiji islands area',
        ranges: [[180,182]]
      },
      14 =>{
        name: 'vanuatu islands',
        ranges: [[183,189]]
      },
      15 =>{
        name: 'bismarck and solomon islands',
        ranges: [[190,195]]
      },
      16 =>{
        name: 'new guinea',
        ranges: [[196,208]]
      },
      17 =>{
        name: 'caroline islands area',
        ranges: [[209,210]]
      },
      18 =>{
        name: 'guam to japan',
        ranges: [[211,216]]
      },
      19 =>{
        name: 'japan - kuril islands - kamchatka peninsula',
        ranges: [[217,230]]
      },
      20 =>{
        name: 'southwestern japan and ryukyu islands',
        ranges: [[231,241]]
      },
      21 =>{
        name: 'taiwan area',
        ranges: [[242,247]]
      },
      22 =>{
        name: 'philippine islands',
        ranges: [[248,260]]
      },
      23 =>{
        name: 'bornea - sulawesi',
        ranges: [[261,272]]
      },
      24 =>{
        name: 'sunda arc',
        ranges: [[273,293]]
      },
      25 =>{
        name: 'myanmar and southeast asia',
        ranges: [[294,301], [733,737]]
      },
      26 =>{
        name: 'india - xizand - sichuan - yunnan',
        ranges: [[302,319]]
      },
      27 =>{
        name: 'southern xinjiang to gansu',
        ranges: [[320,325]]
      },
      28 =>{
        name: 'lake issyk-kul to lake baykal',
        ranges: [[326,334]]
      },
      29 =>{
        name: 'western asia',
        ranges: [[335,356]]
      },
      30 =>{
        name: 'middle east - crimea - eastern balkans',
        ranges: [[357,375]]
      },
      31 =>{
        name: 'western mediterranean area',
        ranges: [[376,401]]
      },
      32 =>{
        name: 'atlantic ocean',
        ranges: [[402,414], [738,739]]
      },
      33 =>{
        name: 'indian ocean',
        ranges: [[415,436], [740,742]]
      },
      34 =>{
        name: 'eastern north america',
        ranges: [[438,527]]
      },
      35 =>{
        name: 'eastern south america',
        ranges: [[528,531]]
      },
      36 =>{
        name: 'northwestern europe',
        ranges: [[532,549]]
      },
      37 =>{
        name: 'africa',
        ranges: [[550,587], [743,755]]
      },
      38 =>{
        name: 'australia',
        ranges: [[588,610]]
      },
      39 =>{
        name: 'pacific basin',
        ranges: [[611,632]]
      },
      40 =>{
        name: 'arctic zone',
        ranges: [[633,655]]
      },
      41 =>{
        name: 'eastern asia',
        ranges: [[656,666]]
      },
      42 =>{
        name: 'northeastern asia, northern alaska to greeland',
        ranges: [[667,682]]
      },
      43 =>{
        name: 'southeastern & antarctic pacific ocean',
        ranges: [[683,692], [756,756]]
      },
      44 =>{
        name: 'galapagos islands area',
        ranges: [[693,699], [757,757]]
      },
      45 =>{
        name: 'macquarie loop',
        ranges: [[700,702]]
      },
      46 =>{
        name: 'andaman islands to sumatera',
        ranges: [[703,708]]
      },
      47 =>{
        name: 'baluchistan',
        ranges: [[709,712]]
      },
      48 =>{
        name: 'hindu kush and pamir area',
        ranges: [[713,720]]
      },
      49 =>{
        name: 'northern eurasia ',
        ranges: [[721,726]]
      },
      50 =>{
        name: 'antarctica',
        ranges: [[727,729]]
      }
    }
  end

  def self.flinn_engdahl_sub_regions
    {
     'CENTRAL ALASKA' =>  1,
     'SOUTHERN ALASKA' =>  1,
     'BERING SEA' =>  1,
     'KOMANDORSKY ISLANDS REGION' =>  1,
     'NEAR ISLANDS, ALEUTIAN ISLANDS' =>  1,
     'RAT ISLANDS, ALEUTIAN ISLANDS' =>  1,
     'ANDREANOF ISLANDS, ALEUTIAN IS.' =>  1,
     'PRIBILOF ISLANDS, ALASKA REGION' =>  1,
     'FOX ISLANDS, ALEUTIAN ISLANDS' =>  1,
     'UNIMAK ISLAND REGION, ALASKA' => 1,
     'BRISTOL BAY' => 1,
     'ALASKA PENINSULA' => 1,
     'KODIAK ISLAND REGION, ALASKA' => 1,
     'KENAI PENINSULA, ALASKA' => 1,
     'GULF OF ALASKA' => 1,
     'SOUTH OF ALEUTIAN ISLANDS' => 1,
     'SOUTH OF ALASKA' => 1,
     'SOUTHERN YUKON TERRITORY, CANADA' => 2,
     'SOUTHEASTERN ALASKA' => 2,
     'OFF COAST OF SOUTHEASTERN ALASKA' => 2,
     'WEST OF VANCOUVER ISLAND' => 2,
     'QUEEN CHARLOTTE ISLANDS REGION' => 2,
     'BRITISH COLUMBIA, CANADA' => 2,
     'ALBERTA, CANADA' => 2,
     'VANCOUVER ISLAND, CANADA REGION' => 2,
     'OFF COAST OF WASHINGTON' => 2,
     'NEAR COAST OF WASHINGTON' => 2,
     'WASHINGTON-OREGON BORDER REGION' => 2,
     'WASHINGTON' => 2,
     'OFF COAST OF OREGON' => 3,
     'NEAR COAST OF OREGON' => 3,
     'OREGON' => 3,
     'WESTERN IDAHO' => 3,
     'OFF COAST OF NORTHERN CALIFORNIA' => 3,
     'NEAR COAST OF NORTHERN CALIF.' => 3,
     'NORTHERN CALIFORNIA' => 3,
     'NEVADA' => 3,
     'OFF COAST OF CALIFORNIA' => 3,
     'CENTRAL CALIFORNIA' => 3,
     'CALIFORNIA-NEVADA BORDER REGION' => 3,
     'SOUTHERN NEVADA' => 3,
     'WESTERN ARIZONA' => 3,
     'SOUTHERN CALIFORNIA' => 3,
     'CALIFORNIA-ARIZONA BORDER REGION' => 3,
     'CALIF.-BAJA CALIF. BORDER REGION' => 3,
     'W. ARIZONA-SONORA BORDER REGION' => 3,
     'OFF W. COAST OF BAJA CALIFORNIA' => 4,
     'BAJA CALIFORNIA, MEXICO' => 4,
     'GULF OF CALIFORNIA' => 4,
     'SONORA, MEXICO' => 4,
     'OFF COAST OF CENTRAL MEXICO' => 4,
     'NEAR COAST OF CENTRAL MEXICO' => 4,
     'REVILLA GIGEDO ISLANDS REGION' => 5,
     'OFF COAST OF JALISCO, MEXICO' => 5,
     'NEAR COAST OF JALISCO, MEXICO' => 5,
     'NEAR COAST OF MICHOACAN, MEXICO' => 5,
     'MICHOACAN, MEXICO' => 5,
     'NEAR COAST OF GUERRERO, MEXICO' => 5,
     'GUERRERO, MEXICO' => 5,
     'OAXACA, MEXICO' => 5,
     'CHIAPAS, MEXICO' => 5,
     'MEXICO-GUATEMALA BORDER REGION' => 5,
     'OFF COAST OF MEXICO' => 5,
     'OFF COAST OF MICHOACAN, MEXICO' => 5,
     'OFF COAST OF GUERRERO, MEXICO' => 5,
     'NEAR COAST OF OAXACA, MEXICO' => 5,
     'OFF COAST OF OAXACA, MEXICO' => 5,
     'OFF COAST OF CHIAPAS, MEXICO' => 5,
     'NEAR COAST OF CHIAPAS, MEXICO' => 5,
     'GUATEMALA' => 5,
     'NEAR COAST OF GUATEMALA' => 5,
     'NORTHERN EAST PACFIC RISE' => 5,
     'HONDURAS' => 6,
     'EL SALVADOR' => 6,
     'NEAR COAST OF NICARAGUA' => 6,
     'NICARAGUA' => 6,
     'OFF COAST OF CENTRAL AMERICA' => 6,
     'OFF COAST OF COSTA RICA' => 6,
     'COSTA RICA' => 6,
     'NORTH OF PANAMA' => 6,
     'PANAMA-COSTA RICA BORDER REGION' => 6,
     'PANAMA' => 6,
     'PANAMA-COLOMBIA BORDER REGION' => 6,
     'SOUTH OF PANAMA' => 6,
     'YUCATAN PENINSULA, MEXICO' => 7,
     'CUBA REGION' => 7,
     'JAMAICA REGION' => 7,
     'HAITI REGION' => 7,
     'DOMINICAN REPUBLIC REGION' => 7,
     'MONA PASSAGE' => 7,
     'PUERTO RICO REGION' => 7,
     'VIRGIN ISLANDS' => 7,
     'LEEWARD ISLANDS' => 7,
     'BELIZE' => 7,
     'CARIBBEAN SEA' => 7,
     'WINDWARD ISLANDS' => 7,
     'NEAR NORTH COAST OF COLOMBIA' => 7,
     'NEAR COAST OF VENEZUELA' => 7,
     'TRINIDAD' => 7,
     'NORTHERN COLOMBIA' => 7,
     'LAKE MARACAIBO, VENEZUELA' => 7,
     'VENEZUELA' => 7,
     'NORTH OF HONDURAS' => 7,
     'NEAR WEST COAST OF COLOMBIA' => 8,
     'COLOMBIA' => 8,
     'OFF COAST OF ECUADOR' => 8,
     'NEAR COAST OF ECUADOR' => 8,
     'COLOMBIA-ECUADOR BORDER REGION' => 8,
     'ECUADOR' => 8,
     'OFF COAST OF NORTHERN PERU' => 8,
     'NEAR COAST OF NORTHERN PERU' => 8,
     'PERU-ECUADOR BORDER REGION' => 8,
     'NORTHERN PERU' => 8,
     'PERU-BRAZIL BORDER REGION' => 8,
     'WESTERN BRAZIL' => 8,
     'OFF COAST OF PERU' => 8,
     'NEAR COAST OF PERU' => 8,
     'CENTRAL PERU' => 8,
     'SOUTHERN PERU' => 8,
     'PERU-BOLIVIA BORDER REGION' => 8,
     'NORTHERN BOLIVIA' => 8,
     'CENTRAL BOLIVIA' => 8,
     'OFF COAST OF NORTHERN CHILE' => 8,
     'NEAR COAST OF NORTHERN CHILE' => 8,
     'NORTHERN CHILE' => 8,
     'CHILE-BOLIVIA BORDER REGION' => 8,
     'SOUTHERN BOLIVIA' => 8,
     'PARAGUAY' => 8,
     'CHILE-ARGENTINA BORDER REGION' => 8,
     'JUJUY PROVINCE, ARGENTINA' => 8,
     'SALTA PROVINCE, ARGENTINA' => 8,
     'CATAMARCA PROVINCE, ARGENTINA' => 8,
     'TUCUMAN PROVINCE, ARGENTINA' => 8,
     'SANTIAGO DEL ESTERO PROV., ARG.' => 8,
     'NORTHEASTERN ARGENTINA' => 8,
     'OFF COAST OF CENTRAL CHILE' => 8,
     'NEAR COAST OF CENTRAL CHILE' => 8,
     'CENTRAL CHILE' => 8,
     'SAN JUAN PROVINCE, ARGENTINA' => 8,
     'LA RIOJA PROVINCE, ARGENTINA' => 8,
     'MENDOZA PROVINCE, ARGENTINA' => 8,
     'SAN LUIS PROVINCE, ARGENTINA' => 8,
     'CORDOBA PROVINCE, ARGENTINA' => 8,
     'URUGUAY' => 8,
     'OFF COAST OF SOUTHERN CHILE' => 9,
     'SOUTHERN CHILE' => 9,
     'S. CHILE-ARGENTINA BORDER REGION' => 9,
     'SOUTHERN ARGENTINA' => 9,
     'TIERRA DEL FUEGO' => 10,
     'FALKLAND ISLANDS REGION' => 10,
     'DRAKE PASSAGE' => 10,
     'SCOTIA SEA' => 10,
     'SOUTH GEORGIA ISLAND REGION' => 10,
     'SOUTH GEORGIA RISE' => 10,
     'SOUTH SANDWICH ISLANDS REGION' => 10,
     'SOUTH SHETLAND ISLANDS' => 10,
     'ANTARCTIC PENINSULA' => 10,
     'SOUTHWESTERN ATLANTIC OCEAN' => 10,
     'WEDDELL SEA' => 10,
     'EAST OF SOUTH SANDWICH ISLANDS' => 10,
     'OFF W. COAST OF N. ISLAND, N.Z.' => 11,
     'NORTH ISLAND, NEW ZEALAND' => 11,
     'OFF E. COAST OF N. ISLAND, N.Z.' => 11,
     'OFF W. COAST OF S. ISLAND, N.Z.' => 11,
     'SOUTH ISLAND, NEW ZEALAND' => 11,
     'COOK STRAIT, NEW ZEALAND' => 11,
     'OFF E. COAST OF S. ISLAND, N.Z.' => 11,
     'NORTH OF MACQUARIE ISLAND' => 11,
     'AUCKLAND ISLANDS, N.Z.  REGION' => 11,
     'MACQUARIE ISLAND REGION' => 11,
     'SOUTH OF NEW ZEALAND' => 11,
     'SAMOA ISLANDS REGION' => 12,
     'SAMOA ISLANDS' => 12,
     'SOUTH OF FIJI ISLANDS' => 12,
     'WEST OF TONGA ISLANDS' => 12,
     'TONGA ISLANDS' => 12,
     'TONGA ISLANDS REGION' => 12,
     'SOUTH OF TONGA ISLANDS' => 12,
     'NORTH OF NEW ZEALAND' => 12,
     'KERMADEC ISLANDS REGION' => 12,
     'KERMADEC ISLANDS, NEW ZEALAND' => 12,
     'SOUTH OF KERMADEC ISLANDS' => 12,
     'NORTH OF FIJI ISLANDS' => 13,
     'FIJI ISLANDS REGION' => 13,
     'FIJI ISLANDS' => 13,
     'SANTA CRUZ ISLANDS REGION' => 14,
     'SANTA CRUZ ISLANDS' => 14,
     'VANUATU ISLANDS REGION' => 14,
     'VANUATU ISLANDS' => 14,
     'NEW CALEDONIA' => 14,
     'LOYALTY ISLANDS' => 14,
     'SOUTHEAST OF LOYALTY ISLANDS' => 14,
     'NEW IRELAND REGION, P.N.G.' => 15,
     'NORTH OF SOLOMON ISLANDS' => 15,
     'NEW BRITAIN REGION, P.N.G.' => 15,
     'SOLOMON ISLANDS' => 15,
     "D'ENTRECASTEAUX ISLANDS REGION" => 15,
      'SOUTH OF SOLOMON ISLANDS' => 15,
      'IRIAN JAYA REGION, INDONESIA' => 16,
      'NEAR NORTH COAST OF IRIAN JAYA' => 16,
      'NINIGO ISLANDS REGION, P.N.G.' => 16,
      'ADMIRALTY ISLANDS REGION, P.N.G.' => 16,
      'NEAR N COAST OF NEW GUINEA, PNG.' => 16,
      'IRIAN JAYA, INDONESIA' => 16,
      'NEW GUINEA, PAPUA NEW GUINEA' => 16,
      'BISMARCK SEA' => 16,
      'ARU ISLANDS REGION, INDONESIA' => 16,
      'NEAR SOUTH COAST OF IRIAN JAYA' => 16,
      'NEAR S COAST OF NEW GUINEA, PNG.' => 16,
      'EASTERN NEW GUINEA REG., P.N.G.' => 16,
      'ARAFURA SEA' => 16,
      'W. CAROLINE ISLANDS, MICRONESIA' => 17,
      'SOUTH OF MARIANA ISLANDS' => 17,
      'SOUTHEAST OF HONSHU, JAPAN' => 18,
      'BONIN ISLANDS, JAPAN REGION' => 18,
      'VOLCANO ISLANDS, JAPAN REGION' => 18,
      'WEST OF MARIANA ISLANDS' => 18,
      'MARIANA ISLANDS REGION' => 18,
      'MARIANA ISLANDS' => 18,
      'KAMCHATKA PENINSULA, RUSSIA' => 19,
      'NEAR EAST COAST OF KAMCHATKA' => 19,
      'OFF EAST COAST OF KAMCHATKA' => 19,
      'NORTHWEST OF KURIL ISLANDS' => 19,
      'KURIL ISLANDS' => 19,
      'EAST OF KURIL ISLANDS' => 19,
      'EASTERN SEA OF JAPAN' => 19,
      'HOKKAIDO, JAPAN  REGION' => 19,
      'OFF COAST OF HOKKAIDO, JAPAN' => 19,
      'NEAR WEST COAST OF HONSHU, JAPAN' => 19,
      'EASTERN HONSHU, JAPAN' => 19,
      'NEAR EAST COAST OF HONSHU, JAPAN' => 19,
      'OFF EAST COAST OF HONSHU, JAPAN' => 19,
      'NEAR S. COAST OF HONSHU, JAPAN' => 19,
      'SOUTH KOREA' => 20,
      'WESTERN HONSHU, JAPAN' => 20,
      'NEAR S. COAST OF WESTERN HONSHU' => 20,
      'NORTHWEST OF RYUKYU ISLANDS' => 20,
      'KYUSHU, JAPAN' => 20,
      'SHIKOKU, JAPAN' => 20,
      'SOUTHEAST OF SHIKOKU, JAPAN' => 20,
      'RYUKYU ISLANDS, JAPAN' => 20,
      'SOUTHEAST OF RYUKYU ISLANDS' => 20,
      'WEST OF BONIN ISLANDS' => 20,
      'PHILIPPINE SEA' => 20,
      'NEAR COAST OF SOUTHEASTERN CHINA' => 21,
      'TAIWAN REGION' => 21,
      'TAIWAN' => 21,
      'NORTHEAST OF TAIWAN' => 21,
      'SOUTHWESTERN RYUKYU ISL., JAPAN' => 21,
      'SOUTHEAST OF TAIWAN' => 21,
      'PHILIPPINE ISLANDS REGION' => 22,
      'LUZON, PHILIPPINES' => 22,
      'MINDORO, PHILIPPINES' => 22,
      'SAMAR, PHILIPPINES' => 22,
      'PALAWAN, PHILIPPINES' => 22,
      'SULU SEA' => 22,
      'PANAY, PHILIPPINES' => 22,
      'CEBU, PHILIPPINES' => 22,
      'LEYTE, PHILIPPINES' => 22,
      'NEGROS, PHILIPPINES' => 22,
      'SULU ARCHIPELAGO, PHILIPPINES' => 22,
      'MINDANAO, PHILIPPINES' => 22,
      'EAST OF PHILIPPINE ISLANDS' => 22,
      'BORNEO' => 23,
      'CELEBES SEA' => 23,
      'TALAUD ISLANDS, INDONESIA' => 23,
      'NORTH OF HALMAHERA, INDONESIA' => 23,
      'MINAHASSA PENINSULA, SULAWESI' => 23,
      'NORTHERN MOLUCCA SEA' => 23,
      'HALMAHERA, INDONESIA' => 23,
      'SULAWESI, INDONESIA' => 23,
      'SOUTHERN MOLUCCA SEA' => 23,
      'CERAM SEA' => 23,
      'BURU, INDONESIA' => 23,
      'SERAM, INDONESIA' => 23,
      'SOUTHWEST OF SUMATERA, INDONESIA' => 24,
      'SOUTHERN SUMATERA, INDONESIA' => 24,
      'JAVA SEA' => 24,
      'SUNDA STRAIT, INDONESIA' => 24,
      'JAVA, INDONESIA' => 24,
      'BALI SEA' => 24,
      'FLORES SEA' => 24,
      'BANDA SEA' => 24,
      'TANIMBAR ISLANDS REG., INDONESIA' => 24,
      'SOUTH OF JAVA, INDONESIA' => 24,
      'BALI REGION, INDONESIA' => 24,
      'SOUTH OF BALI, INDONESIA' => 24,
      'SUMBAWA REGION, INDONESIA' => 24,
      'FLORES REGION, INDONESIA' => 24,
      'SUMBA REGION, INDONESIA' => 24,
      'SAVU SEA' => 24,
      'TIMOR REGION' => 24,
      'TIMOR SEA' => 24,
      'SOUTH OF SUMBAWA, INDONESIA' => 24,
      'SOUTH OF SUMBA, INDONESIA' => 24,
      'SOUTH OF TIMOR, INDONESIA' => 24,
      'MYANMAR-INDIA BORDER REGION' => 25,
      'MYANMAR-BANGLADESH BORDER REGION' => 25,
      'MYANMAR' => 25,
      'MYANMAR-CHINA BORDER REGION' => 25,
      'NEAR SOUTH COAST OF MYANMAR' => 25,
      'SOUTHEAST ASIA' => 25,
      'HAINAN ISLAND, CHINA' => 25,
      'SOUTH CHINA SEA' => 25,
      'THAILAND' => 25,
      'LAOS' => 25,
      'CAMBODIA' => 25,
      'VIETNAM' => 25,
      'GULF OF TONGKING' => 25,
      'EASTERN KASHMIR' => 26,
      'KASHMIR-INDIA BORDER REGION' => 26,
      'KASHMIR-XIZANG BORDER REGION' => 26,
      'WESTERN XIZANG-INDIA BORDER REGION' => 26,
      'XIZANG' => 26,
      'SICHUAN, CHINA' => 26,
      'NORTHERN INDIA' => 26,
      'NEPAL-INDIA BORDER REGION' => 26,
      'NEPAL' => 26,
      'SIKKIM, INDIA' => 26,
      'BHUTAN' => 26,
      'EASTERN XIZANG-INDIA BORDER REG.' => 26,
      'SOUTHERN INDIA' => 26,
      'INDIA-BANGLADESH BORDER REGION' => 26,
      'BANGLADESH' => 26,
      'NORTHEASTERN INDIA' => 26,
      'YUNNAN, CHINA' => 26,
      'BAY OF BENGAL' => 26,
      'KYRGYZSTAN-XINJIANG BORDER REG.' => 27,
      'SOUTHERN XINJIANG, CHINA' => 27,
      'GANSU, CHINA' => 27,
      'WESTERN NEI MONGOL, CHINA' => 27,
      'KASHMIR-XINJIANG BORDER REGION' => 27,
      'QINGHAI, CHINA' => 27,
      'SOUTHWESTERN SIBERIA, RUSSIA' => 28,
      'LAKE BAYKAL REGION, RUSSIA' => 28,
      'EAST OF LAKE BAYKAL, RUSSIA' => 28,
      'EASTERN KAZAKHSTAN' => 28,
      'LAKE ISSYK-KUL REGION' => 28,
      'KAZAKHSTAN-XINJIANG BORDER REG.' => 28,
      'NORTHERN XINJIANG, CHINA' => 28,
      'RUSSIA-MONGOLIA BORDER REGION' => 28,
      'MONGOLIA' => 28,
      'URAL MOUNTAINS REGION, RUSSIA' => 29,
      'WESTERN KAZAKHSTAN' => 29,
      'EASTERN CAUCASUS' => 29,
      'CASPIAN SEA' => 29,
      'NORTHWESTERN UZBEKISTAN' => 29,
      'TURKMENISTAN' => 29,
      'TURKMENISTAN-IRAN BORDER REGION' => 29,
      'TURKMENISTAN-AFGHANISTAN BRD REG' => 29,
      'TURKEY-IRAN BORDER REGION' => 29,
      'ARMENIA-AZERBAIJAN-IRAN BORD REG' => 29,
      'NORTHWESTERN IRAN' => 29,
      'IRAN-IRAQ BORDER REGION' => 29,
      'WESTERN IRAN' => 29,
      'NORTHERN AND CENTRAL IRAN' => 29,
      'NORTHWESTERN AFGHANISTAN' => 29,
      'SOUTHWESTERN AFGHANISTAN' => 29,
      'EASTERN ARABIAN PENINSULA' => 29,
      'PERSIAN GULF' => 29,
      'SOUTHERN IRAN' => 29,
      'SOUTHWESTERN PAKISTAN' => 29,
      'GULF OF OMAN' => 29,
      'OFF COAST OF PAKISTAN' => 29,
      'UKRAINE-MOLDOVA-SW RUSSIA REGION' => 30,
      'ROMANIA' => 30,
      'BULGARIA' => 30,
      'BLACK SEA' => 30,
      'CRIMEA REGION, UKRAINE' => 30,
      'WESTERN CAUCASUS' => 30,
      'GREECE-BULGARIA BORDER REGION' => 30,
      'GREECE' => 30,
      'AEGEAN SEA' => 30,
      'TURKEY' => 30,
      'GEORGIA-ARMENIA-TURKEY BORD REG.' => 30,
      'SOUTHERN GREECE' => 30,
      'DODECANESE ISLANDS, GREECE' => 30,
      'CRETE, GREECE' => 30,
      'EASTERN MEDITERRANEAN SEA' => 30,
      'CYPRUS REGION' => 30,
      'DEAD SEA REGION' => 30,
      'JORDAN - SYRIA REGION' => 30,
      'IRAQ' => 30,
      'PORTUGAL' => 31,
      'SPAIN' => 31,
      'PYRENEES' => 31,
      'NEAR SOUTH COAST OF FRANCE' => 31,
      'CORSICA, FRANCE' => 31,
      'CENTRAL ITALY' => 31,
      'ADRIATIC SEA' => 31,
      'NORTHWESTERN BALKAN REGION' => 31,
      'WEST OF GIBRALTAR' => 31,
      'STRAIT OF GIBRALTAR' => 31,
      'BALEARIC ISLANDS, SPAIN' => 31,
      'WESTERN MEDITERRANEAN SEA' => 31,
      'SARDINIA, ITALY' => 31,
      'TYRRHENIAN SEA' => 31,
      'SOUTHERN ITALY' => 31,
      'ALBANIA' => 31,
      'GREECE-ALBANIA BORDER REGION' => 31,
      'MADEIRA ISLANDS, PORTUGAL REGION' => 31,
      'CANARY ISLANDS, SPAIN REGION' => 31,
      'MOROCCO' => 31,
      'NORTHERN ALGERIA' => 31,
      'TUNISIA' => 31,
      'SICILY, ITALY' => 31,
      'IONIAN SEA' => 31,
      'CENTRAL MEDITERRANEAN SEA' => 31,
      'NEAR COAST OF LIBYA' => 31,
      'NORTH ATLANTIC OCEAN' => 32,
      'NORTHERN MID-ATLANTIC RIDGE' => 32,
      'AZORES ISLANDS REGION' => 32,
      'AZORES ISLANDS, PORTUGAL' => 32,
      'CENTRAL MID-ATLANTIC RIDGE' => 32,
      'NORTH OF ASCENSION ISLAND' => 32,
      'ASCENSION ISLAND REGION' => 32,
      'SOUTH ATLANTIC OCEAN' => 32,
      'SOUTHERN MID-ATLANTIC RIDGE' => 32,
      'TRISTAN DA CUNHA REGION' => 32,
      'BOUVET ISLAND REGION' => 32,
      'SOUTHWEST OF AFRICA' => 32,
      'SOUTHEASTERN ATLANTIC OCEAN' => 32,
      'REYKJANES RIDGE' => 32,
      'AZORES-CAPE ST. VINCENT RIDGE' => 32,
      'EASTERN GULF OF ADEN' => 33,
      'SOCOTRA REGION' => 33,
      'ARABIAN SEA' => 33,
      'LAKSHADWEEP REGION, INDIA' => 33,
      'NORTHEASTERN SOMALIA' => 33,
      'NORTH INDIAN OCEAN' => 33,
      'CARLSBERG RIDGE' => 33,
      'MALDIVE ISLANDS REGION' => 33,
      'LACCADIVE SEA' => 33,
      'SRI LANKA' => 33,
      'SOUTH INDIAN OCEAN' => 33,
      'CHAGOS ARCHIPELAGO REGION' => 33,
      'MAURITIUS - REUNION REGION' => 33,
      'SOUTHWEST INDIAN RIDGE' => 33,
      'MID-INDIAN RIDGE' => 33,
      'SOUTH OF AFRICA' => 33,
      'PRINCE EDWARD ISLANDS REGION' => 33,
      'CROZET ISLANDS REGION' => 33,
      'KERGUELEN ISLANDS REGION' => 33,
      'BROKEN RIDGE' => 33,
      'SOUTHEAST INDIAN RIDGE' => 33,
      'SOUTHERN KERGUELEN PLATEAU' => 33,
      'SOUTH OF AUSTRALIA' => 33,
      'OWEN FRACTURE ZONE REGION' => 33,
      'INDIAN OCEAN TRIPLE JUNCTION' => 33,
      'WESTERN INDIAN-ANTARCTIC RIDGE' => 33,
      'SASKATCHEWAN, CANADA' => 34,
      'MANITOBA, CANADA' => 34,
      'HUDSON BAY' => 34,
      'ONTARIO, CANADA' => 34,
      'HUDSON STRAIT REGION, CANADA' => 34,
      'NORTHERN QUEBEC, CANADA' => 34,
      'DAVIS STRAIT' => 34,
      'LABRADOR, CANADA' => 34,
      'LABRADOR SEA' => 34,
      'SOUTHERN QUEBEC, CANADA' => 34,
      'GASPE PENINSULA, CANADA' => 34,
      'EASTERN QUEBEC, CANADA' => 34,
      'ANTICOSTI ISLAND, CANADA' => 34,
      'NEW BRUNSWICK, CANADA' => 34,
      'NOVA SCOTIA, CANADA' => 34,
      'PRINCE EDWARD ISLAND, CANADA' => 34,
      'GULF OF ST. LAWRENCE' => 34,
      'NEWFOUNDLAND, CANADA' => 34,
      'MONTANA' => 34,
      'EASTERN IDAHO' => 34,
      'HEBGEN LAKE REGION' => 34,
      'YELLOWSTONE REGION, WYOMING' => 34,
      'WYOMING' => 34,
      'NORTH DAKOTA' => 34,
      'SOUTH DAKOTA' => 34,
      'NEBRASKA' => 34,
      'MINNESOTA' => 34,
      'IOWA' => 34,
      'WISCONSIN' => 34,
      'ILLINOIS' => 34,
      'MICHIGAN' => 34,
      'INDIANA' => 34,
      'SOUTHERN ONTARIO, CANADA' => 34,
      'OHIO' => 34,
      'NEW YORK' => 34,
      'PENNSYLVANIA' => 34,
      'VERMONT - NEW HAMPSHIRE REGION' => 34,
      'MAINE' => 34,
      'SOUTHERN NEW ENGLAND' => 34,
      'GULF OF MAINE' => 34,
      'UTAH' => 34,
      'COLORADO' => 34,
      'KANSAS' => 34,
      'IOWA-MISSOURI BORDER REGION' => 34,
      'MISSOURI-KANSAS BORDER REGION' => 34,
      'MISSOURI' => 34,
      'MISSOURI-ARKANSAS BORDER REGION' => 34,
      'EASTERN MISSOURI' => 34,
      'NEW MADRID, MISSOURI  REGION' => 34,
      'CAPE GIRARDEAU, MISSOURI  REGION' => 34,
      'SOUTHERN ILLINOIS' => 34,
      'SOUTHERN INDIANA' => 34,
      'KENTUCKY' => 34,
      'WEST VIRGINIA' => 34,
      'VIRGINIA' => 34,
      'CHESAPEAKE BAY REGION' => 34,
      'NEW JERSEY' => 34,
      'EASTERN ARIZONA' => 34,
      'NEW MEXICO' => 34,
      'TEXAS PANHANDLE REGION' => 34,
      'WESTERN TEXAS' => 34,
      'OKLAHOMA' => 34,
      'CENTRAL TEXAS' => 34,
      'ARKANSAS-OKLAHOMA BORDER REGION' => 34,
      'ARKANSAS' => 34,
      'LOUISIANA-TEXAS BORDER REGION' => 34,
      'LOUISIANA' => 34,
      'MISSISSIPPI' => 34,
      'TENNESSEE' => 34,
      'ALABAMA' => 34,
      'WESTERN FLORIDA' => 34,
      'GEORGIA, USA' => 34,
      'FLORIDA-GEORGIA BORDER REGION' => 34,
      'SOUTH CAROLINA' => 34,
      'NORTH CAROLINA' => 34,
      'OFF EAST COAST OF UNITED STATES' => 34,
      'FLORIDA PENINSULA' => 34,
      'BAHAMA ISLANDS' => 34,
      'E. ARIZONA-SONORA BORDER REGION' => 34,
      'NEW MEXICO-CHIHUAHUA BORDER REG.' => 34,
      'TEXAS-MEXICO BORDER REGION' => 34,
      'SOUTHERN TEXAS' => 34,
      'NEAR COAST OF TEXAS' => 34,
      'CHIHUAHUA, MEXICO' => 34,
      'NORTHERN MEXICO' => 34,
      'CENTRAL MEXICO' => 34,
      'JALISCO, MEXICO' => 34,
      'VERACRUZ, MEXICO' => 34,
      'GULF OF MEXICO' => 34,
      'BAY OF CAMPECHE' => 34,
      'BRAZIL' => 35,
      'GUYANA' => 35,
      'SURINAME' => 35,
      'FRENCH GUIANA' => 35,
      'IRELAND' => 36,
      'UNITED KINGDOM' => 36,
      'NORTH SEA' => 36,
      'SOUTHERN NORWAY' => 36,
      'SWEDEN' => 36,
      'BALTIC SEA' => 36,
      'FRANCE' => 36,
      'BAY OF BISCAY' => 36,
      'THE NETHERLANDS' => 36,
      'BELGIUM' => 36,
      'DENMARK' => 36,
      'GERMANY' => 36,
      'SWITZERLAND' => 36,
      'NORTHERN ITALY' => 36,
      'AUSTRIA' => 36,
      'CZECH AND SLOVAK REPUBLICS' => 36,
      'POLAND' => 36,
      'HUNGARY' => 36,
      'NORTHWEST AFRICA' => 37,
      'SOUTHERN ALGERIA' => 37,
      'LIBYA' => 37,
      'EGYPT' => 37,
      'RED SEA' => 37,
      'WESTERN ARABIAN PENINSULA' => 37,
      'CHAD REGION' => 37,
      'SUDAN' => 37,
      'ETHIOPIA' => 37,
      'WESTERN GULF OF ADEN' => 37,
      'NORTHWESTERN SOMALIA' => 37,
      'OFF S. COAST OF NORTHWEST AFRICA' => 37,
      'CAMEROON' => 37,
      'EQUATORIAL GUINEA' => 37,
      'CENTRAL AFRICAN REPUBLIC' => 37,
      'GABON' => 37,
      'REPUBLIC OF CONGO' => 37,
      'DEMOCRATIC REPUBLIC OF CONGO' => 37,
      'UGANDA' => 37,
      'LAKE VICTORIA REGION' => 37,
      'KENYA' => 37,
      'SOUTHERN SOMALIA' => 37,
      'LAKE TANGANYIKA REGION' => 37,
      'TANZANIA' => 37,
      'NORTHWEST OF MADAGASCAR' => 37,
      'ANGOLA' => 37,
      'ZAMBIA' => 37,
      'MALAWI' => 37,
      'NAMIBIA' => 37,
      'BOTSWANA' => 37,
      'ZIMBABWE' => 37,
      'MOZAMBIQUE' => 37,
      'MOZAMBIQUE CHANNEL' => 37,
      'MADAGASCAR' => 37,
      'SOUTH AFRICA' => 37,
      'LESOTHO' => 37,
      'SWAZILAND' => 37,
      'OFF COAST OF SOUTH AFRICA' => 37,
      'WESTERN SAHARA' => 37,
      'MAURITANIA' => 37,
      'MALI' => 37,
      'SENEGAL - GAMBIA REGION' => 37,
      'GUINEA REGION' => 37,
      'SIERRA LEONE' => 37,
      'LIBERIA REGION' => 37,
      "COTE D'IVOIRE" => 37,
      'BURKINA FASO' => 37,
      'GHANA' => 37,
      'BENIN - TOGO REGION' => 37,
      'NIGER' => 37,
      'NIGERIA' => 37,
      'NORTHWEST OF AUSTRALIA' => 38,
      'WEST OF AUSTRALIA' => 38,
      'WESTERN AUSTRALIA' => 38,
      'NORTHERN TERRITORY, AUSTRALIA' => 38,
      'SOUTH AUSTRALIA' => 38,
      'GULF OF CARPENTARIA' => 38,
      'QUEENSLAND, AUSTRALIA' => 38,
      'CORAL SEA' => 38,
      'NORTHWEST OF NEW CALEDONIA' => 38,
      'SOUTHWEST OF NEW CALEDONIA' => 38,
      'SOUTHWEST OF AUSTRALIA' => 38,
      'OFF SOUTH COAST OF AUSTRALIA' => 38,
      'NEAR COAST OF SOUTH AUSTRALIA' => 38,
      'NEW SOUTH WALES, AUSTRALIA' => 38,
      'VICTORIA, AUSTRALIA' => 38,
      'NEAR S.E. COAST OF AUSTRALIA' => 38,
      'NEAR EAST COAST OF AUSTRALIA' => 38,
      'EAST OF AUSTRALIA' => 38,
      'NORFOLK ISLAND REGION' => 38,
      'NORTHWEST OF NEW ZEALAND' => 38,
      'BASS STRAIT' => 38,
      'TASMANIA REGION, AUSTRALIA REGION' => 38,
      'SOUTHEAST OF AUSTRALIA' => 38,
      'NORTH PACIFIC OCEAN' => 39,
      'HAWAIIAN ISLANDS REGION' => 39,
      'HAWAII' => 39,
      'E. CAROLINE ISLANDS, MICRONESIA' => 39,
      'MARSHALL ISLANDS REGION' => 39,
      'ENEWETAK ATOLL REG, MARSHALL IS.' => 39,
      'BIKINI ATOLL REG., MARSHALL IS.' => 39,
      'GILBERT ISLANDS, KIRIBATI REGION' => 39,
      'JOHNSTON ISLAND REGION' => 39,
      'LINE ISLANDS REGION, KIRIBATI' => 39,
      'PALMYRA ISLAND REGION, KIRIBATI' => 39,
      'KIRITIMATI REGION, KIRIBATI' => 39,
      'TUVALU REGION' => 39,
      'PHOENIX ISLANDS, KIRIBATI REGION' => 39,
      'TOKELAU ISLANDS REGION' => 39,
      'NORTHERN COOK ISLANDS' => 39,
      'COOK ISLANDS REGION' => 39,
      'SOCIETY ISLANDS REGION' => 39,
      'TUBUAI ISLANDS REGION' => 39,
      'MARQUESAS ISLANDS REGION' => 39,
      'TUAMOTU ARCHIPELAGO REGION' => 39,
      'SOUTH PACIFIC OCEAN' => 39,
      'LOMONOSOV RIDGE' => 40,
      'ARCTIC OCEAN' => 40,
      'NEAR NORTH COAST OF GREENLAND' => 40,
      'EASTERN GREENLAND' => 40,
      'ICELAND REGION' => 40,
      'ICELAND' => 40,
      'JAN MAYEN ISLAND REGION' => 40,
      'GREENLAND SEA' => 40,
      'NORTH OF SVALBARD' => 40,
      'NORWEGIAN SEA' => 40,
      'SVALBARD REGION' => 40,
      'NORTH OF FRANZ JOSEF LAND' => 40,
      'FRANZ JOSEF LAND, RUSSIA' => 40,
      'NORTHERN NORWAY' => 40,
      'BARENTS SEA' => 40,
      'NOVAYA ZEMLYA, RUSSIA' => 40,
      'KARA SEA' => 40,
      'NEAR COAST OF W. SIBERIA, RUSSIA' => 40,
      'NORTH OF SEVERNAYA ZEMLYA' => 40,
      'SEVERNAYA ZEMLYA, RUSSIA' => 40,
      'NEAR COAST OF C. SIBERIA, RUSSIA' => 40,
      'EAST OF SEVERNAYA ZEMLYA, RUSSIA' => 40,
      'LAPTEV SEA' => 40,
      'SOUTHEASTERN SIBERIA, RUSSIA' => 41,
      'E. RUSSIA-N.E. CHINA BORDER REG.' => 41,
      'NORTHEASTERN CHINA' => 41,
      'NORTH KOREA' => 41,
      'SEA OF JAPAN' => 41,
      "PRIMOR'YE, RUSSIA" => 41,
      'SAKHALIN, RUSSIA' => 41,
      'SEA OF OKHOTSK' => 41,
      'SOUTHEASTERN CHINA' => 41,
      'YELLOW SEA' => 41,
      'OFF EASY COAST OF EASTERN CHINA' => 41,
      'NORTH OF NEW SIBERIAN ISLANDS' => 42,
      'NEW SIBERIAN ISLANDS, RUSSIA' => 42,
      'EAST SIBERIAN SEA' => 42,
      'NEAR N. COAST OF EASTERN SIBERIA' => 42,
      'EASTERN SIBERIA, RUSSIA' => 42,
      'CHUKCHI SEA' => 42,
      'BERING STRAIT' => 42,
      'ST. LAWRENCE ISLAND, ALASKA REG.' => 42,
      'BEAUFORT SEA' => 42,
      'NORTHERN ALASKA' => 42,
      'NORTHERN YUKON TERRITORY, CANADA' => 42,
      'QUEEN ELIZABETH ISLANDS, CANADA' => 42,
      'NW TERRITORIES - NUNAVUT, CANADA' => 42,
      'WESTERN GREENLAND' => 42,
      'BAFFIN BAY' => 42,
      'BAFFIN ISLAND REGION, CANADA' => 42,
      'SOUTHEAST CENTRAL PACIFIC OCEAN' => 44,
      'SOUTHERN EAST PACIFIC RISE' => 44,
      'EASTER ISLAND REGION' => 44,
      'WEST CHILE RISE' => 44,
      'JUAN FERNANDEZ ISLANDS REGION' => 44,
      'EAST OF NORTH ISLAND, N.Z.' => 44,
      'CHATHAM ISLANDS, N.Z. REGION' => 44,
      'SOUTH OF CHATHAM ISLANDS' => 44,
      'PACIFIC-ANTARCTIC RIDGE' => 44,
      'SOUTHERN PACIFIC OCEAN' => 44,
      'SOUTHEAST OF EASTER ISLAND' => 44,
      'EAST CENTRAL PACIFIC OCEAN' => 44,
      'CENTRAL EAST PACIFIC RISE' => 44,
      'WEST OF GALAPAGOS ISLANDS' => 44,
      'GALAPAGOS ISLANDS REGION' => 44,
      'GALAPAGOS ISLANDS, ECUADOR' => 44,
      'SOUTHWEST OF GALAPAGOS ISLANDS' => 44,
      'SOUTHEAST OF GALAPAGOS ISLANDS' => 44,
      'GALAPAGOS TRIPLE JUNGTION REGION' => 44,
      'SOUTH OF TASMANIA' => 45,
      'WEST OF MACQUARIE ISLAND' => 45,
      'BALLENY ISLANDS REGION' => 45,
      'ANDAMAN ISLANDS, INDIA REGION' => 46,
      'NICOBAR ISLANDS, INDIA REGION' => 46,
      'OFF W COAST OF NORTHERN SUMATERA' => 46,
      'NORTHERN SUMATERA, INDONESIA' => 46,
      'MALAY PENINSULA' => 46,
      'GULF OF THAILAND' => 46,
      'SOUTHEASTERN AFGHANISTAN' => 47,
      'PAKISTAN' => 47,
      'SOUTHWESTERN KASHMIR' => 47,
      'INDIA-PAKISTAN BORDER REGION' => 47,
      'CENTRAL KAZAKHSTAN' => 48,
      'SOUTHEASTERN UZBEKISTAN' => 48,
      'TAJIKISTAN' => 48,
      'KYRGYZSTAN' => 48,
      'AFGHANISTAN-TAJIKISTAN BORD REG.' => 48,
      'HINDU KUSH REGION, AFGHANISTAN' => 48,
      'TAJIKISTAN-XINJIANG BORDER REG.' => 48,
      'NORTHWESTERN KASHMIR' => 48,
      'FINLAND' => 49,
      'NORWAY-RUSSIA BORDER REGION' => 49,
      'FINLAND-RUSSIA BORDER REGION' => 49,
      'BALTIC-BELARUS-NW RUSSIA REG.' => 49,
      'NORTHWESTERN SIBERIA, RUSSIA' => 49,
      'NORTHCENTRAL SIBERIA, RUSSIA' => 49,
      'VICTORIA LAND, ANTARCTICA' => 50,
      'ROSS SEA' => 50,
      'ANTARCTICA' =>50
    }
  end
end
import Foundation

struct DayShort: Codable {
    
    let source: String?
    let temp: Double?
    let tempMin: Double?
    let tempWater: Double?
    let windSpeed: Double?
    let windGust: Double?
    let windDir: String?
    let pressureMm: Double?
    let pressurePa: Double?
    let humidity: Double?
    let soilTemp: Double?
    let soilMoisture: Double?
    let precMm: Double?
    let precProb: Double?
    let precPeriod: Double?
    let cloudness: Double?
    let precType: Double?
    let precStrength: Double?
    let icon: String?
    let condition: String?
    let uvIndex: Double?
    let feelsLike: Double?
    let daytime: String?
    let polar: Bool?
    
    internal init(source: String? = nil,
                  temp: Double? = nil,
                  tempMin: Double? = nil,
                  tempWater: Double? = nil,
                  windSpeed: Double? = nil,
                  windGust: Double? = nil,
                  windDir: String? = nil,
                  pressureMm: Double? = nil,
                  pressurePa: Double? = nil,
                  humidity: Double? = nil,
                  soilTemp: Double? = nil,
                  soilMoisture: Double? = nil,
                  precMm: Double? = nil,
                  precProb: Double? = nil,
                  precPeriod: Double? = nil,
                  cloudness: Double? = nil,
                  precType: Double? = nil,
                  precStrength: Double? = nil,
                  icon: String? = nil,
                  condition: String? = nil,
                  uvIndex: Double? = nil,
                  feelsLike: Double? = nil,
                  daytime: String? = nil,
                  polar: Bool? = nil) {
        self.source = source
        self.temp = temp
        self.tempMin = tempMin
        self.tempWater = tempWater
        self.windSpeed = windSpeed
        self.windGust = windGust
        self.windDir = windDir
        self.pressureMm = pressureMm
        self.pressurePa = pressurePa
        self.humidity = humidity
        self.soilTemp = soilTemp
        self.soilMoisture = soilMoisture
        self.precMm = precMm
        self.precProb = precProb
        self.precPeriod = precPeriod
        self.cloudness = cloudness
        self.precType = precType
        self.precStrength = precStrength
        self.icon = icon
        self.condition = condition
        self.uvIndex = uvIndex
        self.feelsLike = feelsLike
        self.daytime = daytime
        self.polar = polar
    }
    
    internal init?(_ dict: [String:Any?]?) {
        guard let dict = dict else { return nil }
        source = dict["_source"] as? String
        temp = dict["temp"] as? Double
        tempMin = dict["temp_min"] as? Double
        tempWater = dict["temp_water"] as? Double
        windSpeed = dict["wind_speed"] as? Double
        windGust = dict["wind_gust"] as? Double
        windDir = dict["wind_dir"] as? String
        pressureMm = dict["pressure_mm"] as? Double
        pressurePa = dict["pressure_pa"] as? Double
        humidity = dict["humidity"] as? Double
        soilTemp = dict["soil_temp"] as? Double
        soilMoisture = dict["soil_moisture"] as? Double
        precMm = dict["prec_mm"] as? Double
        precProb = dict["prec_prob"] as? Double
        precPeriod = dict["prec_period"] as? Double
        cloudness = dict["cloudness"] as? Double
        precType = dict["prec_type"] as? Double
        precStrength = dict["prec_strength"] as? Double
        icon = dict["icon"] as? String
        condition = dict["condition"] as? String
        uvIndex = dict["uv_index"] as? Double
        feelsLike = dict["feels_like"] as? Double
        daytime = dict["daytime"] as? String
        polar = dict["polar"] as? Bool
    }
    
    private enum CodingKeys: String, CodingKey {
        case source = "_source"
        case temp = "temp"
        case tempMin = "temp_min"
        case tempWater = "temp_water"
        case windSpeed = "wind_speed"
        case windGust = "wind_gust"
        case windDir = "wind_dir"
        case pressureMm = "pressure_mm"
        case pressurePa = "pressure_pa"
        case humidity = "humidity"
        case soilTemp = "soil_temp"
        case soilMoisture = "soil_moisture"
        case precMm = "prec_mm"
        case precProb = "prec_prob"
        case precPeriod = "prec_period"
        case cloudness = "cloudness"
        case precType = "prec_type"
        case precStrength = "prec_strength"
        case icon = "icon"
        case condition = "condition"
        case uvIndex = "uv_index"
        case feelsLike = "feels_like"
        case daytime = "daytime"
        case polar = "polar"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        source = try values.decodeIfPresent(String.self, forKey: .source)
        temp = try values.decodeIfPresent(Double.self, forKey: .temp)
        tempMin = try values.decodeIfPresent(Double.self, forKey: .tempMin)
        tempWater = try values.decodeIfPresent(Double.self, forKey: .tempWater)
        windSpeed = try values.decodeIfPresent(Double.self, forKey: .windSpeed)
        windGust = try values.decodeIfPresent(Double.self, forKey: .windGust)
        windDir = try values.decodeIfPresent(String.self, forKey: .windDir)
        pressureMm = try values.decodeIfPresent(Double.self, forKey: .pressureMm)
        pressurePa = try values.decodeIfPresent(Double.self, forKey: .pressurePa)
        humidity = try values.decodeIfPresent(Double.self, forKey: .humidity)
        soilTemp = try values.decodeIfPresent(Double.self, forKey: .soilTemp)
        soilMoisture = try values.decodeIfPresent(Double.self, forKey: .soilMoisture)
        precMm = try values.decodeIfPresent(Double.self, forKey: .precMm)
        precProb = try values.decodeIfPresent(Double.self, forKey: .precProb)
        precPeriod = try values.decodeIfPresent(Double.self, forKey: .precPeriod)
        cloudness = try values.decodeIfPresent(Double.self, forKey: .cloudness)
        precType = try values.decodeIfPresent(Double.self, forKey: .precType)
        precStrength = try values.decodeIfPresent(Double.self, forKey: .precStrength)
        icon = try values.decodeIfPresent(String.self, forKey: .icon)
        condition = try values.decodeIfPresent(String.self, forKey: .condition)
        uvIndex = try values.decodeIfPresent(Double.self, forKey: .uvIndex)
        feelsLike = try values.decodeIfPresent(Double.self, forKey: .feelsLike)
        daytime = try values.decodeIfPresent(String.self, forKey: .daytime)
        polar = try values.decodeIfPresent(Bool.self, forKey: .polar)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(temp, forKey: .temp)
        try container.encodeIfPresent(tempMin, forKey: .tempMin)
        try container.encodeIfPresent(tempWater, forKey: .tempWater)
        try container.encodeIfPresent(windSpeed, forKey: .windSpeed)
        try container.encodeIfPresent(windGust, forKey: .windGust)
        try container.encodeIfPresent(windDir, forKey: .windDir)
        try container.encodeIfPresent(pressureMm, forKey: .pressureMm)
        try container.encodeIfPresent(pressurePa, forKey: .pressurePa)
        try container.encodeIfPresent(humidity, forKey: .humidity)
        try container.encodeIfPresent(soilTemp, forKey: .soilTemp)
        try container.encodeIfPresent(soilMoisture, forKey: .soilMoisture)
        try container.encodeIfPresent(precMm, forKey: .precMm)
        try container.encodeIfPresent(precProb, forKey: .precProb)
        try container.encodeIfPresent(precPeriod, forKey: .precPeriod)
        try container.encodeIfPresent(cloudness, forKey: .cloudness)
        try container.encodeIfPresent(precType, forKey: .precType)
        try container.encodeIfPresent(precStrength, forKey: .precStrength)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(condition, forKey: .condition)
        try container.encodeIfPresent(uvIndex, forKey: .uvIndex)
        try container.encodeIfPresent(feelsLike, forKey: .feelsLike)
        try container.encodeIfPresent(daytime, forKey: .daytime)
        try container.encodeIfPresent(polar, forKey: .polar)
    }
}

extension DayShort {
    func toDictionary() -> [String:Any?] {
        var jsonDict = [String: Any?]()
        jsonDict["_source"] = source
        jsonDict["temp"] = temp
        jsonDict["temp_min"] = tempMin
        jsonDict["temp_water"] = tempWater
        jsonDict["wind_speed"] = windSpeed
        jsonDict["wind_gust"] = windGust
        jsonDict["wind_dir"] = windDir
        jsonDict["pressure_mm"] = pressureMm
        jsonDict["pressure_pa"] = pressurePa
        jsonDict["humidity"] = humidity
        jsonDict["soil_temp"] = soilTemp
        jsonDict["soil_moisture"] = soilMoisture
        jsonDict["prec_mm"] = precMm
        jsonDict["prec_prob"] = precProb
        jsonDict["prec_period"] = precPeriod
        jsonDict["cloudness"] = cloudness
        jsonDict["prec_type"] = precType
        jsonDict["prec_strength"] = precStrength
        jsonDict["icon"] = icon
        jsonDict["condition"] = condition
        jsonDict["uv_index"] = uvIndex
        jsonDict["feels_like"] = feelsLike
        jsonDict["daytime"] = daytime
        jsonDict["polar"] = polar
        return jsonDict
    }
}

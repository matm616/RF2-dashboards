local M = {

    options = {
        {"guiStyle"           , CHOICE, 1 , {
            "1-Fancy",
            "2-Modern",
            "3-Nitro",
        }},
        {"guiStylePost"       , CHOICE, 3 , {
            "Same as Flight Dashboard",
            "Summary 1",
            "Summary 2",
        }},
        {"enableAudio"        , BOOL  ,   1         }, -- 0=disable audio announcements, 1=enable audio announcements
        {"showTotalVoltage"   , BOOL  ,   0         }, -- 0=Show as average Lipo cell level, 1=show the total voltage (voltage as is)
        {"useRfFlightsCounter", BOOL  ,   0         }, -- 0=use flights widget counter, 1=use RF2 flights counter
        {"reserve_capa"       , VALUE ,   0, 0, 40  },
        {"currTop"            , VALUE , 200, 60,400 },
        {"tempTop"            , VALUE ,  80, 30,150 },
        {"textColor"          , COLOR , WHITE       },
    },

    translate = function(name)
        local translations = {
            showTotalVoltage="Show Voltage as Total",
            useRfFlightsCounter="Use RF2 Flights Counter (If available)",
            -- enableCapa="Enable Capacity",
            -- useTelemetry="Use Telemetry (faster update)",
            guiStyle="On Flight Dashboard",
            guiStylePost="Post Flight Dashboard",
            currTop="Warning Current",
            tempTop="Warning ESC Temp",
            textColor="Text Color",
            enableAudio="Enable Audio Announcements",
            reserve_capa="Reserve Capacity %",
        }
        return translations[name]
    end

}

return M

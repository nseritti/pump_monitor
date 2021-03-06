
 SELECT * FROM (SELECT pump_analysis_1.coin_id, pump_analysis_1.symbol, pump_analysis_1.price_usd,
                pump_analysis_1.24h_volume_usd as 1_volume, pump_analysis_2.24h_volume_usd as 2_volume, 
                pump_analysis_3.24h_volume_usd as 3_volume, pump_analysis_4.24h_volume_usd as 4_volume, 
                pump_analysis_5.24h_volume_usd as 5_volume, pump_analysis_6.24h_volume_usd as 6_volume, 
                (pump_analysis_6.24h_volume_usd / pump_analysis_1.24h_volume_usd) as 1h_change 
                FROM 
                (((((pump_analysis_1   INNER JOIN pump_analysis_2 on pump_analysis_1.coin_id = pump_analysis_2.coin_id)   
                INNER JOIN pump_analysis_3 on pump_analysis_1.coin_id = pump_analysis_3.coin_id)  
                INNER JOIN pump_analysis_4 on pump_analysis_1.coin_id = pump_analysis_4.coin_id)  
                INNER JOIN pump_analysis_5 on pump_analysis_1.coin_id = pump_analysis_5.coin_id)  
                INNER JOIN pump_analysis_6 on pump_analysis_1.coin_id = pump_analysis_6.coin_id)   
                WHERE pump_analysis_1.price_usd < .1 and pump_analysis_1.24h_volume_usd > 50000 
                GROUP BY pump_analysis_1.coin_id) 
                as t WHERE t.1_volume <t.6_volume and t.1h_change > 1 ;


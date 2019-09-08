drop table if exists NCVR_2014;
drop table if exists NCVR_2017;

CREATE EXTERNAL TABLE
NCVR_2014
    (
     snapshot_dt string,
      county_id string,
      county_desc string,
      voter_reg_num string,
      ncid string,
      status_cd string,
      voter_status_desc string,
      reason_cd string,
      voter_status_reason_desc string,
      absent_ind string,
      name_prefx_cd string,
      last_name string,
      first_name string,
      midl_name string,
      name_sufx_cd string,
      house_num string,
      half_code string,
      street_dir string,
      street_name string,
      street_type_cd string,
      street_sufx_cd string,
      unit_designator string,
      unit_num string,
      res_city_desc string,
      state_cd string,
      zip_code string,
      mail_addr1 string,
      mail_addr2 string,
      mail_addr3 string,
      mail_addr4 string,
      mail_city string,
      mail_state string,
      mail_zipcode string,
      area_cd string,
      phone_num string,
      race_code string,
      race_desc string,
      ethnic_code string,
      ethnic_desc string,
      party_cd string,
      party_desc string,
      sex_code string,
      sex string,
      age string,
      birth_place string,
      registr_dt string,
      precinct_abbrv string,
      precinct_desc string,
      municipality_abbrv string,
      municipality_desc string,
      ward_abbrv string,
      ward_desc string,
      cong_dist_abbrv string,
      cong_dist_desc string,
      super_court_abbrv string,
      super_court_desc string,
      judic_dist_abbrv string,
      judic_dist_desc string,
      NC_senate_abbrv string,
      NC_senate_desc string,
      NC_house_abbrv string,
      NC_house_desc string,
      county_commiss_abbrv string,
      county_commiss_desc string,
      township_abbrv string,
      township_desc string,
      school_dist_abbrv string,
      school_dist_desc string,
      fire_dist_abbrv string,
      fire_dist_desc string,
      water_dist_abbrv string,
      water_dist_desc string,
      sewer_dist_abbrv string,
      sewer_dist_desc string,
      sanit_dist_abbrv string,
      sanit_dist_desc string,
      rescue_dist_abbrv string,
      rescue_dist_desc string,
      munic_dist_abbrv string,
      munic_dist_desc string,
      dist_1_abbrv string,
      dist_1_desc string,
      dist_2_abbrv string,
      dist_2_desc string,
      confidential_ind string,
      cancellation_dt string,
      vtd_abbrv string,
      vtd_desc string,
      load_dt string,
      age_group string )
       ROW FORMAT DELIMITED
       FIELDS TERMINATED BY '\t' STORED AS TEXTFILE LOCATION 'hdfs://localhost:9000/data/ncvr/2014';

CREATE EXTERNAL TABLE
NCVR_2017
    (
     snapshot_dt string,
      county_id string,
      county_desc string,
      voter_reg_num string,
      ncid string,
      status_cd string,
      voter_status_desc string,
      reason_cd string,
      voter_status_reason_desc string,
      absent_ind string,
      name_prefx_cd string,
      last_name string,
      first_name string,
      midl_name string,
      name_sufx_cd string,
      house_num string,
      half_code string,
      street_dir string,
      street_name string,
      street_type_cd string,
      street_sufx_cd string,
      unit_designator string,
      unit_num string,
      res_city_desc string,
      state_cd string,
      zip_code string,
      mail_addr1 string,
      mail_addr2 string,
      mail_addr3 string,
      mail_addr4 string,
      mail_city string,
      mail_state string,
      mail_zipcode string,
      area_cd string,
      phone_num string,
      race_code string,
      race_desc string,
      ethnic_code string,
      ethnic_desc string,
      party_cd string,
      party_desc string,
      sex_code string,
      sex string,
      age string,
      birth_place string,
      registr_dt string,
      precinct_abbrv string,
      precinct_desc string,
      municipality_abbrv string,
      municipality_desc string,
      ward_abbrv string,
      ward_desc string,
      cong_dist_abbrv string,
      cong_dist_desc string,
      super_court_abbrv string,
      super_court_desc string,
      judic_dist_abbrv string,
      judic_dist_desc string,
      NC_senate_abbrv string,
      NC_senate_desc string,
      NC_house_abbrv string,
      NC_house_desc string,
      county_commiss_abbrv string,
      county_commiss_desc string,
      township_abbrv string,
      township_desc string,
      school_dist_abbrv string,
      school_dist_desc string,
      fire_dist_abbrv string,
      fire_dist_desc string,
      water_dist_abbrv string,
      water_dist_desc string,
      sewer_dist_abbrv string,
      sewer_dist_desc string,
      sanit_dist_abbrv string,
      sanit_dist_desc string,
      rescue_dist_abbrv string,
      rescue_dist_desc string,
      munic_dist_abbrv string,
      munic_dist_desc string,
      dist_1_abbrv string,
      dist_1_desc string,
      dist_2_abbrv string,
      dist_2_desc string,
      confidential_ind string,
      cancellation_dt string,
      vtd_abbrv string,
      vtd_desc string,
      load_dt string,
      age_group string )
         ROW FORMAT DELIMITED
         FIELDS TERMINATED BY '\t' STORED AS TEXTFILE LOCATION 'hdfs://localhost:9000/data/ncvr/2017';

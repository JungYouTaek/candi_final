class HomeController < ApplicationController
  def index
    if params[:datetime].blank?
      @today = DateTime.now.new_offset(9.0/24)
    else
      @today = params[:datetime]
    end

    today = Time.now
    today_cand = Cand.where("date LIKE ?", "오늘")
    ahns_8 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "8")
    ahns_9 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "9")
    ahns_10 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "10")
    ahns_11 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "11")
    ahns_12 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "12")
    ahns_13 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "13")
    ahns_14 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "14")
    ahns_15 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "15")
    ahns_16 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "16")
    ahns_17 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "17")
    ahns_18 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "18")
    ahns_19 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "19")
    ahns_20 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "20")
    ahns_21 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "21")
    ahns_22 = today_cand.where("name LIKE ? AND beginc LIKE ?", "안철수", "22")
    @ahn_cand = [ahns_8,ahns_9,ahns_10,ahns_11,ahns_12,ahns_13,ahns_14,ahns_15,ahns_16,ahns_17,ahns_18,ahns_19,ahns_20,ahns_21,ahns_22]

    moons_8 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "문재인", "8")
    moons_9 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "문재인", "9")
    moons_10 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "10")
    moons_11 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "11")
    moons_12 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "12")
    moons_13 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "13")
    moons_14 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "14")
    moons_15 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "15")
    moons_16 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "16")
    moons_17 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "17")
    moons_18 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "18")
    moons_19 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "19")
    moons_20 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "20")
    moons_21 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "21")
    moons_22 = today_cand.where("name LIKE ? AND beginc LIKE ?", "문재인", "22")
    @moon_cand = [moons_8,moons_9,moons_10,moons_11,moons_12,moons_13,moons_14,moons_15,moons_16,moons_17,moons_18,moons_19,moons_20,moons_21,moons_22]

    sims_8 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "심상정", "8")
    sims_9 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "심상정", "9")
    sims_10 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "10")
    sims_11 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "11")
    sims_12 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "12")
    sims_13 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "13")
    sims_14 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "14")
    sims_15 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "15")
    sims_16 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "16")
    sims_17 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "17")
    sims_18 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "18")
    sims_19 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "19")
    sims_20 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "20")
    sims_21 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "21")
    sims_22 = today_cand.where("name LIKE ? AND beginc LIKE ?", "심상정", "22")
    @sim_cand = [sims_8,sims_9,sims_10,sims_11,sims_12,sims_13,sims_14,sims_15,sims_16,sims_17,sims_18,sims_19,sims_20,sims_21,sims_22]

    yus_8 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "유승민", "8")
    yus_9 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "유승민", "9")
    yus_10 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "10")
    yus_11 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "11")
    yus_12 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "12")
    yus_13 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "13")
    yus_14 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "14")
    yus_15 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "15")
    yus_16 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "16")
    yus_17 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "17")
    yus_18 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "18")
    yus_19 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "19")
    yus_20 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "20")
    yus_21 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "21")
    yus_22 = today_cand.where("name LIKE ? AND beginc LIKE ?", "유승민", "22")
    @yu_cand = [yus_8,yus_9,yus_10,yus_11,yus_12,yus_13,yus_14,yus_15,yus_16,yus_17,yus_18,yus_19,yus_20,yus_21,yus_22]

    hongs_8 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "홍준표", "8")
    hongs_9 = today_cand.where("name LIKE ? AND beginc LIKE ?",  "홍준표", "9")
    hongs_10 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "10")
    hongs_11 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "11")
    hongs_12 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "12")
    hongs_13 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "13")
    hongs_14 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "14")
    hongs_15 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "15")
    hongs_16 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "16")
    hongs_17 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "17")
    hongs_18 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "18")
    hongs_19 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "19")
    hongs_20 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "20")
    hongs_21 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "21")
    hongs_22 = today_cand.where("name LIKE ? AND beginc LIKE ?", "홍준표", "22")
    @hong_cand = [hongs_8 ,hongs_9 ,hongs_10,hongs_11,hongs_12,hongs_13,hongs_14,hongs_15,hongs_16,hongs_17,hongs_18,hongs_19,hongs_20,hongs_21,hongs_22]

  end
end

//
//  KisilerDaoRepository.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 14.01.2024.
//

import Foundation
import RxSwift

class KisilerDaoRepository{
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func kaydet(kisi_ad : String, kisi_tel : String){
        print("Kisi : \(kisi_ad) - \(kisi_tel)")
    }
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        print("Guncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    func sil(kisi_id:Int){
        print("Kişi sil \(kisi_id)")
        kisilerYukle()
    }
    
    func ara(aramaKelimesi:String){
        print("Search Bar : \(aramaKelimesi)")
    }
    
    func kisilerYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Fatih Gumus", kisi_tel: "14785236951")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Mehmet Demir", kisi_tel: "32145698741")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Ayşe Duzgunel", kisi_tel: "78965432175")
        let k4 = Kisiler(kisi_id: 4, kisi_ad: "Leyla Doğan", kisi_tel: "963258741159")
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        liste.append(k4)
        kisilerListesi.onNext(liste)
    }
    
}

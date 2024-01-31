//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Fatih Gümüş on 14.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    
    var kRepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    
    init(){
        veritabaniKopyala()
        kisilerListesi = kRepo.kisilerListesi
        kisilerYukle()
    }
    
    func sil(kisi_id:Int){
        kRepo.sil(kisi_id: kisi_id)
    }
    
    func ara(aramaKelimesi:String){
        kRepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func kisilerYukle(){
        kRepo.kisilerYukle()
    }
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "rehber", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("Veritabanı zaten var")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
        
    }
}

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
}

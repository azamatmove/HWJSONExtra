//
//  ViewController.swift
//  HWJSONExtra
//
//  Created by Azamat Sarinzhiev on 20/1/22.
//

import UIKit

class ParentModel: Codable {
    var dependentsCount: String? = nil
    var requestingAmount: Int? = nil
    var repaymentDays: Int? = 0
    var educationDegree: String? = nil
    var actualResidenceLocation: String? = nil
    var durationOfActualResidenceLocation: String? = nil
    var placeOfWork: PlaceOfWork1
    var incomes: [Incomes] = []
    var maritalStatus: String? = nil
    var spouse: Spouse1
    var realEstateItems: [RealEstateItems1] = []
    var personalEstateItems: [PersonalEstateItems1] = []
    var isPublicOfferRead: Bool
    var isLimitUpgradeApplication: Bool
}

class PlaceOfWork1: Codable {
    var placeOfWorkType: String? = nil
    var income: Int? = nil
    var address: String? = nil
    var workExperience: String? = nil
    var employeeCompany: String? = nil
    var employeePosition: String? = nil
    var documentImage: String? = nil
    var entrepreneurshipType: String? = nil
    var entrepreneurshipDescription: String? = nil
    var entrepreneurshipCertificateNumber: String? = nil
}

class Incomes: Codable {
    var work: String? = nil
    var value: Int? = nil
}

class Spouse1: Codable {
    var name: String? = nil
    var surname: String? = nil
    var patronymic: String? = nil
    var incomes: [Incomes] = []
}

class RealEstateItems1: Codable {
    var type: String? = nil
    var address: String? = nil
}

class PersonalEstateItems1: Codable {
    var type: String? = nil
    var brand: String? = nil
    var model: String? = nil
    var manufactureYear: Int? = nil
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let json = """
        
        
        {
          "dependentsCount": "Nil",
          "requestingAmount": 0,
          "repaymentDays": 0,
          "educationDegree": "Higher",
          "actualResidenceLocation": "Bishkek",
          "durationOfActualResidenceLocation": "_0and2Months",
          "placeOfWork": {
            "placeOfWorkType": "Company",
            "income": 100000000,
            "address": "string",
            "workExperience": "OneOrLess",
            "employeeCompany": "string",
            "employeePosition": "Specialist",
            "documentImage": "string",
            "entrepreneurshipType": "Trade",
            "entrepreneurshipDescription": "string",
            "entrepreneurshipCertificateNumber": "string"
          },
          "incomes": [
            {
              "work": "string",
              "value": 100000000
            }
          ],
          "maritalStatus": "Single",
          "spouse": {
            "name": "string",
            "surname": "string",
            "patronymic": "string",
            "incomes": [
              {
                "work": "string",
                "value": 100000000
              }
            ]
          },
          "realEstateItems": [
            {
              "type": "Apartment",
              "address": "string"
            }
          ],
          "personalEstateItems": [
            {
              "type": "Car",
              "brand": "string",
              "model": "string",
              "manufactureYear": 2100
            }
          ],
          "isPublicOfferRead": true,
          "isLimitUpgradeApplication": true
        }


        """
        let model = try! JSONDecoder().decode(ParentModel.self, from: Data(json.utf8))
        dump(model)
    }


}




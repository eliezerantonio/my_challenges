import 'bank_acronym_list.dart';

class ValidateBankDetails {
  String validateBankAcronym(String insertedIban) {
    BankAcronymList list = BankAcronymList();
    //Removing any Special Character
    String ibanConverted = insertedIban.trim().replaceAll(RegExp('[^0-9]'), '');
    //Variable to Store Bank Code Number and Acronym Generated
    String bankShortCode = '';
    String bankAcronymGenerated = '';

    //List of IBAN Codes
    var angolanIbans = {
      'BAI': '0040',
      'BANC': '0033',
      'BIC': '0051',
      'BCGA': '0004',
      'BCA': '0043',
      'BCH': '0059',
      'BDA': '0054',
      'BFA': '0006',
      'BIR': '0067',
      'BNI': '0052',
      'BE': '0045',
      'KEVE': '0047',
      'BMAIS': '0065',
      'ATLANTICO': '0064',
      'BPT': '0069',
      'BPG': '0064',
      'BSOL': '0044',
      'BVB': '0062',
      'VTB': '0056',
      'YETU': '0066',
      'BOCLB': '0071',
      'BCI': '0005',
      'BCS': '0070',
      'BMF': '0048',
      'BPC': '0010',
      'FNB': '0058',
      'SBA': '0060',
      'SCBA': '0063',
    };
    try {
      //Joining All Separeted Digits
      bankShortCode = ibanConverted.substring(0, 4);
      //Check if IBAN Inserted Has Specific Code Number (2) To Query.
      for (var val in angolanIbans.keys) {
        if (angolanIbans[val] == bankShortCode) {
          return bankAcronymGenerated = val;
        }
      }
    } catch (e) {
      return bankAcronymGenerated = 'Dados Inseridos Invalidos.';
    }

    return bankAcronymGenerated;
  }

  String validateSwift(String swiftGiven) {
    String swiftCodeGenerated = '';
    //List of IBAN Codes
    var swiftList = {
      'BAIPAOLU': 'BAI',
      'ANCEAOLU': 'BANC',
      'BCCBAOLU': 'BIC',
      'BCGAAOLU': 'BCGA',
      'COMLAOLU': 'BCA',
      'BCHUAOLU': 'BCH',
      'BDAAAOLU': 'BDA',
      'BFMXAOLU': 'BFA',
      'BIRVAOLU': 'BIR',
      'BNICAOLU052 / BNICAOLU': 'BNI',
      'BESCAOLU': 'BE',
      'BRDKAOLU': 'KEVE',
      'BRDKAOLU / PUADAOLU': 'BMAIS',
      'PRTLAOLU': 'ATLANTICO',
      'POTAAOLU': 'BPT',
      'PRTSAOLU': 'BPG',
      'SOLOAOLU': 'BSOL',
      'BVBXAOLU': 'BVB',
      'VTBLAOLU': 'VTB',
      'YETUAOLU': 'YETU',
      'BKCHAOLU': 'BOCLB',
      'BCIDAOLU': 'BCI',
      'CDTSAOLU': 'BCS',
      'NOSAAOLU': 'BMF',
      'BPCLAOLU': 'BPC',
      'FBCOAOLU': 'FNB',
      'SBICAOLU': 'SBA',
      'SCBLAOLU': 'SCBA',
    };
    try {
      //Check if IBAN inserted has specific character to give the result
      for (var val in swiftList.keys) {
        if (swiftList[val] == swiftGiven) {
          return swiftCodeGenerated = val;
        }
      }
    } catch (e) {
      swiftCodeGenerated = 'Dados Inseridos Invalidos.';
    }

    return swiftCodeGenerated;
  }

  String validateBankName(String swiftGiven) {
    String swiftCodeGenerated = '';
    //List of IBAN Codes
    var swiftList = {
      'BANCO ANGOLANO DE INVESTIMENTOS, SA': 'BAI',
      'BANCO ANGOLANO NEGOCIOS E COMERCIO': 'BANC',
      'BANCO BIC, S.A.': 'BIC',
      'BANCO CAIXA GERAL DE ANGOLA': 'BCGA',
      'BANCO COMERCIAL ANGOLANO': 'BCA',
      'BANCO COMERCIAL DO HUAMBO': 'BCH',
      'BANCO DE DESENVOLVIMENTO DE ANGOLA': 'BDA',
      'BANCO DE FOMENTO ANGOLA, S.A.': 'BFA',
      'BANCO DE INVESTIMENTO RURAL, S.A.': 'BIR',
      'BANCO DE NEGOCIOS INTERNACIONAL': 'BNI',
      'BANCO ECONOMICO, S.A.': 'BE',
      'BANCO KEVE, SA': 'KEVE',
      'BANCO MAIS, SA': 'BMAIS',
      'BANCO MILLENNIUM ATLANTICO, S.A.': 'ATLANTICO',
      'BANCO POSTAL, S.A.': 'BPT',
      'BANCO PRESTIGIO, SA.': 'BPG',
      'BANCO SOL SARL': 'BSOL',
      'BANCO VALOR BANK': 'BVB',
      'BANCO VTB AFRICA, S.A.': 'VTB',
      'BANCO YETU, S.A.': 'YETU',
      'BANK OF CHINA LIMITED LUANDA BRANCH': 'BOCLB',
      'BANCO DE COMERCIO E INDUSTRIA': 'BCI',
      'BANCO DE CREDITO DO SUL, S.A.': 'BCS',
      'BANCO BAI MICROFINANCAS, SARL': 'BMF',
      'BANCO DE POUPANCA E CREDITO': 'BPC',
      'FINIBANCO ANGOLA S.A': 'FNB',
      'STANDARD BANK DE ANGOLA S.A.': 'SBA',
      'STANDARD CHARTERED BANK ANGOLA SA': 'SCBA',
    };
    try {
      //Check if IBAN inserted has specific character to give the result
      for (var val in swiftList.keys) {
        if (swiftList[val] == swiftGiven) {
          return swiftCodeGenerated = val;
        }
      }
    } catch (e) {
      return swiftCodeGenerated = 'Dados Inseridos Invalidos.';
    }

    return swiftCodeGenerated;
  }
}

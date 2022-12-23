class TaxIncomeCalculator {
  double calculateInss(double baseSalary) {
    double inssRate = 3 / 100;
    double inssPayable = 0;
    //INSS TAX
    inssPayable = baseSalary * inssRate;
    return inssPayable;
  }

  //Income Result
  double irtResult = 0;
  double calculateTax(double baseSalary) {
    //INSS Variables
    double inssRate = 3 / 100;
    double inssCalculated = 0;
    //BASE For Income Calculus
    double baseCalculus = 0;

    //Salary Afte Descount
    double totalSalary = 0;
    //1 Escalao - no info
    //2 Escalao (De 70.001 a 100.000)
    double fromAmount2 = 70001;
    double toAmount2 = 100000;
    double tax2 = 10 / 100;
    double excess2 = 70000;
    double fixedParcel2 = 3000;
    //3 Escalao (De 100.001 a 150.000)
    double fromAmount3 = 100001;
    double toAmount3 = 150000;
    double tax3 = 13 / 100;
    double excess3 = 100000;
    double fixedParcel3 = 6000;
    //4 Escalao (De 150.001 a 200.000)
    double fromAmount4 = 150001;
    double toAmount4 = 200000;
    double tax4 = 16 / 100;
    double excess4 = 150000;
    double fixedParcel4 = 12500;
    //5 Escalao (De 200.001 a 300.000)
    double fromAmount5 = 200001;
    double toAmount5 = 300000;
    double tax5 = 18 / 100;
    double excess5 = 200000;
    double fixedParcel5 = 31250;
    //6 Escalao (De 300.001 a 500.000)
    double fromAmount6 = 300001;
    double toAmount6 = 500000;
    double tax6 = 19 / 100;
    double excess6 = 300000;
    double fixedParcel6 = 49250;
    //7 Escalao (De 500.001 a 1.000.000)
    double fromAmount7 = 500001;
    double toAmount7 = 1000000;
    double tax7 = 20 / 100;
    double excess7 = 500000;
    double fixedParcel7 = 87250;
    //8 Escalao (De 1.000.001 a 1.500.000)
    double fromAmount8 = 1000001;
    double toAmount8 = 1500000;
    double tax8 = 21 / 100;
    double excess8 = 1000000;
    double fixedParcel8 = 187250;
    //9 Escalao (De 1.500.001 a 2.000.000)
    double fromAmount9 = 1500001;
    double toAmount9 = 2000000;
    double tax9 = 22 / 100;
    double excess9 = 1500000;
    double fixedParcel9 = 292000;
    //10 Escalao (De 2.000.001 a 2.500.000)
    double fromAmount10 = 2000001;
    double toAmount10 = 2500000;
    double tax10 = 23 / 100;
    double excess10 = 2000000;
    double fixedParcel10 = 402250;
    //11 Escalao (De 2.500.001 a 5.000.000)
    double fromAmount11 = 2500001;
    double toAmount11 = 5000000;
    double tax11 = 24 / 100;
    double excess11 = 2500000;
    double fixedParcel11 = 517250;
    //12 Escalao (De 5.000.001 a 10.000.000)
    double fromAmount12 = 5000001;
    double toAmount12 = 10000000;
    double tax12 = 24.5 / 100;
    double excess12 = 5000000;
    double fixedParcel12 = 1117250;
    //13 Escalao (De 10.000.001 a Infinity)
    double fromAmount13 = 10000001;
    double toAmount13 = double.infinity;
    double tax13 = 25 / 100;
    double excess13 = 10000;
    double fixedParcel13 = 2342250;
    //Logic To Give Result According To The Amount Given In Accordance Of AGT
    if (baseSalary >= fromAmount2 && baseSalary <= toAmount2) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel2 + (baseCalculus - excess2) * tax2;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount3 && baseSalary <= toAmount3) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel3 + (baseCalculus - excess3) * tax3;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount4 && baseSalary <= toAmount4) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel4 + (baseCalculus - excess4) * tax4;
      //
      totalSalary = baseSalary - irtResult - inssCalculated;
      return totalSalary;
    }
    if (baseSalary >= fromAmount5 && baseSalary <= toAmount5) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary + 0 - (inssCalculated);
      //
      irtResult = fixedParcel5 + (baseCalculus - excess5) * tax5;
      //
      totalSalary = baseSalary - irtResult - inssCalculated;
      return totalSalary;
    }
    if (baseSalary >= fromAmount6 && baseSalary <= toAmount6) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel6 + (baseCalculus - excess6) * tax6;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount7 && baseSalary <= toAmount7) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel7 + (baseCalculus - excess7) * tax7;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount8 && baseSalary <= toAmount8) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel8 + (baseCalculus - excess8) * tax8;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount9 && baseSalary <= toAmount9) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel9 + (baseCalculus - excess9) * tax9;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount10 && baseSalary <= toAmount10) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel10 + (baseCalculus - excess10) * tax10;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount11 && baseSalary <= toAmount11) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel11 + (baseCalculus - excess11) * tax11;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount12 && baseSalary <= toAmount12) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel12 + (baseCalculus - excess12) * tax12;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }
    if (baseSalary >= fromAmount13 && baseSalary <= toAmount13) {
      //INSS
      inssCalculated = baseSalary * inssRate;
      //
      baseCalculus = baseSalary - inssCalculated;
      //
      irtResult = fixedParcel13 + (baseCalculus - excess13) * tax13;
      //
      totalSalary = baseSalary - inssCalculated - irtResult;
      return totalSalary;
    }

    return irtResult;
  }

  double calculateIncome() {
    return irtResult;
  }
}

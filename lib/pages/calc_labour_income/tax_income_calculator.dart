class TaxIncomeCalculator {
  double calculateInss(double baseSalary) {
    double inssRate = 3 / 100;
    double inssPayable = 0;
    //INSS TAX
    inssPayable = baseSalary * inssRate;
    return inssPayable;
  }

  double calculateTax(double baseSalary) {
    double inssRate = 3 / 100;
    double inssPayable = 0;
    double incomeFinal = 0;
    double incomeToPay = 0;
    //1 Escalao - no info
    //2 Escalao (De 70.001 a 100.000)
    double from2 = 70001;
    double to2 = 100000;
    double taxa2 = 10 / 100;
    double excesso2 = 70000;
    double parcelaFixa2 = 3000;
    //3 Escalao (De 100.001 a 150.000)
    double from3 = 100001;
    double to3 = 150000;
    double taxa3 = 13 / 100;
    double excesso3 = 100000;
    double parcelaFixa3 = 6000;
    //4 Escalao (De 150.001 a 200.000)
    double from4 = 150001;
    double to4 = 200000;
    double taxa4 = 16 / 100;
    double excesso4 = 150000;
    double parcelaFixa4 = 12500;
    //5 Escalao (De 200.001 a 300.000)
    double from5 = 200001;
    double to5 = 350000;
    double taxa5 = 19 / 100;
    double excesso5 = 200000;
    double parcelaFixa5 = 31250;
    //INSS TAX
    inssPayable = baseSalary * inssRate;
    //MateriaColetavel (Collected Materia)
    double salario = baseSalary - inssPayable;

    if (baseSalary >= from2 && baseSalary <= to2) {
      incomeFinal = parcelaFixa2 + (salario - excesso2) * taxa2;
      incomeToPay = baseSalary - inssPayable - incomeFinal;
      return 0;
    }
    if (baseSalary >= from3 && baseSalary <= to3) {
      incomeFinal = parcelaFixa3 + (salario - excesso3) * taxa3;
      incomeToPay = baseSalary - inssPayable - incomeFinal;
      return 1;
    }
    if (baseSalary >= from4 && baseSalary <= to4) {
      incomeFinal = parcelaFixa4 + (salario - excesso4) * taxa4;
      incomeToPay = baseSalary - inssPayable - incomeFinal;
      return 2;
    }
    if (baseSalary >= from5 && baseSalary <= to5) {
      //INSS
      double inss = baseSalary * 0.03;
      double mc = baseSalary - inss;
      double irt = parcelaFixa5 + (mc - excesso5) * taxa5;

      double finalIrt = baseSalary - inss - irt;
      //Material Coletavel
      //double materialColetavel = salary - inss;
      //IRT
      //double irt = parcelaFixa5 + (materialColetavel - excesso5) * 0.18;
      //Result IRT
      //double finalIrt = salary - inss - irt;
      //Final Result
      return irt;
    }

    return incomeToPay;
  }
}

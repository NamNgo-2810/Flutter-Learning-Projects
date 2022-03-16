class Calculator {

    Calculator({this.height, this.weight});

    final int height, weight;

    double _bmi;

    String resultBMI() {
        _bmi = weight / (height * height) * 10000;
        return _bmi.toStringAsFixed(1);
    }

    String response() {
        if (_bmi >= 25) return 'Overweight';
        else if (_bmi > 18.5) return 'Normal';
        else return 'Underweight';
    }

    String interpretation() {
        if (_bmi >= 25) return 'You have a higher then normal body weight.';
        else if (_bmi > 18.5) return 'You have a normal body weight.';
        else return 'You have a lower than normal body weight.';
    }

}
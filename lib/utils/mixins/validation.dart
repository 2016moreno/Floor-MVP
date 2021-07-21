bool isError = false;
validateFirstName(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your first name';
  }
  return null;
}

validateLastName(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your last name';
  }
  return null;
}

validateLocation(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your last name';
  }
  return null;
}

validateEmail(value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value) || value.isEmpty) {
    return 'Please enter valid email addres';
  }
  return null;
}

//Fixed password requirement, for now only set it so you only need one capital letter and one digit
var pass;
validatePassword(value) {
  pass = value;
  Pattern pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  RegExp regex = new RegExp(pattern);
  if (value.isEmpty) {
    return 'Please enter a password';
  } else if (!regex.hasMatch(value)) {
    return 'Password requirements: 1 captial letter, special character and number required Min legnth: 8';
  } else if (value.length < 8) {
    return "Password must be atleast 6 characters long or more";
  }
}

validateConfirmPassword(value) {
  if (value.isEmpty) {
    return 'Please enter a password';
  } else if (value != pass) {
    return "Passwords do not match";
  }
}

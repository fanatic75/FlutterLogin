class ValidationMixin {
   validationPassword (String value) {
        if(value.length<4){
          return "Password must be bigger than 4 characters.";
        }
      }

      validationEmail (String value){
         if(!value.contains("@")){
          return "Please enter a valid email";
        }
      }
}
// Sadikshya Kuikel | 09/25/25 | calculator
Button [] buttons = new Button[13];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
char op;
boolean left;

void setup() {
  size(320, 380);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = ' ';
  left = true;

  buttons[0] = new Button (40, 105, 40, 40, 'C', #F2A1BB, #D68AA2);
  numButtons[0] = new Button (70, 340, 100, 40, '0', #FFDBE6, #E8BECB);
  buttons[1] = new Button (100, 105, 40, 40, '±', #F2A1BB, #D68AA2);
  buttons[2] = new Button (160, 105, 40, 40, '^', #F2A1BB, #D68AA2);
  buttons[3] = new Button (220, 105, 40, 40, '²', #F2A1BB, #D68AA2);
  buttons[4] = new Button (280, 105, 40, 40, '√', #F2A1BB, #D68AA2);
  numButtons[7] = new Button (40, 165, 40, 40, '7', #FFDBE6, #E8BECB);
  numButtons[8] = new Button (100, 165, 40, 40, '8', #FFDBE6, #E8BECB);
  numButtons[9] = new Button (160, 165, 40, 40, '9', #FFDBE6, #E8BECB);
  buttons[5] = new Button (220, 165, 40, 40, '÷', #F2A1BB, #D68AA2);
  buttons[6] = new Button (280, 165, 40, 40, 's', #F2A1BB, #D68AA2);
  numButtons[4] = new Button (40, 225, 40, 40, '4', #FFDBE6, #E8BECB);
  numButtons[5] = new Button (100, 225, 40, 40, '5', #FFDBE6, #E8BECB);
  numButtons[6] = new Button (160, 225, 40, 40, '6', #FFDBE6, #E8BECB);
  buttons[7] = new Button (220, 225, 40, 40, 'x', #F2A1BB, #D68AA2);
  buttons[8] = new Button (280, 225, 40, 40, 't', #F2A1BB, #D68AA2);
  numButtons[1] = new Button (40, 285, 40, 40, '1', #FFDBE6, #E8BECB);
  numButtons[2] = new Button (100, 285, 40, 40, '2', #FFDBE6, #E8BECB);
  numButtons[3] = new Button (160, 285, 40, 40, '3', #FFDBE6, #E8BECB);
  buttons[9] = new Button (220, 285, 40, 40, '+', #F2A1BB, #D68AA2);
  buttons[10] = new Button (280, 315, 40, 100, '=', #F2A1BB, #D68AA2);
  buttons[11] = new Button (160, 340, 40, 40, '.', #FFDBE6, #E8BECB);
  buttons[12] = new Button (220, 340, 40, 40, '-', #F2A1BB, #D68AA2);
}

void draw () {
  background(#FFF2F6);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyReleased() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107) {
    dVal = "0.0";
    left = false;
    op = '+';
  } else if (keyCode == 45 || keyCode == 109) {
    dVal = "0.0";
    left = false;
    op = '-';
  } else if (keyCode == 47 || keyCode == 111) {
    dVal = "0.0";
      left = false;
      op = '/';
  } else if (keyCode == 106) {
    dVal = "0.0";
      left = false;
      op = '*';
  } else if (keyCode == 10) {
     performCalculation();
  } else if (keyCode == 67) {
     l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = ' ';
      left = true;
  } else if (keyCode == 46 || keyCode == 110) {
    if (!dVal.contains(".")) dVal += ".";
  }
  if (keyCode == 49 || keyCode == 97) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "1";
        else dVal += "1";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "1";
        else dVal += "1";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 50 || keyCode == 98) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "2";
        else dVal += "2";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "2";
        else dVal += "2";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 51 || keyCode == 99) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "3";
        else dVal += "3";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "3";
        else dVal += "3";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 52 || keyCode == 100) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "4";
        else dVal += "4";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "4";
        else dVal += "4";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 53 || keyCode == 101) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "5";
        else dVal += "5";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "5";
        else dVal += "5";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 54 || keyCode == 102) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "6";
        else dVal += "6";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "6";
        else dVal += "6";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "7";
        else dVal += "7";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "7";
        else dVal += "7";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 56 || keyCode == 104) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "8";
        else dVal += "8";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "8";
        else dVal += "8";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 57 || keyCode == 105) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "9";
        else dVal += "9";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "9";
        else dVal += "9";
        r = float(dVal);
      } 
    }
  } else if (keyCode == 48 || keyCode == 96) {
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = "0";
        else dVal += "0";
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = "0";
        else dVal += "0";
        r = float(dVal);
      } 
    }
  }
}

void mouseReleased() {
  for (int i = 0; i<buttons.length; i++) {
    if (!buttons[i].over) continue;

    char v = buttons[i].val;

    if (v == '+') {
      dVal = "0.0";
      left = false;
      op = '+';
    } else if (v == '-') {
      dVal = "0.0";
      left = false;
      op = '-';
    } else if (v == 'x') {
      dVal = "0.0";
      left = false;
      op = '*';
    } else if (v == '÷') {
      dVal = "0.0";
      left = false;
      op = '/';
    } else if (v == '^') {
      dVal = "0.0";
      left = false;
      op = '^';
    } else if (v == '=') {
      performCalculation();
    } else if (v == '²') {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (v == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (v == '.') {
      if (!dVal.contains(".")) dVal += ".";
    } else if (v == '±') {
      if (left) {
        l *= -1;
        dVal = str(l);
      } else {
        r *= -1;
        dVal = str(r);
      }
    } else if (v == 't') {
      if (left) {
        l = tan(radians(l));
        dVal = str(l);
      } else {
        r = tan(radians(r));
        dVal = str(r);
      }
    } else if (v == 's') {
      if (left) {
        l = sin(radians(l));
        dVal = str(l);
      } else {
        r = sin(radians(r));
        dVal = str(r);
      }
    } else if (v == 'C') {
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = ' ';
      left = true;
    }
  }

  for (int i = 0; i<numButtons.length; i++) {
    if (!numButtons[i].over) continue;
    if (dVal.length() < 18) {
      if (left) {
        if (dVal.equals("0.0")) dVal = str(numButtons[i].val);
        else dVal += str(numButtons[i].val);
        l = float(dVal);
      } else {
        if (dVal.equals("0.0")) dVal = str(numButtons[i].val);
        else dVal += str(numButtons[i].val);
        r = float(dVal);
      }
    }
  }

  println("l:" + l + " r:" + r + " result:" + result + " op:" + op + " left:" + left);
}

void updateDisplay() {
  rectMode(CORNER);
  fill (#FCF5F7);
  rect(20, 20, 280, 40, 4);
  textAlign(RIGHT);
  fill(#B92F59);
  textSize(30);
  text(dVal, width-25, 50);
}

void performCalculation() {
  if (op == '+') result = l + r;
  else if (op == '-')
    result = l - r;
  else if (op == '*')
    result = l * r;
  else if (op == '/')
    result = (r != 0) ? l / r : 0;
  else if (op == '^') result = pow(l, r);

  dVal = str(result);
  l = result;
  left = true;
}


class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    Map<String, String> brackets = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (int i = 0; i < s.length; i++) {
      String current = s[i];

      if (current == '(' ||
          current == '{' ||
          current == '[') {
        stack.add(current);
      } else {
        if (stack.isEmpty ||
            stack.removeLast() != brackets[current]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}

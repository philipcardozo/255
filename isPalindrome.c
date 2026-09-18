int isPalindrome(const char s[]) {
    int left = 0;
    int right = 0;

    while (s[right] != '\0') {
        right++;
    }
    right--;

    while (left < right) {
        while (left < right && s[left] == ' ') {
            left++;
        }
        while (left < right && s[right] == ' ') {
            right--;
        }

        if (left >= right) {
            break;
        }

        if (s[left] != s[right]) {
            return 0;
        }
        left++;
        right--;
    }

    return 1;
}

/*
int main(void) {
    return 0;
}
*/

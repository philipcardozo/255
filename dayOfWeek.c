static int isLeapYear(int year) {
    return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
}

int dayOfWeek(int year, int month, int day) {
    int days = 0;
    int currentYear;
    int currentMonth;
    int daysInMonth[] = {31, 28, 31, 30, 31, 30,
                         31, 31, 30, 31, 30, 31};

    for (currentYear = 2000; currentYear < year; currentYear++) {
        days += 365 + isLeapYear(currentYear);
    }

    for (currentMonth = 1; currentMonth < month; currentMonth++) {
        days += daysInMonth[currentMonth - 1];
        if (currentMonth == 2 && isLeapYear(year)) {
            days++;
        }
    }

    days += day - 1;
    return (6 + days) % 7;
}

/*
int main(void) {
    return 0;
}
*/

#
#
# Script to print user information about users, date, time
#
clear
echo "Hello $USER"
echo "Today is \c ";date
echo "Number of users logged in: \c" ; who | wc -l
echo "Calendar"
cal
exit 0

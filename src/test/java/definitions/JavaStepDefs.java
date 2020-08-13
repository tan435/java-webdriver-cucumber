package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

import java.util.ArrayList;
import java.util.List;

public class JavaStepDefs {
    @Given("I say hello world")
    public void iSayHelloWorld() {
        String message = "Hello World!";
        System.out.println(message);
        System.out.println("Hey there! " + message);
        System.out.println(message.toUpperCase());
        System.out.println(message);

        message = message.toUpperCase();
        System.out.println(message);
    }

    @And("I say {string}")
    public void iSay(String message) {
        System.out.println(message);
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println("str1: " + str1);
        System.out.println("str2: " + str2);
        System.out.println("str1 upperCase:" + str1.toUpperCase());
        System.out.println("str2 upperCase:" + str2.toUpperCase());
        System.out.println("str1 length: " + str1.length());
        System.out.println("str2 length: " + str2.length());
        System.out.println("str1 equals str2? " + str1.equals(str2));
        System.out.println("str1 equals ignore case str2? " + str1.equalsIgnoreCase(str2));
        System.out.println("str1 contains str2? " + str1.contains(str2));
    }

    @Given("My strings concatenation {string}, {string}, and {string}")
    public void myStringsConcatenationAnd(String me, String husband, String son) {
        String myName = "Tanya Proskurin";
        String husbandName = "Aleksey Yuzhanin";
        String sonLastName = "Proskurin";
        String country = "Ukraine";
        System.err.println("My name is " + myName + ".");   //"err" means printing in red color
        System.out.println("My husband's name is " + husbandName + ".");
        System.out.println("My son's lastname is " + sonLastName + ".");
        System.out.println("We are from " + country + ".");
        System.out.println("We are from " + country.toLowerCase() + ".");
        System.out.println("My full name contains my son's last name: " + myName.contains(sonLastName));
    }

    @And("I calculate numbers")
    public void iCalculateNumbers() {
        System.out.println(10 / 3);
        System.out.println(21 % 3);

        int i = 5;
        Integer index = 5;

        double d = 5.0;
        Double doubleValue = 5.0;

        System.out.println(index == d);
        // below 2 are the same
        System.out.println(index != d);
        System.out.println(!(index == d));

        if (i > d) {
            System.out.println("i more than d!");
        } else if (i == d) {
            System.out.println("i equals d!");
        } else {
            System.out.println("i less than d!");
        }
    }

    @And("I work with arrays")
    public void iWorkWithArrays() {
        int[] nums = {5, 2, 5, 7, 10, 11, 1};
        nums[0] = 7;
        nums[6] = 17;
        System.out.println(nums);
        for (int i : nums) {
            System.out.print(i + " ");
        }

        System.out.println("First out of nums: " + nums[0]);

        System.out.println();
        String[] fruits = {"kiwi", "apple", "orange"};
        for (String fruit : fruits) {
            System.out.print(fruit + " ");
        }

        System.out.println("First out of fruits: " + fruits[0]);

        String str1 = new String("value");
        Integer int1 = new Integer(5);

        List<Integer> listOfNums = new ArrayList<>();
        listOfNums.add(5);
        listOfNums.add(2);
        listOfNums.add(3);
        for (int i : listOfNums) {
            System.out.println(i);
        }

        List<String> listOfFruits = new ArrayList<>();
        listOfFruits.add("kiwi");
        listOfFruits.add("apple");
        listOfFruits.add("orange");
        for (String fruit : listOfFruits) {
            System.out.print(fruit + " ");
        }
        System.out.println();
        System.out.println();
   /*     @Given("I open login page")
        public void iOpenLoginPage () {
            System.out.println("Opening login");
        }

        @And("I enter valid credentials for {string}")
        public void iEnterValidCredentialsFor (String user){
            System.out.println("Enter creds for " + user);
        }

        @And("I land on dashboard")
        public void iLandOnDashboard () {
            System.out.println("Enter creds for ");
        }

        @And("I don't see admin controls")
        public void iDonTSeeAdminControls () {
            System.out.println("");
        }
   */
    }

    @And("I print if number {string} is positive")
    public void iPrintIfNumberIsPositive(String num) {

        int numberInt = Integer.parseInt(num);
        if (numberInt > 0) {
            System.out.println(numberInt + " is positive");
        } else if (numberInt < 0) {
            System.out.println(numberInt + " is negative");
        } else {
            System.out.println(numberInt + " is niether positive nor negative");
        }
    }

    @And("I print {string}th day of week")
    public void iPrintTheDayOfWeek(String day) {

        String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        int dayNumber = Integer.parseInt(day);
        if (dayNumber > 0 && dayNumber < 8) {
            System.out.println("Day " + "#" + dayNumber + " is " + days[dayNumber-1]);
        }
        else {
            System.out.println("Day" + "#" + dayNumber + " is incorrect day of week");
        }
    }
}
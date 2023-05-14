import java.util.Arrays;
import java.util.Scanner;
public class z3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Дан массив символов: ");
        char[] arr = {'6', 'Л', '*', '*', '*', 'т', 'о', 'н', 'З', ','};
        printArray(arr);

        String s = (((Arrays.toString(arr)).replace("]", "")).replace("[", "")).replace(",", "");
        String str = s.replace(" ", "");
// а) Определить количество прописных букв русского языка.
        int count = 0;
        for (int i = 0; i < arr.length; i++) {
            if (Character.isUpperCase(arr[i]) && arr[i] >= 'А' && arr[i] <= 'Я') {
                count++;
            }
        }
        System.out.println("а) Количество прописных букв русского языка: " + count);
// б) Выяснить, входит ли в последовательность знак препинания, введенный с клавиатуры, например «:».
        System.out.print("Введите знак препинания: ");
        char znak = scanner.next().charAt(0);
        boolean Znak = false;
        for (int h = 0; h < arr.length; h++) {
            if (arr[h] == znak) {
                Znak = true;
                break;
            }
        }
        if (Znak) {
            System.out.println("б) Данный знак препинания содержится в массиве");
        } else {
            System.out.println("б) Данный знак препинания не содержится в массиве");
        }
// в) Выяснить, верно ли, что среди символов имеются хотя бы две буквы, входящие в слово, введенное с клавиатуры, например шина.
        System.out.println("Введите слово: ");
        String slovo = scanner.next();
        int count1 = 0;
        for (int j = 0; j < slovo.length(); j++) {
            for (int k = 0; k < str.length(); k++) {
                if (slovo.charAt(j) == str.charAt(k)) {
                    count1++;
                }
            }
        }
        if (count1 >= slovo.length()) {
            System.out.println("в) Все буквы из слова " + slovo + " содержатся в исходной последовательности");
        } else {
            System.out.println("в) Не все буквы из слова " + slovo + " содержатся в исходной последовательности");
        }
// г) Выяснить, имеется ли среди символов пара соседствующих букв «то» или «от».
        boolean ot = true;
        for (int g = 0; g < str.length(); g++) {
            if ((str.contains("от")) || (str.contains("то"))) {
                ot = true;
            } else {
                ot = false;
            }
        }
        if (ot) {
            System.out.println("г) Последовательность содержит соседствующие буквы о и т");
        } else if (!ot) {
            System.out.println("г) Последовательность не содержит соседствующие буквы о и н");
        }
// д) Выяснить, имеется ли среди символов три подряд идущих одинаковых символа.
        boolean Simvol = true;
        for (int h = 0; h < arr.length - 2; h++) {
            if (arr[h] == arr[h + 2]) {
                Simvol = true;
                break;
            } else {
                Simvol = false;
            }
        }
        if (Simvol) {
            System.out.println("д) Последовательность содержит три подряд идущих одинаковых символа");
        } else if (!Simvol) {
            System.out.println("д) Последовательность не содержит три подряд идущих одинаковых символа");
        }
    }
        public static void printArray( char[] array){
                for (int i = 0; i <= array.length - 1; i++) {
                    System.out.print(array[i] + "\t");
                }
                System.out.println();
            }
        }

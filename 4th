//Name : Siddhi Pandya 21CE086

//Aim :  WAP to show use of character and byte stream.
 import java.io.FileInputStream;
 import java.io.FileOutputStream;
 import java.io.IOException;

public class Pr4 {
    public static void main(String[] args) {
        FileInputStream fis = null;
        FileOutputStream fos = null;

        try {
            fis = new FileInputStream("InputFile.jpg");
            fos = new FileOutputStream("OutputFile.jpg");

            int temp;

            while ((temp = fis.read()) != -1) {
                fos.write(temp);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }// Prepared by Siddhi Pandya 21CE086

}

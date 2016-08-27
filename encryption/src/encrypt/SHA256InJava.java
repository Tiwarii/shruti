package encrypt;

/**
 * Created by acer on 6/7/2016.
 */

    import java.security.MessageDigest;

            import java.util.Scanner;

            import javax.xml.bind.DatatypeConverter;



/**
 6
 * Demonstrates how to generate SHA256 hash in Java
 7
 * @author JJ
8
 */

    public class SHA256InJava {



        public static void main(String[] args) {

            Scanner sn = new Scanner(System.in);

            System.out.print("Please enter data for which SHA256 is required:");

            String data = sn.nextLine();



            SHA256InJava sj = new SHA256InJava();

            String hash = sj.getSHA256Hash(data);

            System.out.println("The SHA256 (hexadecimal encoded) hash is:"+hash);

        }



                /**
                 22
                 * Returns a hexadecimal encoded SHA-256 hash for the input String.
                 23
                 * @param data
                24
                 * @return
                25
                 */

        private String getSHA256Hash(String data) {

            String result = null;

            try {

                MessageDigest digest = MessageDigest.getInstance("SHA-256");

                byte[] hash = digest.digest(data.getBytes("UTF-8"));

                return bytesToHex(hash); // make it printable

            }catch(Exception ex) {

                ex.printStackTrace();

            }

            return result;

        }
    private String  bytesToHex(byte[] hash) {

        return DatatypeConverter.printHexBinary(hash);
            }

}





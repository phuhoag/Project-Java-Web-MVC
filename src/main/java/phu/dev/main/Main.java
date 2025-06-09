package phu.dev.main;

import phu.dev.dao.UserDAO;
import phu.dev.ConnectMysql.DBConnection;
import phu.dev.model.User;

import java.sql.Connection;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        try (Connection conn = DBConnection.getConnection();
             Scanner sc = new Scanner(System.in)) {

            UserDAO userDAO = new UserDAO(conn);
            int choice;

            do {
                System.out.println("\n--- USER MANAGEMENT ---");
                System.out.println("1. Insert new user");
                System.out.println("2. Show all users");
                System.out.println("3. Find user by ID");
                System.out.println("4. Update user");
                System.out.println("5. Delete user");
                System.out.println("0. Exit");
                System.out.print("Your choice: ");
                choice = sc.nextInt();
                sc.nextLine(); // consume newline

                switch (choice) {
                    case 1:
                        System.out.print("Email: ");
                        String email = sc.nextLine();
                        System.out.print("Password: ");
                        String password = sc.nextLine();
                        System.out.print("Role: ");
                        String role = sc.nextLine();
                        User newUser = new User(0, email, password, role);
                        userDAO.insert(newUser);
                        System.out.println("User inserted.");
                        break;

                    case 2:
                        List<User> users = userDAO.findAll();
                        for (User u : users) {
                            System.out.println(u.getId() + " - " + u.getEmail());
                        }
                        break;

                    case 3:
                        System.out.print("Enter user ID: ");
                        int id = sc.nextInt();
                        User foundUser = userDAO.findById(id);
                        if (foundUser != null) {
                            System.out.println("Found: " + foundUser.getEmail() + ", Role: " + foundUser.getRole());
                        } else {
                            System.out.println("User not found.");
                        }
                        break;

                    case 4:
                        System.out.print("User ID to update: ");
                        int updateId = sc.nextInt();
                        sc.nextLine();
                        System.out.print("New email: ");
                        String newEmail = sc.nextLine();
                        System.out.print("New password: ");
                        String newPassword = sc.nextLine();
                        System.out.print("New role: ");
                        String newRole = sc.nextLine();
                        User updatedUser = new User(updateId, newEmail, newPassword, newRole);
                        userDAO.update(updatedUser);
                        System.out.println("User updated.");
                        break;

                    case 5:
                        System.out.print("User ID to delete: ");
                        int deleteId = sc.nextInt();
                        userDAO.delete(deleteId);
                        System.out.println("User deleted.");
                        break;

                    case 0:
                        System.out.println("Goodbye!");
                        break;

                    default:
                        System.out.println("Invalid choice.");
                }

            } while (choice != 0);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

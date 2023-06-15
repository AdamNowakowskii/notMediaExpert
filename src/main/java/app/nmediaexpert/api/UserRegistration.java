package app.nmediaexpert.api;

import org.hibernate.validator.constraints.Email;

import javax.validation.constraints.*;

public class UserRegistration {
    @NotNull
    @Pattern(regexp="^[A-Za-z]*$",message = "The first name must contain only characters.")
    private String firstName;
    @NotNull
    @Pattern(regexp="^[A-Za-z]*$",message = "The Last name must contain only characters.")
    private String lastName;
    @NotNull
    @Email(message = "Invalid email")
    private String email;
    @NotNull
    @Size(min = 8, message = "Your password must contain at least 8 characters.")
    private String password;

    public UserRegistration(String firstName, String lastName, String email, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

package app.nmediaexpert.phone;

public class Phone {
    private int id;
    private String description;
    private int idPhone;
    private String phoneUrl;
    private String screen;
    private String battery;
    private String ram;
    private int phonePrice;
    private String phoneCategory;
    private String phoneName;

    public Phone(int id, String description, int idPhone, String phoneUrl, String screen, String battery, String ram, int phonePrice, String phoneCategory, String phoneName) {
        this.id = id;
        this.description = description;
        this.idPhone = idPhone;
        this.phoneUrl = phoneUrl;
        this.screen = screen;
        this.battery = battery;
        this.ram = ram;
        this.phonePrice = phonePrice;
        this.phoneCategory = phoneCategory;
        this.phoneName = phoneName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIdPhone() {
        return idPhone;
    }

    public void setIdPhone(int idPhone) {
        this.idPhone = idPhone;
    }

    public String getPhoneUrl() {
        return phoneUrl;
    }

    public void setPhoneUrl(String phoneUrl) {
        this.phoneUrl = phoneUrl;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public int getPhonePrice() {
        return phonePrice;
    }

    public void setPhonePrice(int phonePrice) {
        this.phonePrice = phonePrice;
    }

    public String getPhoneCategory() {
        return phoneCategory;
    }

    public void setPhoneCategory(String phoneCategory) {
        this.phoneCategory = phoneCategory;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }
}
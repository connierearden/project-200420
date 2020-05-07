import java.util.Objects;

public class User {
    private int id;
    private String name;
    private int age;
    private String password;

    public User() {}

    public User(int id, String name, int age, String password) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public int getAge() {
        return age;
    }
    public String getPassword() {
        return password;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setAge(int age) {
        this.age = age;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", password='" + password + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() !=obj.getClass()) return false;
        User user = (User) obj;
        if (!Objects.equals(name, user.name)) return false;
        //if (name!=null ? !name.equals(user.name) : user.name!=null) return false;
        return !Objects.equals(password, user.password);
        //return password!=null ? !password.equals(user.password) : user.password !=null;

    }

    @Override
    public int hashCode() {
        int result = name!=null? name.hashCode():0;
        result = 31*result + (password!=null ? password.hashCode(): 0);
        return result;
    }
}
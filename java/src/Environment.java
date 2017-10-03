import java.util.ArrayList;
import java.util.List;

public class Environment {

    public List<Car> cars;

    public Environment() {
        this.cars = new ArrayList<>();
    }

    public double get_next_station_following(double car_position){
        return Float.POSITIVE_INFINITY;
    }

}

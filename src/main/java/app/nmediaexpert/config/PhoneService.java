package app.nmediaexpert.config;

import app.nmediaexpert.api.PhoneBasicInfo;
import app.nmediaexpert.phone.Phone;
import app.nmediaexpert.phone.PhoneDAO;
import java.util.List;
import java.util.stream.Collectors;

public class PhoneService {
    private final PhoneDAO phoneDAO = new PhoneDAO();

    public List<PhoneBasicInfo> findAll () {
        return phoneDAO.findAll()
                .stream().map(PhoneMapper::map)
                .collect(Collectors.toList());
    }

    private static class PhoneMapper {
        static PhoneBasicInfo map (Phone p) {
            return new PhoneBasicInfo(
                    p.getDescription(),
                    p.getIdPhone(),
                    p.getPhoneUrl(),
                    p.getScreen(),
                    p.getBattery(),
                    p.getRam(),
                    p.getPhonePrice(),
                    p.getPhoneCategory(),
                    p.getPhoneName()
            );
        }
    }

    public  List<PhoneBasicInfo> sortPhone(String categoryName) {
        List<PhoneBasicInfo> basicInfos = findAll();
        return basicInfos.stream()
                .filter(p -> categoryName.equalsIgnoreCase(p.getPhoneCategory()))
                .collect(Collectors.toList());
    }
}
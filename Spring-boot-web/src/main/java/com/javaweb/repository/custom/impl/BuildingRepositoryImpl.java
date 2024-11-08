package com.javaweb.repository.custom.impl;
import java.lang.reflect.Field;
import java.sql.SQLOutput;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.request.BuildingSearchRequest;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.repository.custom.BuildingRepositoryCustom;


@Repository
@Primary
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<BuildingEntity> findAll(BuildingSearchRequest params) {
        StringBuilder query = new StringBuilder(" ");
        query.append(queryJoinBuilding(params));
        query.append(queryNomal(params));
        query.append(querySpeciel(params));
        System.out.println(query.toString());
        Query querySql = entityManager.createNativeQuery(query.toString(), BuildingEntity.class);
        return querySql.getResultList();
    }

    public StringBuilder queryJoinBuilding(BuildingSearchRequest params) {
        StringBuilder query = new StringBuilder("select building.* from building ");
        Long staffId = params.getStaffId();
        if (staffId != null) {
            query.append(" JOIN assignmentbuilding ON assignmentbuilding.buildingid = building.id ");
        }
        Long areaRentStart = params.getAreaRentStart();
        Long areaRentFinish = params.getAreaRentFinish();
        if (areaRentStart != null || areaRentFinish != null) {
            query.append(" JOIN rentarea ON rentarea.buildingid = building.id ");
        }
//        List<String> code = params.getType();
//        if (code != null && !code.isEmpty()) {
//            query.append(" JOIN buildingrenttype ON buildingrenttype.buildingid = building.id ");
//            query.append(" JOIN renttype ON renttype.id = buildingrenttype.renttypeid ");
//        }
        return query.append(" where 1=1 ");
    }

    public StringBuilder queryNomal(BuildingSearchRequest params) {
        StringBuilder query = new StringBuilder("");
        try {
            Field[] fields = BuildingSearchRequest.class.getDeclaredFields();
            for (Field it : fields) {
                it.setAccessible(true);
                String fieldName = it.getName();
                if (!fieldName.equals("type") && !fieldName.equals("staffId") && !fieldName.startsWith("price") && !fieldName.startsWith("area")) {
                    Object value = it.get(params);
//                    if (value != null) {
//                        if (it.getType().getName().equals("java.lang.Long")) {
//                            query.append(" And building.").append(fieldName).append(" = ").append(value.toString());
//                        } else {
//                            query.append(" And building.").append(fieldName).append(" like '%").append(value.toString()).append("%'");
//                        }
//                    }
                    if (value != null && !(value instanceof String && ((String) value).trim().isEmpty())) {
                        if (it.getType().getName().equals("java.lang.Long")) {
                            query.append(" And building.").append(fieldName).append(" = ").append(value.toString());
                        } else {
                            query.append(" And building.").append(fieldName).append(" like '%").append(value.toString()).append("%'");
                        }
                    }

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return query;
    }

    public StringBuilder querySpeciel(BuildingSearchRequest params) {
        StringBuilder query = new StringBuilder("");
        Long staffId = params.getStaffId();
        if (staffId != null) {
            query.append(" And assignmentbuilding.staffid = ").append(staffId);
        }
        Long areaRentStart = params.getAreaRentStart();
        Long areaRentFinish = params.getAreaRentFinish();
        if (areaRentStart != null) {
            query.append(" And rentarea.value >= ").append(areaRentStart);
        }
        if (areaRentFinish != null) {
            query.append(" And rentarea.value <= ").append(areaRentFinish);
        }
        Long priceRentStart = params.getPriceRentStart();
        Long priceRentFinish = params.getPriceRentFinish();
        if (priceRentStart != null) {
            query.append(" And building.rentprice >= ").append(priceRentStart);
        }
        if (priceRentFinish != null) {
            query.append(" And building.rentprice <= ").append(priceRentFinish);
        }

        List<String> code = params.getType();
        if (code != null && !code.isEmpty()) {
            query.append(" And (");
            for (int i = 0; i < code.size(); i++) {
                if (i > 0) {
                    query.append(" OR ");
                }
                query.append("building.type LIKE '%").append(code.get(i)).append("%'");
            }
            query.append(")");
        }
        query.append(" GROUP BY building.id;");
        return query;
    }

}

//'{"data":[{"userName":"nguyenvanb","staffId":2,"checked":"checked"}
//        ,{"userName":"nguyenvanc","staffId":3,"checked":"checked"},
//        {"userName":"nguyenvand","staffId":4,"checked":" "}],
//        "message":"success","detail":null}'

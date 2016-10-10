package com.tm.dbModels;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TypeModelDAO {
	
	HashMap<String, HashMap<String,ArrayList<String>>> upperTypeTypeModel = new HashMap<>();

	private static TypeModelDAO instance = null;

	private TypeModelDAO() {
		Statement st = null;
		ResultSet set = null;
		ResultSet set2 = null;
		PreparedStatement prep = null;
		try {
			 st = DBManager.getInstance().getConnection().createStatement();
			 set = st.executeQuery("SELECT id_upper_type,upper_type_name FROM product_upper_type;");
			 while (set.next()) {
				 
				String upperType = set.getString("upper_type_name");
				System.out.println("GLEDAI TUK WEEEEEEEEEEEEEEEEE" + upperType);
				upperTypeTypeModel.put(upperType, new HashMap<String,ArrayList<String>>());

			 }
		} catch (SQLException e) {
			System.out.println("ERROR: could not create statement in TypeModel DAO");
			e.printStackTrace();
		} 
		
		try {
			
			set = st.executeQuery("SELECT type_id,type_name,id_upper_type FROM product_type;");
			while(set.next()){
				String type = set.getString("type_name");
				Integer upperTypeId = set.getInt("id_upper_type");
				String upperTypeName = null;
				prep = DBManager.getInstance().getConnection().prepareStatement("SELECT id_upper_type,upper_type_name FROM product_upper_type WHERE id_upper_type LIKE (?);");
				prep.setInt(1, upperTypeId);
				set2 = prep.executeQuery();
				while(set2.next()){
					upperTypeName = set2.getString("upper_type_name");
				}
				upperTypeTypeModel.get(upperTypeName).put(type, new ArrayList<String>());
			}
		} catch (SQLException e) {
			System.out.println("ERROR: could not create statement in TypeModel DAO");
			e.printStackTrace();
		}
		
		try {
			set = st.executeQuery("SELECT model_id,type_id,id_upper_type,model_name FROM product_models;");
			while(set.next()){
				String model = set.getString("model_name");
				Integer typeId = set.getInt("type_id");
				Integer upperId = set.getInt("id_upper_type");
				String typeName = null;
				String upperTypeName = null;
				prep = DBManager.getInstance().getConnection().prepareStatement("SELECT id_upper_type,upper_type_name FROM product_upper_type WHERE id_upper_type LIKE (?);");
				prep.setInt(1, upperId);
				set2 = prep.executeQuery();
				while(set2.next()){
					upperTypeName = set2.getString("upper_type_name");
				}
				prep = DBManager.getInstance().getConnection().prepareStatement("SELECT type_id,type_name,id_upper_type FROM product_type WHERE type_id LIKE (?);");
				prep.setInt(1, typeId);
				set2 = prep.executeQuery();
				while(set2.next()){
					typeName = set2.getString("type_name");
				}
				upperTypeTypeModel.get(upperTypeName).get(typeName).add(model);
			}
		} catch (SQLException e) {
			System.out.println("ERROR: could not create statement in TypeModel DAO");
			e.printStackTrace();
		}
		
	}

	public static synchronized TypeModelDAO getInstance() {
		if (instance == null) {
			instance = new TypeModelDAO();
		}
		return instance;
	}
	
	public Map<String, HashMap<String,ArrayList<String>>> getModelType(){
		return Collections.unmodifiableMap(upperTypeTypeModel);
	}
	
}

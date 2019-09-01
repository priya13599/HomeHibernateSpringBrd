package com.nucleus.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.nucleus.model.Customer;
@Repository
public class CustomerDaoImpl implements ICustomerDao{
@Autowired
	JdbcTemplate jdbcTemplate;
	@Override
	public int saveCustomer(Customer customer) {
		
		
	Object[] object = {customer.getCustomerCode(),customer.getCustomerName(),customer.getAddress1(),customer.getAddress2(),customer.getPinCode(),customer.getEmail(),customer.getContactNo(),customer.getContactPerson(),customer.getRecordStatus(),customer.getInactiveFlag(),customer.getCreateDate(),customer.getCreatedBy()};
		
	int i = jdbcTemplate.update("insert into  makercheckercustomertable130 (customer_code,customer_name,customer_address1,customer_address2,customer_pin_code,email_address,contact_number,primary_contact_person,record_status,active_inactive_flag,create_date,created_by) values(?,?,?,?,?,?,?,?,?,?,?,?)",object);
	return i;
	}
	@Override
	public int deleteCustomer(Customer customer) {
		int i = jdbcTemplate.update("delete from makercheckercustomertable130 where customer_code=?",customer.getCustomerCode());
		return i;
	}
	@Override
	public Customer displayCustomer(Customer customer) {
		Customer customer1 = jdbcTemplate.query("select * from makercheckercustomertable130 where customer_code='"+customer.getCustomerCode()+"'",new ResultSetExtractor<Customer>()
				{

					@Override
					public Customer extractData(ResultSet resultset) throws SQLException, DataAccessException {
						if(resultset.next())
						{
							Customer customer = new Customer();
							customer.setCustomerCode(resultset.getString(1));
							customer.setCustomerName(resultset.getString(2));
							customer.setAddress1(resultset.getString(3));
							customer.setAddress2(resultset.getString(4));
							customer.setPinCode(Integer.parseInt(resultset.getString(5)));
							customer.setEmail(resultset.getString(6));
							customer.setContactNo(Long.parseLong(resultset.getString(7)));
							customer.setContactPerson(resultset.getString(8));
							customer.setRecordStatus(resultset.getString(9));
							customer.setInactiveFlag(resultset.getString(10));
							customer.setCreateDate(resultset.getDate(11));
							customer.setCreatedBy(resultset.getString(12));
							customer.setModifiedDate(resultset.getDate(13));
							customer.setModifiedBy(resultset.getString(14));
							customer.setAuthorizedDate(resultset.getDate(15));
							customer.setAuthorizedBy(resultset.getString(16));
							return customer;
						}
						return null;
						
						
					}
			
				});
		return customer1;
	}
	@Override
	public List<Customer> displayCustomer1(Customer customer) {
		List<Customer> customer1 =  jdbcTemplate.query("select * from makercheckercustomertable130", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet resultset, int rowno) throws SQLException {
				Customer customer = new Customer();
				customer.setCustomerCode(resultset.getString(1));
				customer.setCustomerName(resultset.getString(2));
				customer.setAddress1(resultset.getString(3));
				customer.setAddress2(resultset.getString(4));
				customer.setPinCode(Integer.parseInt(resultset.getString(5)));
				customer.setEmail(resultset.getString(6));
				customer.setContactNo(Long.parseLong(resultset.getString(7)));
				customer.setContactPerson(resultset.getString(8));
				customer.setRecordStatus(resultset.getString(9));
				customer.setInactiveFlag(resultset.getString(10));
				customer.setCreateDate(resultset.getDate(11));
				customer.setCreatedBy(resultset.getString(12));
				customer.setModifiedDate(resultset.getDate(13));
				customer.setModifiedBy(resultset.getString(14));
				customer.setAuthorizedDate(resultset.getDate(15));
				customer.setAuthorizedBy(resultset.getString(16));
				return customer;
			}
			
		});
		return customer1;
	}
	@Override
	public List<Customer> sortinascending() {
		List<Customer> customer1 =  jdbcTemplate.query("select * from makercheckercustomertable130 order by customer_code asc", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet resultset, int rowno) throws SQLException {
				Customer customer = new Customer();
				customer.setCustomerCode(resultset.getString(1));
				customer.setCustomerName(resultset.getString(2));
				customer.setAddress1(resultset.getString(3));
				customer.setAddress2(resultset.getString(4));
				customer.setPinCode(Integer.parseInt(resultset.getString(5)));
				customer.setEmail(resultset.getString(6));
				customer.setContactNo(Long.parseLong(resultset.getString(7)));
				customer.setContactPerson(resultset.getString(8));
				customer.setRecordStatus(resultset.getString(9));
				customer.setInactiveFlag(resultset.getString(10));
				customer.setCreateDate(resultset.getDate(11));
				customer.setCreatedBy(resultset.getString(12));
				customer.setModifiedDate(resultset.getDate(13));
				customer.setModifiedBy(resultset.getString(14));
				customer.setAuthorizedDate(resultset.getDate(15));
				customer.setAuthorizedBy(resultset.getString(16));
				return customer;
			}
			
		});
		return customer1;
	}
	
	
	
	@Override
	public List<Customer> sortindescending() {
		List<Customer> customer1 =  jdbcTemplate.query("select * from makercheckercustomertable130 order by customer_code desc", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet resultset, int rowno) throws SQLException {
				Customer customer = new Customer();
				customer.setCustomerCode(resultset.getString(1));
				customer.setCustomerName(resultset.getString(2));
				customer.setAddress1(resultset.getString(3));
				customer.setAddress2(resultset.getString(4));
				customer.setPinCode(Integer.parseInt(resultset.getString(5)));
				customer.setEmail(resultset.getString(6));
				customer.setContactNo(Long.parseLong(resultset.getString(7)));
				customer.setContactPerson(resultset.getString(8));
				customer.setRecordStatus(resultset.getString(9));
				customer.setInactiveFlag(resultset.getString(10));
				customer.setCreateDate(resultset.getDate(11));
				customer.setCreatedBy(resultset.getString(12));
				customer.setModifiedDate(resultset.getDate(13));
				customer.setModifiedBy(resultset.getString(14));
				customer.setAuthorizedDate(resultset.getDate(15));
				customer.setAuthorizedBy(resultset.getString(16));
				return customer;
			}
			
		});
		return customer1;
	}
	@Override
	public Customer updateCustomer(Customer customer) {
		Customer customer1 = jdbcTemplate.query("select * from makercheckercustomertable130 where customer_code='"+customer.getCustomerCode()+"'",new ResultSetExtractor<Customer>()
		{

			@Override
			public Customer extractData(ResultSet resultset) throws SQLException, DataAccessException {
				if(resultset.next())
				{
					Customer customer = new Customer();
					customer.setCustomerCode(resultset.getString(1));
					customer.setCustomerName(resultset.getString(2));
					customer.setAddress1(resultset.getString(3));
					customer.setAddress2(resultset.getString(4));
					customer.setPinCode(Integer.parseInt(resultset.getString(5)));
					customer.setEmail(resultset.getString(6));
					customer.setContactNo(Long.parseLong(resultset.getString(7)));
					customer.setContactPerson(resultset.getString(8));
					customer.setRecordStatus(resultset.getString(9));
					customer.setInactiveFlag(resultset.getString(10));
					customer.setCreateDate(resultset.getDate(11));
					customer.setCreatedBy(resultset.getString(12));
					customer.setModifiedDate(resultset.getDate(13));
					customer.setModifiedBy(resultset.getString(14));
					customer.setAuthorizedDate(resultset.getDate(15));
					customer.setAuthorizedBy(resultset.getString(16));
					return customer;
				}
				return null;
				
				
			}
	
		});
return customer1;
	}
	@Override
	public void updateCustomerdetails(Customer customer2) {
		Object[] object= {customer2.getCustomerName(),customer2.getAddress1(),customer2.getAddress2(),customer2.getPinCode(),customer2.getEmail(),customer2.getContactNo(),customer2.getContactPerson(),customer2.getInactiveFlag(),customer2.getCustomerCode()};
		
		jdbcTemplate.update("update makercheckercustomertable130 set customer_name=?,customer_address1=?,customer_address2=?,customer_pin_code=?,email_address=?,contact_number=?,primary_contact_person=?,active_inactive_flag=? where customer_code=?",object);
	}
	
	
	/*@Override
	public ArrayList CheckPrimaryKey() {
		
		Customer[] customer = new Customer[1000];
		ArrayList<Customer> arraylist = new ArrayList<Customer>();
		List<Customer> customer1 =  jdbcTemplate.query("select * from makercheckercustomertable130", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet resultset, int rowno) throws SQLException {
				int i=0;
				customer[i] = new Customer();
				customer[i].setCustomerCode(resultset.getString(1));
				arraylist.add(customer[i]);
				i++;
				
				return null;
			}
			
		});
		return arraylist;
	} */

}
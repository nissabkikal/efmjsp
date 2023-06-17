package com.ismo.crjj.efm.dao;

import java.util.List;

public interface IDao<T> {

	List<T> getAll();

	T getOne(int id);

	boolean save(T obj);

	boolean update(T obj);

	boolean delete(T obj);

}

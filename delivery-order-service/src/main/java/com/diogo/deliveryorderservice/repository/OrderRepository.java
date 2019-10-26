package com.diogo.deliveryorderservice.repository;

import com.diogo.deliveryorderservice.model.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<Order, Integer> {
}

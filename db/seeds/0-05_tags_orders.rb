# ======================== orders ========================

# orders Attributes
@tag_creator.tag_pages   = []
@tag_creator.tag_belongs = []
@tag_creator.tag_has     = []
aux                      = [
    {:tag_name => :cart_empty?},
    {:tag_name => :order_items_count},
    {:tag_name => :order_display_total},
    {:tag_name => :order_total},
    {:tag_name => :order_id},
    {:tag_name => :order_number},
    {:tag_name => :order_number_url},
    {:tag_name => :order_item_total},
    {:tag_name => :order_adjustment_total},
    {:tag_name => :order_user_id},
    {:tag_name => :order_completed_at},
    {:tag_name => :order_bill_address_id},
    {:tag_name => :order_ship_address_id},
    {:tag_name => :order_payment_total},
    {:tag_name => :order_shipping_method_id},
    {:tag_name => :order_state},
    {:tag_name => :order_shipment_state},
    {:tag_name => :order_payment_state},
    {:tag_name => :order_email},
    {:tag_name => :order_special_instructions},
    {:tag_name => :order_created_at},
    {:tag_name => :order_updated_at},
    {:tag_name => :order_currency},
    {:tag_name => :order_last_ip_address},
    {:tag_name => :order_created_by_id},
    {:tag_name => :order_shipment_total},
    {:tag_name => :order_additional_tax_total},
    {:tag_name => :order_promo_total},
    {:tag_name => :order_channel},
    {:tag_name => :order_included_tax_total},
    {:tag_name => :order_item_count},
    {:tag_name => :order_approver_id},
    {:tag_name => :order_approved_at},
    {:tag_name => :order_confirmation_delivered},
    {:tag_name => :order_considered_risky},
    {:tag_name => :order_abandoned_email_sent_at},
    {:tag_name => :order_partner_id},
    {:tag_name => :order_partner_payment_state},
]
@tag_creator.create_tags(:tags_orders, aux)

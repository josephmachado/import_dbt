select customer_id + 1
from {{ ref('customer') }}

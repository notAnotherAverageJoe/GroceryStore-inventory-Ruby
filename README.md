# 🛒 Inventory Management System

Welcome to the **Inventory Management System**! This system helps you manage inventory for various departments in your store, ensuring you keep track of items efficiently and effectively.

## 🚀 Features

- Manage inventory for multiple departments: Seafood, Meat, Grocery, Produce, Bakery, Liquor, Dairy.
- Capture specific details based on department requirements.
- User-friendly interface for adding new items to the inventory.

## 🗂️ Departments

The system supports the following departments:

- 🐟 Seafood
- 🍖 Meat
- 🛒 Grocery
- 🍎 Produce
- 🍰 Bakery
- 🍷 Liquor
- 🥛 Dairy

## 📦 Inventory Structure

Each inventory item has the following attributes:

- `item`: The name of the item.
- `stock`: The quantity in stock.
- `identifier`: A unique identifier for the item.
- `department`: The department the item belongs to.

### Specific Attributes by Department

#### 🐟 Seafood

- `origin`: The origin of the seafood.

#### 🍖 Meat

- `diet`: The diet of the animal.
- `cut_type` (optional): The type of cut for butchered meat.
- `expiration_date` (optional): The expiration date for butchered meat.

#### 🛒 Grocery

- `shelf_life`: The shelf life of the item.

#### 🍎 Produce

- `wet_wall`: Whether the item requires a wet wall.
- `weekly_count` (optional): Weekly count for fruit cutting.
- `exp_date` (optional): Expiration date for fruit cutting.
- `cut_style` (optional): Cut style for fruit cutting.

#### 🍰 Bakery

- `pastry_type`: The type of pastry (cake, cupcake, bread).
- `gluten_free`: Whether the item is gluten-free.

#### 🍷 Liquor

- `alcohol_content`: The alcohol content of the item.

#### 🥛 Dairy

- `temperature_control_required`: Whether the item requires controlled temperatures.

## 📘 Usage

To start managing your inventory, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/inventory-management-system.git
   cd inventory-management-system
   ```

2. Run the inventory system:

   ```bash
   ruby lib/inventory.rb
   ```

3. Follow the prompts to add items to your inventory.

## 🤝 Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue to help improve this project.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## 🛠️ Technologies Used

- Ruby

## 📞 Contact

For any inquiries or support, please reach out to:

- Email: [joeskokan20@gmail.com](mailto:joeskokan20@gmail.com)

Thank you for using our inventory management system! 🌟

# Display Rust command-line utility versions
rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version              # Rust compiler
	cargo --version              # Rust package manager
	rustfmt --version            # Rust code formatter
	rustup --version             # Rust toolchain manager
	clippy-driver --version      # Rust linter

# Format code using rustfmt
format:
	cargo fmt --quiet

# Run clippy for linting
lint:
	cargo clippy --quiet

# Run tests
test:
	cargo test --quiet

# Build and run the project
run:
	cargo run

# Build release version
release:
	cargo build --release

# Install Rust toolchain if needed
install:
	# Install if needed
	# @echo "Updating rust toolchain"
	# rustup update stable
	# rustup default stable 

# Run all formatting, linting, and testing tasks
all: format lint test run

# Custom tasks

# Extract data
extract: 
	cargo run extract

# Transform and Load data
transform_load:
	cargo run transform_load

# Create a database entry
create:
	cargo run query "INSERT INTO baskin_icecream (Flavour, Calories, Total_Fat_g, Trans_Fat_g, Carbohydrates_g, Sugars_g , Protein_g, Size) VALUES (Butterscotch',155,8.5,0.3,20,12,3.5,kids70g);"

# Read from the database
read:
	cargo run query "SELECT * FROM baskin_icecream WHERE Flavour='Fudge Brownie';"

# Update a database entry
update:
	cargo run query "UPDATE baskin_icecream SET Falvour='Rainbow Sherbet',Calories=135,Total_Fat_g=2.0,Trans_Fat_g=0.1,Carbohydrates_g=22,Sugars_g=20,Protein_g=1.0,Size='kids70g' WHERE Flavour='Rainbow Sherbet';"

# Delete a database entry
delete:
	cargo run query "DELETE FROM baskin_icecream WHERE Calories=160;"

# Generate and push changes to GitHub
generate_and_push:
	@if [ -n "$$(git status --porcelain)" ]; then \
		git config --local user.email "action@github.com"; \
		git config --local user.name "GitHub Action"; \
		git add .; \
		git commit -m "Add query log"; \
		git push; \
	else \
		echo "No changes to commit. Skipping commit and push."; \
	fi

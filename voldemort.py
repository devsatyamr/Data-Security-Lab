import cryptography.fernet

def generate_key():
    """Generates a random encryption key."""
    return cryptography.fernet.Fernet.generate_key()

def encrypt_file(key, file_path):
    """Encrypts a file using the given key and file path."""
    with open(file_path, "rb") as f:
        data = f.read()

    fernet = cryptography.fernet.Fernet(key)
    encrypted_data = fernet.encrypt(data)

    with open(file_path + ".enc", "wb") as f:
        f.write(encrypted_data)
        
    with open(file_path + ".key", "wb") as f:
        f.write(key)

def main():
    """Encrypts a file specified by the user."""

    # Get the file path from the user.
    file_path = input("Enter the path to the file to encrypt: ")

    # Generate a random encryption key.
    key = generate_key()

    # Encrypt the file.
    encrypt_file(key, file_path)

    print("The file has been encrypted successfully.")

if __name__ == "__main__":
    main()

import cryptography.fernet

def decrypt_file(key, file_path):
    """Decrypts a file using the given key and file path."""
    with open(file_path, "rb") as f:
        encrypted_data = f.read()

    fernet = cryptography.fernet.Fernet(key)
    decrypted_data = fernet.decrypt(encrypted_data)

    with open(file_path[:-4], "wb") as f:
        f.write(decrypted_data)

def main():
    """Decrypts a file specified by the user."""

    # Get the file path from the user.
    file_path = input("Enter the path to the file to decrypt: ")

    # Get the encryption key from the user.
    key = input("Enter the encryption key: ")

    # Decrypt the file.
    decrypt_file(key, file_path)

    print("The file has been decrypted successfully.")

if __name__ == "__main__":
    main()


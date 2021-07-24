module PolicyOcr
    # Adding the 4x3 of the characters
    ACCT_LINES = 4
    ACCT_SIZE = 3

    # Adding IO to read the file
    def self.read_file(path, &account_numbers)
        IO.foreach(path).each_slice(ACCT_LINES).take_while do |lines|
            account_numbers.call(lines.take(ACCT_SIZE).map(&remove_newline))
        end
        account_numbers.call(nil)
    end

    # Adding method to remove newlines
    def self.remove_newline
        ->(str){str.delete("\n")}
    end

    # Grab accounts from file
    def self.get_accounts(path)
        accts = []
        read_file path do |lines|
            accts << Converter.read_char(lines) if lines
        end
        accts
    end
end

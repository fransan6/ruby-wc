### Usage

Ruby version of \*nix command `wc` with options `-c`, `-l`, `-m` and `-w` to analyse a file.

- `-c` prints the byte count
- `-l` prints the line count
- `-m` prints the character count
- `-w` prints the word count

Leaving out the option gives you `-l`, `-w` and `-c`.

**How to run**

`./rwc [option] [filename]`, for example: `./rwc -c myfile.txt`

It also supports reading from the standard input when the pipeline is used:

`cat myfile.txt | ./rwc -m`

### Instruction

To run this from your local environment, make sure Ruby 3.3.0 is installed. Clone the repository, run `bundle install` and you are good to go.

### Further features

- Allow for multiple options and multiple files in one entry
- Utilise Ruby's [Option Parser](https://ruby-doc.org/3.1.2/stdlibs/optparse/OptionParser.html#label-New+to+OptionParser-3F)

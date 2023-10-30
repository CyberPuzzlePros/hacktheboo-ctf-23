import argparse
import os


def generate_readme(directory):
    with open("README.md", "w") as f:
        f.write("| Directory | Link |\n")
        f.write("| --- | --- |\n")  # table header

        for item in os.listdir(directory):
            if os.path.isdir(os.path.join(directory, item)) and not item.startswith(
                "."
            ):  # if item is a directory and not hidden
                f.write("| {} | [Link](./{}) |\n".format(item, item))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Generate a readme.md file with an index of all directories."
    )
    parser.add_argument(
        "-d",
        "--directory",
        default=".",
        help="Directory to generate readme.md for. Defaults to current directory.",
    )
    args = parser.parse_args()
    generate_readme(args.directory)

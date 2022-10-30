import requests
from bs4 import BeautifulSoup
import pyperclip


def create_depth(max_: int = 1) -> str:
    """
    Returns a css selector string for multiple header tags.

    A string of header tags (h1[,h2,...,hn]) will be created up to
    `max_`.

    Args:
        max_: The amount of header tags to generate, counting up to the
            given amount in the generated string.

    Returns:
        A css selector string of multiple header tags ranging from
        h1-h6.
    """
    string = 'div>article.markdown-body>h1'
    # If only one h1 tag s needed, and not h2-h6.
    if max_ <= 1:
        return string

    for header_num in range(2, max_ + 1):
        # Create h<header_num> up to `max_`
        string += f',div>article.markdown-body>h{header_num}'

    return string


def get_depth() -> tuple[int, str]:
    """
    Get user-desired depth for header tags and return css selector.

    Accepts user input between 1 and 6, and uses `create_depth` function
    to create a css selector string of header tags up to the given depth
    number.

    Returns:
        A `tuple` with the first element being the user-given header tag
        depth, and the second being the css selector string to use with
        beautiful soup.
    """
    depth = int(input("Enter depth (up to 6): "))
    if depth > 6:
        depth = 6
    elif depth < 1:
        depth = 1

    return depth, create_depth(depth)


# Get link to generate table of contents for
URL = input("Enter url to generate TOC for: ")

# Get data and check it's good. Repo must be public.
response = requests.get(URL)
response.raise_for_status()

# Sort the data
soup = BeautifulSoup(response.text, 'lxml')

# Get depth of table of contents
header_depth, header_string = get_depth()

# Decide to remove first header or not (for titles at the beginning).
remove_header = input("Remove first header? [Y/n] ").casefold()

# Create list items
final_text = ["# Table of Contents\n\n"]
# header_string must be in an f-string or the code will break.
for item in soup.select(f"{header_string}"):
    try:
        # Multiply the indentation by the header number and add the item
        final_text.append(f"{'  ' * (int(item.name[1]) - 1)}- [{item.text}]"
                          f"({item.a['href']})\n")
    except TypeError:
        print()
        print(f"{item} has caused an error")
        print(item.name)
        print(item.text)
        print(header_string)
        print()
else:
    if remove_header == 'y' or not remove_header:
        final_text.pop(1)
    pyperclip.copy(''.join(final_text))
    print("Successfully copied to clipboard")

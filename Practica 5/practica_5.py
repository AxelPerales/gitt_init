#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup


def get_soup(url: str) -> BeautifulSoup:
    response = requests.get(url)
    return BeautifulSoup(response.content, "html.parser")


def wiki():
    soup = get_soup("https://es.wikipedia.org/wiki/Anexo:Clubes_de_fútbol_de_México")
    rows = soup.find_all("table")[1].find_all("tr")
    for row in rows:
        columns = row.find_all("td")
        t = [ele.text.strip() for ele in columns]
        print(f"{t}")




if __name__ == "__main__":
    wiki()

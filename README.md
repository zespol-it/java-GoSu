# ToDoApp (GoSu)

Prosty, rozbudowany projekt listy zadań napisany w języku GoSu.

## Funkcje
- Dodawanie zadań
- Oznaczanie zadań jako wykonane
- Wyświetlanie listy zadań
- Zapis i odczyt zadań do/z pliku tekstowego (`tasks.txt`)

## Pliki
- `ToDoApp.gsp` – główny plik aplikacji
- `tasks.txt` – plik z zapisanymi zadaniami (tworzony automatycznie)

## Uruchomienie
1. Upewnij się, że masz środowisko do uruchamiania GoSu (np. Guidewire lub inny interpreter GoSu).
2. Umieść plik `ToDoApp.gsp` w katalogu projektu.
3. Uruchom aplikację:
   
   ```
   gosu ToDoApp.gsp
   ```
   lub zgodnie z wymaganiami Twojego środowiska.

## Działanie
- Przy pierwszym uruchomieniu, jeśli nie ma pliku `tasks.txt`, zostaną dodane przykładowe zadania.
- Po każdej zmianie lista zadań jest zapisywana do pliku.
- Przy kolejnym uruchomieniu zadania zostaną wczytane z pliku.

## Rozbudowa
Projekt można łatwo rozbudować o:
- Usuwanie i edycję zadań
- Interaktywne menu
- Priorytety, terminy, itp.

---
Autor: [Twoje Imię] 
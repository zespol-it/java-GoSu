# ToDoApp (GoSu)

Prosty, rozbudowany projekt listy zadań napisany w języku GoSu.

## Funkcje
- Interaktywne menu w konsoli
- Dodawanie zadań
- Usuwanie zadań
- Oznaczanie zadań jako wykonane
- Wyświetlanie listy zadań
- Zapis i odczyt zadań do/z pliku tekstowego (`tasks.txt`)

## Pliki
- `Main.gsp` – główny plik aplikacji
- `tasks.txt` – plik z zapisanymi zadaniami (tworzony automatycznie)

## Uruchomienie
1. Upewnij się, że masz środowisko do uruchamiania GoSu (np. Guidewire lub inny interpreter GoSu).
2. Umieść plik `Main.gsp` w katalogu projektu.
3. Uruchom aplikację:
   
   ```
   gosu Main.gsp
   ```
   lub zgodnie z wymaganiami Twojego środowiska.

## Działanie
Po uruchomieniu pojawi się interaktywne menu:

```
--- MENU ---
1. Wyświetl zadania
2. Dodaj zadanie
3. Oznacz zadanie jako zrobione
4. Usuń zadanie
5. Zakończ
Wybierz opcję: 
```

- Przy pierwszym uruchomieniu, jeśli nie ma pliku `tasks.txt`, zostaną dodane przykładowe zadania.
- Po każdej zmianie lista zadań jest zapisywana do pliku.
- Przy kolejnym uruchomieniu zadania zostaną wczytane z pliku.

## Rozbudowa
Projekt można łatwo rozbudować o:
- Edycję zadań
- Priorytety, terminy, itp.

---
Autor: [Twoje Imię] 
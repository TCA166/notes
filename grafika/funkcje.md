# Funkcje

Ktoś pomyślał, że wymaganie od nas wykucia wszystkich wywołań OpenGL, GLM i GLSL ma dużo sensu więc ten plik istnieje.

## Przegląd funkcji w OpenGL

### Definicje

- `VAO` to tablica punktów
- `VBO` to bufor zawierający dane dot. `VAO` (kolor, pozycja tekstury itp). Formalnie wszystkie bufory przypisane pod `GL_ARRAY_BUFFER`
- `EBO` to bufor zawierający kolejność ładowania `VAO`. Zawiera indeksy punktów z `VAO` i OpenGL czytając po kolei indeksy wie w jakiej kolejności zczytywać punkty z `VAO`. Formalnie wszystkie bufory przypisane pod `GL_ELEMENT_ARRAY_BUFFER`.

### Generowanie VAO

`glGenVertexArrays(GLsizei n, GLuint *arrays)`

Tworzy nowe `n` tablic.

### Wiązanie VAO

`glBindVertexArray(VAO)`

Przypisuje imie do tabeli. Jest to kluczowy etap po stworzeniu nowego VAO.

### Tworzenie buforu

`glGenBuffers(GLsizei n, GLuint *buffers)`

Tworzy `n` nowych buforów.
**Niezależnie** od typu bufora to samo wywołanie jest wykorzystywane.

### Wiązanie buforu

`glBindBuffer(GLenum target, GLuint buffer)`  

Przypisuje bufor `buffer` do `target`.

`glBindBuffer(GL_ARRAY_BUFFER, VBO);`

Przypisuje buffer o nazwie VBO jako dane dot. VAO.
W przyszłości OpenGL będzie wiedział że VBO zawiera dane dot. punktów.

`glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);`

Przypisuje buffer o nazwie EBO jako dane o elementach.
Czyli w przyszłości OpenGL wie że jak mówimy o EBO to mamy na myśli dane elementarne.

### Alokacja i ładowanie danych do buforu

`glBufferData(GLenum target, GLsizeiptr size, const void * data, GLenum usage)`

Ładuje `data` do `target` w danym celu( `usage` ).
Jeśli `data` jest `NULL` to alokuje miejsce bez żadnego ładowania.

`glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(unsigned int) * indices.size(), indices.data(), GL_STATIC_DRAW)`

### Dodawanie danych do buforu

`glBufferSubData(GLenum target, GLintptr offset, GLsizeiptr size, const void * data)`

Dodaje `data` do `target`. Alternatywna metoda ładowania danych.

### Aktywacja atrybutów

`glEnableVertexAttribArray(GLuint index)`

Włącza VAO o danej nazwie.

### Opisanie jak GPU ma odczytywać atrybuty z VBO

`glVertexAttribPointer( GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void * offset)`

Wskazuje jakie dane bufory w shaderze o danym indeksie z `GL_ARRAY_BUFFER` mają mieć. Czyli w shaderze pod `index` dane o rozmiarze `size` typu `type` co `stride` bajtów będą dostępne.

Argumenty:

- `index` - indeksy odpowiadające atrybutowi,
- `size` - liczba elementów w atrybucie wierzchołka, może wynosić 1, 2, 3 lub 4,
- `type` - typ danych jako enum, w naszym przypadku GL_FLOAT,
- `normalized` - określa czy wartość ma być znormalizowana, u nas będzie to GL_FALSE,
- `stride` - określa dystans pomiędzy atrybutami w kolejnych wierzchołkach
- `offset` - wskaźnik na pierwszy atrybut w tablicy, licząc względem początku tablicy i typu (void *)

### Zwalnianie VAO

`glDeleteVertexArrays(GLsizei n, const GLuint *arrays)`

Zwalnia `n` VAO pod adresem.

### Zwalnianie buferów

`glDeleteBuffers(GLsizei n, const GLuint * buffers)`

Zwalnia `n` buforów pod adresem.

## Przegląd funkcji GLM

```cpp
#include <glm/ext/matrix_transform.hpp>
#include <glm/ext/matrix_clip_space.hpp>
```

lub

```cpp
#include <glm/ext.hpp>
```

### Macierz widoku

`glm::lookAt(glm::vec3 eye, glm::vec3 center, glm::vec3 up)`

Tworzy macierz widoku kamery, gdzie `eye` to pozycja oka, `center` to kierunek patrzenia, a `up` to globalny wektor kierunku patrzenia.

Dla danego wektora `position` i znormalizowanego wektora kierunku `front` należy wywołać w następujący sposób.
`glm::lookAt(position, position + front, glm::vec3(0.0f, 1.0f, 0.0f))`

### Macierz perspektywiczna

`glm::perspective(float fovy, float aspect, float near, float far)`

Tworzy macierz perspektywiczną dla danego `fovy`, stosunku między szerokością a wysokością, i dwóch wartości z oznaczających przestrenie bliską i daleką.

### Obliczanie front

```cpp
void camera::update_front(float yaw, float pitch) {
    front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
    front.y = sin(glm::radians(pitch));
    front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
    front = glm::normalize(front);
}
```

## Pytania

### Wyjaśnij dlaczego teksturę (w klasycznym przypadku obraz rastrowy) przekształcamy w OpenGL do przestrzeni współrzędnych ciągłych. Ile wymiarów w ogólności ma ta przestrzeń? Jakie symbole używamy w OpenGL do opisu jej osi

Przekształcamy teksturę do przestrzeni współrzędnych ciągłych, aby umożliwić precyzyjne mapowanie tekstury na powierzchnię obiektu. Dzięki temu możemy łatwo określić, które punkty tekstury odpowiadają poszczególnym punktom powierzchni obiektu. Przestrzeń ta ma zazwyczaj 2 wymiary dla tekstur 2D, ale może mieć również 3 wymiary dla tekstur 3D. Osi w przestrzeni tekstury opisujemy symbolami s, t (dla tekstur 2D) oraz r (dla tekstur 3D)

### W jakim obszarze przestrzeni tekstury znajduje się jej pojedyncza kopia? Czy istnieje tylko jedna taka kopia?

Pojedyncza kopia tekstury znajduje się w przestrzeni współrzędnych tekstury w zakresie od 0 do 1 w obu wymiarach (s, t). W zależności od ustawień powtarzania tekstur (wrapping mode) w OpenGL, może istnieć wiele kopii tekstury.

### Oblicz w przestrzeni tekstury położenie teksela (125,400) obrazu 2D o wymiarach 1000x800 pikseli

s = 125 / 1000 = 0.125
t = 400 / 800 = 0.5

### Dlaczego często widzimy na obiekcie przynajmniej lekko zdeformowany obraz tekstury?

Obraz tekstury może być zdeformowany na obiekcie z powodu różnic w kształcie i proporcjach między teksturą a powierzchnią obiektu

### Wyjaśnij w miarę precyzyjnie jak poprawnie należy odwzorować teksturę z zachowaniem perspektywy

Aby poprawnie odwzorować teksturę z zachowaniem perspektywy, należy używać współrzędnych tekstury w przestrzeni projektowanej (projected texture coordinates) oraz odpowiednich równań projekcji. Współrzędne tekstury muszą być interpolowane w sposób perspektywiczny, co często wymaga użycia shaderów

### Wyjaśnij co to jest mipmapping i w jakiej scenie 3D ma istotne zastosowanie

Mipmapping to technika używana do poprawy wydajności i jakości teksturowania. Polega na tworzeniu serii mniejszych wersji tekstury (mipmaps), które są używane w zależności od odległości obiektu od kamery. Mipmapping jest szczególnie przydatne w scenach 3D z obiektami oddalonymi od kamery, gdzie użycie mniejszych wersji tekstury redukuje aliasing i poprawia wydajność renderowania

### Wyjaśnij jaką rolę w teksturowaniu pojedynczego trójkąta pełni shader wierzchołków, a jaką shader fragmentów

**Shader wierzchołków (vertex shader)**: Przekształca współrzędne wierzchołków i przypisuje współrzędne tekstury do wierzchołków. Przygotowuje dane do dalszego przetwarzania w shaderze fragmentów.  
**Shader fragmentów (fragment shader)**: Odpowiada za interpolację współrzędnych tekstury dla każdego fragmentu (piksela) i pobieranie odpowiednich wartości z tekstury. Nakłada teksturę na fragmenty powierzchni obiektu, uwzględniając oświetlenie i inne efekty wizualne

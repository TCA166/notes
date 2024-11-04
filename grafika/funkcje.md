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

# Opracowanie Pytań

## 2

### Czy rozkład empiryczny może nie mieć parametrów?

Rozkład empiryczny jest oparty na obserwacjach, więc nie ma parametrów.

### Jakie są trzy podstawowe metody opisu rozkładu empirycznego?

Histogram, wykres pudełkowy (boxplot), tabela częstości.

### Czy moment zwykły rzędu 2 może przyjmować wartości ujemne?

Moment zwykły rzędu 2 (wariancja) jest zawsze nieujemny, ponieważ jest to
średnia kwadratów odchyleń od średniej.

### Czy mediana danego zbioru musi należeć do tego zbioru?

Mediana danego zbioru nie musi należeć do tego zbioru, ale jest wartością
środkową, która dzieli zbiór na dwie równe części.

### Co to jest rozkład empiryczny?

Rozkład empiryczny to rozkład prawdopodobieństwa oparty na obserwacjach.

### Co to jest model statystyczny?

Opis zależności między zmiennymi losowymi, który może być użyty do analizy danych.

### Co to jest statystyka?

Funkcja obliczana na podstawie próby, która służy do estymacji parametrów populacji.

## 3

### Jakim znakiem oznaczamy estymator parametru?

Tak zwany hat (^)

### Jakie są dwie najbardziej popularne metody wyznaczania estymatorów punktowych?

Najczęściej stosowane metody to metoda największej wiarygodności (MLE) i metoda momentów (MM).

### Czy każdy rozkład prawdopodobieństwa posiada momenty dowolnego rzędu?

Nie, nie każdy rozkład ma momenty dowolnego rzędu. Na przykład, rozkład Cauchy'ego nie ma momentów.

### Czy w EMM możemy użyć momentów centralnych?

Tak, w EMM możemy użyć momentów centralnych, ale najczęściej stosuje się momenty zwykłe.

### Czy ENW jest zawsze wyznaczony jednoznacznie?

Nie, ENW (estymator największej wiarygodności) nie zawsze jest jednoznaczny, ponieważ może istnieć wiele wartości, które maksymalizują funkcję wiarygodności.

### Na czym polega metoda momentów wyznaczanie estymatora punktowego parametru rozkładu prawdopodobieństwa?

Metoda momentów polega na porównaniu momentów teoretycznych rozkładu z momentami empirycznymi próby i rozwiązaniu układu równań w celu znalezienia estymatora.

### Kiedy estymator nazywamy nieobciążonym?

Estymator nazywamy nieobciążonym, gdy jego wartość oczekiwana jest równa prawdziwej wartości parametru, który estymuje.

### Jak wygląda estymator nieobciążony parametru rozkładu wykładniczego?

Estymator nieobciążony parametru λ rozkładu wykładniczego to 1/średnia próby, czyli 1/ȳ, gdzie ȳ to średnia arytmetyczna próby.

## 4

### Czy zmienna losowa 𝜒 2 może przyjmować wartości ujemne?

Nie, zmienna losowa 𝜒² (chi-kwadrat) nie może przyjmować wartości ujemnych, ponieważ jest to suma kwadratów zmiennych losowych o rozkładzie normalnym.

### Czy poziom ufności może przyjmować wartości blisko zeru?

Nie, poziom ufności nie może przyjmować wartości bliskich zeru, ponieważ oznacza to, że przedział ufności byłby bardzo szeroki i mało użyteczny. Typowe wartości poziomu ufności to 90%, 95% lub 99%.

### Jakie są typowe wartości poziomu ufności?

Typowe wartości poziomu ufności to 90%, 95% i 99%.

### Czy rozkład t-studenta może przyjmować wartości ujemne?

Tak, rozkład t-Studenta może przyjmować wartości ujemne, ponieważ jest symetryczny względem zera.

### Kwantyle jakiego rozkładu pojawiają się przy obliczaniu przedziału ufności dla parametru 𝜆 rozkładu wykładniczego?

Kwantyle rozkładu 𝜒² (chi-kwadrat) pojawiają się przy obliczaniu przedziału ufności dla parametru 𝜆 rozkładu wykładniczego.

### Jak obliczyć dystrybuantę empiryczną?

Dystrybuantę empiryczną oblicza się jako stosunek liczby obserwacji mniejszych lub równych danej wartości do całkowitej liczby obserwacji w próbie.

### Jak losujemy próbę bootstrapową?

Próbę bootstrapową losujemy z oryginalnej próby z powtórzeniami, co oznacza, że niektóre obserwacje mogą pojawić się więcej niż raz, a inne mogą być pominięte.

### Jak zazwyczaj dobieramy stałe 𝑎 i 𝑏 podczas wyznaczania przedziału ufności?

Stałe 𝑎 i 𝑏 dobieramy na podstawie poziomu ufności i rozkładu, z którego pochodzi estymowany parametr. Dla przedziału ufności dla średniej z rozkładu normalnego używamy wartości z rozkładu t-Studenta lub normalnego.

## 6

### Jakiej statystyki testowej używamy dla modelu jednej próby prostej z populacji o rozkładzie normalnym?

Statystyki t-Studenta.

### Jak wygląda hipoteza zerowa dla powyższego modelu?

Hipoteza zerowa: średnia populacji jest równa określonej wartości (H₀: μ = μ₀).

### Czy w modelach z dwoma próbami, próby te muszą mieć jednakową liczność?

Nie, liczności prób mogą być różne.

### Co to jest obszar krytyczny?

Zbiór wartości statystyki testowej, dla których odrzucamy hipotezę zerową.

### Co to jest błąd I rodzaju?

Błąd polegający na odrzuceniu prawdziwej hipotezy zerowej.

### Co to jest p-wartość?

Prawdopodobieństwo uzyskania wyniku co najmniej tak ekstremalnego jak zaobserwowany, przy założeniu prawdziwości hipotezy zerowej.

### Jak wyglądają hipotezy alternatywne dla modelu dwóch prób niezależnych (dwóch średnich)?

H₁: średnie są różne, większe lub mniejsze (μ₁ ≠ μ₂, μ₁ > μ₂, μ₁ < μ₂).

### Czym różni się model z jednorodnymi wariancjami od modelu z niejednorodnymi wariancjami?

W modelu z jednorodnymi wariancjami zakładamy równość wariancji w obu próbach; w niejednorodnym – wariancje mogą być różne.

## 8-9

### Czy regresja liniowa może być wykonana w dowolnie wymiarowej przestrzeni euklidesowej?

Tak, regresję liniową można wykonać w dowolnej liczbie wymiarów.

### Czym jest wykres regresji liniowej w przestrzeni dwuwymiarowej?

To prosta przedstawiająca zależność między dwiema zmiennymi.

### Czym jest wykres regresji liniowej w przestrzeni wielowymiarowej?

To hiperpłaszczyzna dopasowana do danych w przestrzeni o więcej niż dwóch wymiarach.

### Jakiego typu systemem uczącym jest regresja?

Regresja jest przykładem uczenia nadzorowanego.

### W jakiego typu regresji przyjmuje ona tylko dwie wartości?

W regresji logistycznej (binarnej).

### Podaj przykład regresji nieliniowej, której nie da się linearyzować

Regresja wykładnicza lub logistyczna.

### Jakiego błędu używamy najczęściej przy dopasowaniu regresji do danych empirycznych?

Najczęściej używa się błędu średniokwadratowego (MSE).

### Co to jest krzywa logistyczna?

To funkcja S-kształtna opisująca prawdopodobieństwo zajścia zdarzenia w regresji logistycznej.

## 10

### Czy SVM jest obecnie popularną metodą?

Nie, jest trochę badziewna.

### Czy w zbiorze (próbie) uczącym znane są etykiety elementów?

Tak, w zbiorze uczącym etykiety elementów są znane, co pozwala na uczenie się klasyfikatora.

### Co to jest uczenie się pod nadzorem?

Uczenie się pod nadzorem to proces, w którym model jest trenowany na danych wejściowych z przypisanymi etykietami, aby nauczyć się przewidywać etykiety dla nowych danych.

### Co to jest klasyfikator?

Model statystyczny lub algorytm, który przypisuje etykiety do danych wejściowych na podstawie wzorców w danych uczących.

### Co to jest rzeczywisty poziom błędu?

Rzeczywisty poziom błędu to miara dokładności klasyfikatora, określająca, jak często model popełnia błędy w przewidywaniu etykiet dla nowych danych.

## 11

### Czy analiza skupień jest metodą uczącą pod nadzorem?

Nie, analiza skupień jest metodą uczenia bez nadzoru.

### Czy w metodzie hierarchicznej potrzebujemy wyliczać odległości między elementami zbioru danych?

Tak, w metodzie hierarchicznej wylicza się odległości między elementami lub skupieniami.

### Podać przykład (nazwę) miary niepodobieństwa między dwoma skupieniami

Odległość euklidesowa, odległość centroidów, odległość pojedynczego ogniwa (single linkage).

### Czy metoda K-średnich jest zawsze zbieżna?

Tak, metoda K-średnich jest zawsze zbieżna, ale może zbiec do minimum lokalnego.

### Czy metoda K-średnich jest zawsze zbieżna do optimum?

Nie, metoda K-średnich nie gwarantuje zbieżności do optimum globalnego, tylko do minimum lokalnego.

### Co to jest Analiza skupień?

To metoda grupowania obiektów w zbiory (skupienia) tak, aby obiekty w tej samej grupie były do siebie podobne.

### Co to jest zmienność międzygrupowa?

To miara różnic między skupieniami, określająca, jak bardzo skupienia różnią się od siebie.

### Jak ustala się początkowy podział na skupienia w metodzie K-średnich?

Początkowe centroidy wybiera się losowo lub według określonej heurystyki (np. K-means++).

### Jakie są wady metod hierarchicznych?

Wysoka złożoność obliczeniowa, brak możliwości zmiany podziału po połączeniu/skupieniu, wrażliwość na szum i wartości odstające.

### Jakie są wady metody K-średnich?

Wymaga podania liczby skupień, wrażliwość na wartości odstające, może zbiegać do minimum lokalnego, zakłada kulisty kształt skupień.

## 12

### Co to jest LDA?

LDA (Linear Discriminant Analysis) to metoda klasyfikacji liniowej, która znajduje linię, płaszczyznę lub hiperpłaszczyznę maksymalnie rozdzielającą klasy, zakładając równość macierzy kowariancji dla wszystkich klas.

### W ilu maksymalnie wymiarach możemy konstruować klasyfikator LDA?

W maksymalnie \( k-1 \) wymiarach, gdzie \( k \) to liczba klas.

### Czy można skonstruować taki zbiór danych, że klasyfikator LDA da błąd ponownego podstawienia równy zero?

Tak, jeśli klasy są liniowo separowalne, LDA może osiągnąć błąd ponownego podstawienia równy zero.

### Jak „naprawić” słaby klasyfikator binarny (dwuklasowy)?

Można zastosować boosting, bagging lub inne metody ensemble, aby poprawić skuteczność słabego klasyfikatora.

### Jakie założenie, dotyczące parametrów rozkładu, różni LDA od QDA?

LDA zakłada równość macierzy kowariancji dla wszystkich klas, natomiast QDA pozwala na różne macierze kowariancji dla każdej klasy.

### Jak wygląda krzywa dyskryminacyjna dla dwuklasowego LDA?

Jest to linia prosta (hiperpłaszczyzna w wyższych wymiarach) oddzielająca dwie klasy.

### Jak wygląda krzywa dyskryminacyjna dla wieloklasowego LDA?

To zbiór hiperpłaszczyzn liniowych rozdzielających poszczególne klasy parami.

### Jak wygląda krzywa dyskryminacyjna dla dwuklasowego QDA na płaszczyźnie?

Jest to krzywa kwadratowa (np. elipsa, parabola lub hiperbola) oddzielająca dwie klasy.

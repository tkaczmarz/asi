<h1>Tomasz Kaczmarz - Architektura Serwisów Internetowych</h1>

<table>
  <tr>
    <th>Wersja Ruby</th>
    <th>Wersja Rails</th>
    <th>Baza danych</th>
    <th>Framework</th>
    <th>Dodatkowe gemy</th>
  </tr>
  <tr>
    <td>2.4.0</td>
    <td>5.0.2</td>
    <td>Lokalnie SQLite, Heroku - PostgreSQL</td>
    <td>Bootstrap</td>
    <td>bcrypt, bootstrap-sass, geocoder, gmaps4rails</td>
  </tr>
</table>

<h2>Salon samochodowy</h2>
<p>
Aplikacja pozwala na przeglądanie samochodów w bazie danych. Zarejestrowany użytkownik może także dodawać samochody.
</p>

[Wdrożona aplikacja](https://shielded-tundra-94334.herokuapp.com/)

<h2>Opis dodatkowych gemów</h2>
<ul>
<li>
  <strong>bcrypt</strong>: Szyfrowanie haseł użytkowników <br/>
  Użycie:<br/>
Stworzyłem model użytkownika z polem o nazwie 'password_digest'. Po wygenerowaniu dopisałem w modelu linijkę <code>has_secure_password</code>. Do modelu zostały automatycznie dodane kolumny 'password' oraz 'password_confirmation', które wykorzystuję w trakcie tworzenia użytkownika. W kontrolerze podałem dopuszczalne parametry użytkownika przesłanego do utworzenia: <br/><code>def user_params <br/>
      params.require(:user).permit(:email, :password, :password_confirmation) <br/>
      end</code><br/>
      Po utworzeniu użytkownika password_digest automatycznie wypełnia się zaszyfrowanym hasłem.
</li>
<li>
  <strong>bootstrap-sass</strong>: Wygodna edycja widoków w formacie .scss
</li>
<li>
  <strong>geocoder, gmaps4rails</strong>: Mapy Google z lokalizacją zapisaną w bazie danych. Każdy znacznik na mapie zawiera link do danych firmy.
</li>
</ul>

<h3>Kolejne gemy, które próbowałem wykorzystać</h3>
<ul>
  <li>mini_magick</li>
  <li>fog-google</li>
  <li>google-api-client</li>
  <li>mime-types</li>
  <li>carrierwave</li>
</ul>

Miały one służyć do pobierania zdjęć samochodów z dysku klienta, edycji tych zdjęć oraz wrzucania ich na Google Cloud Platform Storage. Następnie stamtąd miały być pobierane przy pomocy linku zapisanego w bazie danych.<br>
Próby implementacji tych rozwiązań znajdują się w gałęzi '<i>upload</i>'.

Tworząc ten projekt korzystałem z [samouczka](https://www.railstutorial.org/book/beginning/).



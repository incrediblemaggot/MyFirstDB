1. Combien y a t il d humains ?
SELECT COUNT(id) FROM humans;

2. Quel est le nom et le prénom du dernier humain arrivé ?
SELECT last_name, first_name FROM humans ORDER BY date_of_arrival DESC LIMIT 0,1;

3. Lister les créatures dont le nom commence par un B.
SELECT name FROM creatures WHERE name LIKE "B%";

4. Combien d humains sont torturés par Belphégor ?
SELECT COUNT(h.id) FROM humans AS h JOIN hell_staff AS s ON s.id=h.id WHERE s.name="Belphegor";

5. Quel est l âge moyen des humains ?
SELECT AVG(age_at_death) FROM humans;

6. Quelle religion a le plus de fidèles ?
SELECT name FROM religions WHERE id=(SELECT MAX(number_of_devoted) FROM religions);

7. Combien y a t il de civilisations différentes ?
SELECT COUNT(DISTINCT name) FROM civilizations;

8. Quelle créature est la plus représentée dans Erèbe ?
SELECT c.name FROM creatures c JOIN hell_places h ON h.id=c.id WHERE 1 
AND h.name="Erebe" 
AND h.id=(SELECT MAX(creatures_population) FROM h)

9. Lister les noms de tortures par type de souffrance.
SELECT name FROM tortures GROUP BY suffering_type;

10. Quelle civilisation est contenue par le plus de pays ?
SELECT c.name, COUNT(DISTINCT p.country_codes) AS NbCountry FROM civilizations AS c, country_codes AS p 
ORDER BY NbCountry DESC LIMIT 1;
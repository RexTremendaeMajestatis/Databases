CREATE (Kizhnerov: Human { name: 'Pavel', surname: 'Kizhnerov' }), (Wang: Human { name: 'Wang', surname: 'Tianji' }), (Smirnov: Human { name: 'Yuri', surname: 'Smirnov' }), (Dyatlov: Human { name: 'Kirill', surname: 'Dyatlov' }), (Michael: Human { name: 'Michael', surname: 'Sedlyarski' }), (Orachev: Human { name: 'Egor', surname: 'Orachev' }),(SPBSU: University { name: 'SPBSU' }),
(MEC: University { name: 'Military Education Center of SPBSU' }),
(Kizhnerov) -[:STUDIES]-> (SPBSU),
(Wang) -[:STUDIES]-> (SPBSU),
(Smirnov) -[:STUDIES]-> (SPBSU),
(Dyatlov) -[:STUDIES]-> (SPBSU),
(Michael) -[:STUDIES]-> (SPBSU),
(Orachev) -[:STUDIES]-> (SPBSU),
(Kizhnerov) -[:STUDIES]-> (MEC),
(Smirnov) -[:STUDIES]-> (MEC)

MATCH (p)-[:STUDIES]->() RETURN p
MATCH (p)-[:STUDIES]->(SPBSU) RETURN p
MATCH (p)-[:STUDIES]->(SPBSU), (p)-[:STUDIES]->(MEC) RETURN p
MATCH (n:Human) RETURN n
MATCH (n:Human) RETURN count(n)

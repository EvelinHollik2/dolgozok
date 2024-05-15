document.addEventListener('DOMContentLoaded', function () {
    const nevInput = document.getElementById('nev');
    const reszlegInput = document.getElementById('reszleg');
    const belepesevInput = document.getElementById('belepesev');
    const berInput = document.getElementById('ber');
    const nemeInput = document.getElementById('neme');
    const hozzaadGomb = document.getElementById('hozzaad');
    const megjelenitGomb = document.getElementById('megjelenit');
    const dolgozokTabla = document.getElementById('dolgozokTabla');
    const apiUrl = "http://localhost/api2/index.php?dolgozok";

    megjelenitGomb.addEventListener('click', dolgozokTablaFrissit);
    function dolgozoSor(dolgozo) {
        let tr = `<tr>
            <td>${dolgozo.nev}</td>
            <td>${dolgozo.reszleg}</td>
            <td>${dolgozo.neme}</td>
            <td>${dolgozo.belepesev}</td>
            <td>${dolgozo.ber}</td></tr>`;
        return tr;
    }
    async function dolgozokTablaFrissit() {
        let response = await fetch(apiUrl);
        let dolgozok = await response.json();
        let tableHTML = `
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Név</th>
                    <th scope="col">Részleg</th>
                    <th scope="col">Neme</th>
                    <th scope="col">Belépés éve</th>
                    <th scope="col">Bér</th>
                </tr>
            </thead>
            <tbody>`;
        dolgozok.forEach(dolgozo => {
            tableHTML += dolgozoSor(dolgozo);
        });
        tableHTML += `</tbody></table>`;
        dolgozokTabla.innerHTML = tableHTML;
    }
})